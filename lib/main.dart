import 'package:flutter/material.dart';
import 'login.dart';
import 'regis.dart';
import 'user.dart';
import 'home.dart';
import 'deposito.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (context) => firstpage(),
        '/login' : (context) => login(ModalRoute.of(context).settings.arguments as User),
        '/register' : (context) => register(),
        '/home' : (context) => home(),
        '/deposito' : (context) => deposito(),
      },
      title: 'Restaurant',      
    );
  }
}

class firstpage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              Image.network("https://image.flaticon.com/icons/png/512/857/857718.png", width: 200),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/login');
                    }, 
                    child: Text("Login"),
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
                    // padding: EdgeInsets.all(10.0),
                    // color: Colors.white,
                    // textColor: Colors.black,
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    }, 
                    child: Text("Register Now"),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text("Now! Quick Login Use Touch ID", style: TextStyle(color: Colors.white),),
              SizedBox(height: 30),
              Image.network("https://image.flaticon.com/icons/png/512/633/633869.png", width: 80),
              SizedBox(height: 30),
              Text("Use Touch ID", style: TextStyle(color: Colors.white),)
            ],
            
          ),
        )
      ),
    );
  }
}
