import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso de Flutter - Macoratti.net - StatefulWidget',
      theme: ThemeData(
        primarySwatch: Colors.blue, // cor do AppBar
      ),
      home: WidgetCorPreferida(),
    );
  }
}

class WidgetCorPreferida extends StatefulWidget {
  @override
  _WidgetCorPreferidaState createState() => _WidgetCorPreferidaState();
}

class _WidgetCorPreferidaState extends State<WidgetCorPreferida> {

  String nomeCor = '';

  @override
  Widget build(BuildContext context) {
    debugPrint('## Widget foi criado...');
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('StatefulWidget'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            TextField(
              // textAlign: TextAlign.right,
              onSubmitted: (String texto){
                debugPrint('## SetState foi chamado, redesenhando o Widget...');
                setState(() {
                  nomeCor = texto;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Sua cor favorita é: $nomeCor',
              style: TextStyle(fontSize: 20),
              // textAlign: TextAlign.left,),
            )
          ],
        ),
      ),
    );
  }
}