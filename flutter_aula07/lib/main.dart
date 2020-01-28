import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso de Flutter - Macoratti.net',
      theme: ThemeData(
        primarySwatch: Colors.blue, // cor do AppBar
      ),
      home: WidgetBasicos(),
    );
  }
}

class WidgetBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Básicos'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepPurple, // cor de fundo do Scaffold
        child: widgetButton(),
              ),
            );
          }
        
          widgetButton() {}
}
