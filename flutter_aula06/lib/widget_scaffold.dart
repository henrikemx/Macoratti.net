import 'package:flutter/material.dart';

widgetScaffold() {
  return Scaffold(
    appBar: AppBar(
      title: Text('Flutter 2020: aula 06'),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.white,
    ),
    drawer: Container(color: Colors.orange),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add_a_photo),
      onPressed: () {
        print('Pressionado');
      },
    ),
    bottomNavigationBar: BottomAppBar(
      child: Container(
        height: 40,
        child: Row(
          children: <Widget>[Text('Meu BottomAppBar'), Icon(Icons.home)],
        ),
      ),
      color: Colors.lime,
    ),
    persistentFooterButtons: <Widget>[
      IconButton(icon: Icon(Icons.add_alarm), onPressed: null)
    ],
  );
}

/*class MeuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white
    );
  }
*/
