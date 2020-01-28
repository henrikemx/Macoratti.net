  import 'package:flutter/material.dart';

widgetButton() {
    return RaisedButton(
      // definir a cor do botão
      color: Colors.orange,
      // definir a cor do texto do botão
      textColor: Colors.white,
      // definir o valor de elevation do botão
      elevation: 30,
      child: Text('Ok'),
      // aplicando a técnica do Arrow Function
      onPressed: () => exibirTexto('O botão foi clicado'),
    );
  }

  void exibirTexto(String msg) {
    print(msg);
  }
