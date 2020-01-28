import 'package:flutter/material.dart';
import 'widget_raisedbutton.dart';

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
        child: widgetRowColumn(),
      ),
    );
  }

  widgetRowColumn() {
    return Row (
      // definindo o tamanho do eixo vertical (padrão é máx)
      // mainAxisSize: MainAxisSize.max,
      // define o tipo de alinamento dos botões
      // mainAxisAlignment: MainAxisAlignment.center, // centro
      // mainAxisAlignment: MainAxisAlignment.end, // no final
      // mainAxisAlignment: MainAxisAlignment.spaceAround, // mesmo espaço em torno do botão
      // mainAxisAlignment: MainAxisAlignment.spaceBetween, // maior espaço possível entre cada botão
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // espaço igualmente distribuido entre os botões
      // mainAxisAlignment: MainAxisAlignment.start, // alinhados no início (padrão)
      // crossAxisAlignment: CrossAxisAlignment.center,
      // sem efeito visivel
      crossAxisAlignment: CrossAxisAlignment.end, 
      // move para baixo (Row) ou para direita (Column)
      // crossAxisAlignment: CrossAxisAlignment.start, 
      // move para cima (Row) ou para esquerda (Column)
      // estende os botões ao longo do eixo cruzado
      // crossAxisAlignment: CrossAxisAlignment.stretch, 
      // estende por toda a altura da tela (Row) ou largura (Column)
      children: <Widget>[
        widgetButton(),
        widgetButton(),
        widgetButton(),
      ],
    );
  }
}
