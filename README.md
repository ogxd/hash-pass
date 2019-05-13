# Hash Pass

As most persons using the internet today, I have accumulated dozens, if not hundrers of account. Even if I've always used complex passwords, I've been hacked multiple times for various reasons. For that reason, I use differents passwords as much as I can, but remembering my passwords have now became impossible, and I have to do a password recovery everytime I visit a website I use to go once in a while. The "Sign-in with Google/Facebook/..." is a big help, but it can't be used everywhere, and it won't help if I also forgot my Facebook password.
Passwords managers such as LastPass, Keeper or Dashlane are for sure really handy but I don't want to pay for a service that actually exposes ALL of my passwords in clear ar a remote location...
So I've made *Hash Pass*, which an hash-based password generator.
The principle is simple : Salt Key + Master Key + Service = Password.
The Salt Key is in the source code and is obfuscated, the Service is the name of the service that requires a password (eg: "Github") and the Master Key is the only passwords that needs to be remembered and typed in the App.

## Why should you use Hash Pass ?

![All in the Braim](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/nothing_small.png)
![With Hash Pass](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/withhash_small.png)

## Why wouldn't I use a password manager ?

- todo
![Why Hashing](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/why_hashing_small.png)

## Screenshots

![Android Home Icon](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/android_home.jpg)
![Android App](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/android_app.jpg)
