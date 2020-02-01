import 'package:flutter/material.dart';

class widgetScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget AppBar'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepPurple, // cor de fundo do Scaffold
      ),
      drawer: Container(
        color: Colors.orange, // cor de fundo do Drawer
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          child: Row(
            children: <Widget>[
              Icon(Icons.home),
              Text('Este é um Widget BottomAppBar'),
            ],
          ),
        ),
        color: Colors.yellow, // cor da barra de navegação
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          icon: Icon(Icons.alarm_add),
          onPressed: null,
        )
      ],
    );
  }
}
