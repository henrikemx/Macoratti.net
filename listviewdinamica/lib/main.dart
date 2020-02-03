import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista Dinânica'),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() {
    final itens = List<String>.generate(100, (i) => 'Item nº $i');

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          color: Colors.lightGreen,
          child: Text('$index'),
        );
      },
    );
  }
}
