import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aula 04 de Flutter - Macoratti.net',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
        home: myWidget());
  }

  Container myWidget() {
    return Container(
        color: Colors.greenAccent,
      );
  }
}
