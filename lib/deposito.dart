import 'package:flutter/material.dart';

class deposito extends StatefulWidget {
  @override
  _depositoState createState() => _depositoState();
}

class _depositoState extends State<deposito> {
  String ddBank = "mandiri";
  String ddBln = "1";
  double amount = 0;
  double res = 0;

  void count()
  {
    setState(() {
      if(ddBank == "mandiri" && ddBln == "1")
      {
        res = amount + (((amount*2/100)/12)*1);        
      }
      else if(ddBank == "mandiri" && ddBln == "3")
      {
        res = amount + (((amount*3/100)/12)*3);
      }
      else if(ddBank == "mandiri" && ddBln == "6")
      {
        res = amount + (((amount*3/100)/12)*6);
      }
      else if(ddBank == "jtrust" && ddBln == "1")
      {
        res = amount + (((amount*3.75/100)/12)*1);
      }
      else if(ddBank == "jtrust" && ddBln == "3")
      {
        res = amount + (((amount*4/100)/12)*3);
      }
      else if(ddBank == "jtrust" && ddBln == "6")
      {
        res = amount + (((amount*4/100)/12)*6);
      }
      else if(ddBank == "bni" && ddBln == "1")
      {
        res = amount + (((amount*2.85/100)/12)*1);
      }
      else if(ddBank == "bni" && ddBln == "3")
      {
        res = amount + (((amount*2.85/100)/12)*3);
      }
      else if(ddBank == "bni" && ddBln == "6")
      {
        res = amount + (((amount*2.85/100)/12)*6);
      }
      else if(ddBank == "cimb" && ddBln == "1")
      {
        res = amount + (((amount*3.2/100)/12)*1);
      }
      else if(ddBank == "cimb" && ddBln == "3")
      {
        res = amount + (((amount*3.5/100)/12)*3);
      }
      else if(ddBank == "cimb" && ddBln == "6")
      {
        res = amount + (((amount*3.5/100)/12)*6);
      }
      print(res);
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
                      value: "mandiri", child: Text("Bank Mandiri")),
                  DropdownMenuItem<String>(
                      value: "jtrust", child: Text("Bank J Trust")),
                  DropdownMenuItem<String>(value: "bni", child: Text("Bank BNI")),
                  DropdownMenuItem<String>(
                      value: "cimb", child: Text("Bank CIMB Niaga")),
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
                  DropdownMenuItem<String>(value: "3", child: Text("3 Bulan")),
                  DropdownMenuItem<String>(value: "6", child: Text("6 Bulan")),
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
                onChanged: (String _val){
                  amount = double.parse(_val);
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
