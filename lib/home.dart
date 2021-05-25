import 'package:flutter/material.dart';

class home extends StatelessWidget {
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
              Text("Hello!"),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/deposito");
                }, 
                child: Text("Bunga Deposito")
              ),              
            ],
          ),
        ),
      ),
    );
  }
}