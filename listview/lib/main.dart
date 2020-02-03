import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista Básica'),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text('Texto'),
          subtitle: Text('meu texto'),
          trailing: Icon(Icons.add_shopping_cart),
          selected: true,
          onTap: (){
            print('Ok');
          },
        ),
        ListTile(
          leading: Icon(Icons.add_to_photos),
          title: Text('Texto'),
          subtitle: Text('meu texto'),
          trailing: Icon(Icons.add_box),
          enabled: true,
          onLongPress: (){
            print('onLongPress...');
          },
        ),

        Text('Texto de exemplo'),

        Container(color: Colors.green, height: 60,)
      ],
    );
  }
}
