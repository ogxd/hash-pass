# Hash Pass

As most persons using the internet today, I have accumulated dozens, if not hundrers of account. Even if I've always used complex passwords, I've been hacked multiple times for various reasons. Since, I use differents passwords as much as I can, but remembering my passwords have now became impossible, and I have to do a password recovery everytime I visit a website I use to go once in a while.

The "Sign-in with Google/Facebook/..." is a big help, but it can't be used everywhere, and it won't help if I also forgot my Facebook password.

Passwords managers such as LastPass, Keeper or Dashlane are for sure really handy but I don't want to pay for a service that actually exposes ALL of my passwords in clear ar a remote location...

So I've made **Hash Pass**, which an hash-based password generator.
The principle is simple : 'Salt Key + Master Key + Service = Password' 
The 'Salt Key' is in the source code and is obfuscated
The 'Service' is the name of the service that requires a password (eg: "Github")
The 'Master Key' is the only password that needs to be remembered and typed in the App.

## Hashing VS Humain Brain

![VS Brain](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/nothing_small.png)
![VS Brain](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/withhash_small.png)

## Hashing VS Password Manager

![VS Password Manager](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/why_hashing_small.png)
+ No account required
+ It's free
+ It's completely local
+ It's simple and code open
+ Passwords are unique

- You can use existing passwords

## Screenshots

![Android Home Icon](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/android_home.jpg)
![Android App](https://raw.githubusercontent.com/ogxd/hash-pass/master/demo/android_app.jpg)
