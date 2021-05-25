import 'package:flutter/material.dart';
import 'user.dart';

class login extends StatelessWidget {  
  final User user;
  login(this.user);

  final _email = TextEditingController();
  final _pass = TextEditingController();

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
              // Text(this.user.email),
              // Text(this.user.username),
              // Text(this.user.password),          
              Image.network("https://image.flaticon.com/icons/png/512/3075/3075977.png", width: 100),
              Text("Hello"),
              Text("Sign into your Account"),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                hintText: "Input your email", labelText: "Email ID*"
              )),
              TextField(
                controller: _pass,
                decoration: InputDecoration(
                hintText: "Input your password", labelText: "Password"
              ), obscureText: true,),
              Text("Forgot your Password?"),
              ElevatedButton(
                onPressed: (){
                  if(_email.text == this.user.email && _pass.text == this.user.password)
                  {
                    SnackBar snackbar = SnackBar(content: Text("Login Success"),);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    Navigator.pushNamed(context, '/home');
                  }
                  else
                  {
                    SnackBar snackbar = SnackBar(content: Text("Wrong email/password. Try Again"),);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }
                }, 
                child: Text("Login")
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

  // void dispose()
  // {
  //   _pass.dispose();
  //   _email.dispose();
  //   super.dispose();
  // }
}