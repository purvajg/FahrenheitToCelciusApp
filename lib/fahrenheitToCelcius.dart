import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FahrenheitToCelcius extends StatefulWidget {
  @override
  _FahrenheitToCelciusState createState() => _FahrenheitToCelciusState();
}

class _FahrenheitToCelciusState extends State<FahrenheitToCelcius> {
  double fahrenheit=0;
  double celcius=0;

  String val;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temp Converter',style: GoogleFonts.openSans(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 70,
              height: 30,
              child: Text(
                'Degrees',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Fahrenheit :',
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 100,
                  child: TextField(
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                    ),
                    decoration: new InputDecoration(),
                    keyboardType: TextInputType.phone,
                    onChanged: (value){
                      val = value;//getting the input typed by the user
                    },
                  ),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: (){
              setState(() {//setting the value obtained from user to the val and converting it to celcius
                fahrenheit = double.parse(val);
                celcius = (fahrenheit - 32) * (5/9);
              });
            },
            //a method is created for this variable down
            color: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.blueGrey,
            elevation: 0,
            hoverColor: Colors.blueGrey,
            child: Text(
              'Convert',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Celcius :',
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 200,
                  child: Text(
                    celcius.toStringAsFixed(3),
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
