import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aula 06',
        theme: ThemeData(primaryColor: Colors.blue),
        home: WidgetsBasicos());
  }
}

class WidgetsBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Widgets Básicos'),
        ),
        body: Container(
          // height: 100,
          height: double.infinity, // ocupa toda a tela
          color: Colors.white,
          child: widgetImage(),
        ));
  }

  widgetImage() {
    return Center(
      child: 
      Image.asset(
        'images/cao_filhote.png',
        height: 300,
        width: 300,
        fit: BoxFit.contain
        )
        );
  }

  // construtor obtendo fonte de rede
  /*
  widgetImage() {
    return Center(
        child: Image.network(
            'https://mfacdn.cachefly.net/chooseveg/sites/4/2019/03/WorldVeganDayCover-3-1200x570.jpg'));
  }*/
}
