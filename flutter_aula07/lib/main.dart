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
        // posicionar o texto no centro do AppBar
        centerTitle: true,
      ),
      body: Container(
        // definir a cor de fundo do Container
        color: Colors.deepPurple,
        child: widgetButton(),
      ),
    );
  }

  widgetButton() {
    return Center(
      child: RaisedButton(
        // definir a cor do botão
        color: Colors.orange,
        // definir a cor do texto do botão
        textColor: Colors.white,
        // definir o valor de elevation do botão
        elevation: 30,
        child: Text('Clique aqui'),
        // aplicando a técnica do Arrow Function
        onPressed: () => exibirTexto('O botão foi clicado'),
      ),
    );
  }

  void exibirTexto(String msg) {
    print(msg);
  }
}
