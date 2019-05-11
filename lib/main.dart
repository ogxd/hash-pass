import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hash Pass',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(title: 'Hash Pass'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const String VALID_CHARS = "ERTYUPSDFGHJKXCVBNertyupsdfghjkxcvbn123456789";
  static const String SPECIAL_CHARS = "/*-";

  String _key = "";
  String _service = "";
  String _password = "";
  int _seed;

  int incr() {
    return _seed = _seed * 16807 % 2147483647;
  }

  int random(int min, int max) {
    return map(1.0 * incr(), 0, 2147483647, min.toDouble(), max.toDouble()).round();
  }

  double map(double s, double sMin, double sMax, double rMin, double rMax) {
      return rMin + (s - sMin) * (rMax - rMin) / (sMax - sMin);
  }

  void calculateHash() {
    setState(() {
  
      if (_key.length < 8) {
        _password = "Key too short !";
        return;
      }

      if (_service.length == 0) {
        _password = "Service required !";
        return;
      }

      _seed = -7;
      String fullStr = _key + _service;

      for (int i = 0; i < fullStr.length; i++) {
        int c = fullStr.codeUnitAt(i);
        _seed += i * ((_seed % 2 == 0) ? 1 : -1) + c * c;
      }

      incr();

      _password = SPECIAL_CHARS[random(0, SPECIAL_CHARS.length - 1)];
      for (int i = 1; i <= 13; i++) {
        _password = _password + VALID_CHARS[random(0, VALID_CHARS.length - 1)];
      }
    });
  }

  void copy() {
    Clipboard.setData(new ClipboardData(text: _password));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Master Key',
                ),
                onChanged: (text) {
                  _key = text;
                  calculateHash();
                },
                style: Theme.of(context).textTheme.title,
              ),

              SizedBox(height: 16),
              
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Service',
                ),
                onChanged: (text) {
                  _service = text;
                  calculateHash();
                },
                style: Theme.of(context).textTheme.title,
              ),

              SizedBox (height: 16),

              Text(
                '$_password',
                style: Theme.of(context).textTheme.display1,
              ),

              SizedBox (height: 32),

              RaisedButton(
                onPressed: copy,
                padding: const EdgeInsets.only(bottom: 15, top: 15, left: 30, right: 30),
                child: new Text('Copy', style: Theme.of(context).textTheme.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}