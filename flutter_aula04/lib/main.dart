import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 03',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: meuWidget()
    );
  }

  meuWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 2020'),
        centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
        ),
        drawer: Container(
          color: Colors.orange
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo), 
          onPressed: () {print('Pressionado');},
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 40,
            child: Row(
              children: <Widget>[
                Text('Meu ButtomAppBar'),
            
            Icon(Icons.home)],
            ),
          ),
          color: Colors.lime,
        ),
        persistentFooterButtons: <Widget>[
          IconButton(icon: Icon(Icons.add_alarm),
          onPressed: null)
        ],
    );
  }
}

/*class MeuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white
    );
  }
}*/

