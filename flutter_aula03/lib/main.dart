import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Olá Flutter 2020',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30, 
          fontWeight: FontWeight.bold
          )),
    );
  }
}
