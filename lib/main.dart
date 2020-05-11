import 'package:fahrenheit_to_celcius/fahrenheitToCelcius.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        accentColor: Colors.cyan[50],
      ),
      title: 'Chat home',
      home: FahrenheitToCelcius(),
    );
  }
}
