import 'package:flutter/material.dart';

class deposito extends StatefulWidget {
  @override
  _depositoState createState() => _depositoState();
}

class _depositoState extends State<deposito> {
  String ddBank = "1";
  String ddBln = "1";
  int amount = 0;
  double res = 0;

  void count()
  {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.orange[200],
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  "https://image.flaticon.com/icons/png/512/3075/3075977.png",
                  width: 100),
              Text("Hello!"),
              SizedBox(height: 30),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                      value: "1", child: Text("Bank Mandiri")),
                  DropdownMenuItem<String>(
                      value: "2", child: Text("Bank J Trust")),
                  DropdownMenuItem<String>(value: "3", child: Text("Bank BNI")),
                  DropdownMenuItem<String>(
                      value: "4", child: Text("Bank CIMB Niaga")),
                ],
                value: ddBank,
                hint: Text("Contoh dropdown button"),
                onChanged: (String value) {
                  setState(() {
                    ddBank = value;
                    print(ddBank);
                  });
                },
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(value: "1", child: Text("1 Bulan")),
                  DropdownMenuItem<String>(value: "2", child: Text("3 Bulan")),
                  DropdownMenuItem<String>(value: "3", child: Text("6 Bulan")),
                ],
                value: ddBln,
                hint: Text("Contoh dropdown button"),
                onChanged: (String value) {
                  setState(() {
                    ddBln = value;
                    print(ddBln);
                  });
                },
              ),
              TextField(
                onSubmitted: (String _val){
                  amount = int.parse(_val);
                  print(amount);
                },
                decoration: InputDecoration(labelText: "Amount")
              ),
              ElevatedButton(
                onPressed: count, 
                child: Text("Count")
              ),
              Text("Result: "+res.toString())
            ],
          ),
        ),
      ),
    );
  }
}
