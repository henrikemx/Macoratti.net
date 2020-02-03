import 'package:flutter/material.dart';
import 'package:flutter_aula05b/widget_image.dart';

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
      // definindo a cor de fundo do Scaffold
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('Widgets Básicos'),
        // posicionar o texto no centro do AppBar
        centerTitle: true,
      ),
      body: Container(
        // definindo largura da linha (Row) ou coluna (column)
        // Só será sentido os efeitos quando usado a propriedade crossAxisAlignment
        // e widget Row
        // height: double.infinity, // toma a tela inteira
        // width: double.infinity,
        // definir a cor de fundo do Container
        color: Colors.deepPurple,
        child: widgetImage(),
      ),
    );
  }

  /*
}
