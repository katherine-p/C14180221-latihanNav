import 'package:flutter/material.dart';
import 'user.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  // User _userRegis = User(username: _username.text, email: _email.toString(), password: _pass.toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""), backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black,)),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: Column(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[             
              Image.network("https://image.flaticon.com/icons/png/512/3075/3075977.png", width: 100),
              Text("Create Account"),
              TextField(
                controller: _username,
                decoration: InputDecoration(
                hintText: "Your Username", labelText: "User Name*"
              )),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                hintText: "Input Email", labelText: "Email ID*"
              )),
              TextField(
                controller: _pass,
                decoration: InputDecoration(
                hintText: "Input password", labelText: "Password*"
              ), obscureText: true,),
              Text("Forgot your Password?"),
              ElevatedButton(
                onPressed: (){
                  User myuser = User(username: _username.text, email: _email.text, password: _pass.text);
                  Navigator.pushNamed(context, '/login', arguments: myuser);
                  SnackBar snackbar = SnackBar(content: Text("Register Success"),);
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, 
                child: Text("Register Now")
              ),
              Text("Or Login using Social Media"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network("https://image.flaticon.com/icons/png/512/2111/2111393.png", width: 20),
                  Image.network("https://image.flaticon.com/icons/png/512/733/733579.png", width: 20)
                ],)
            ],
          ),
        ),
      ),
    );
  }
}