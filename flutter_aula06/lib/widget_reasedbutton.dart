import 'package:flutter/material.dart';

widgetButtom() {
  return RaisedButton(
    color: Colors.red,
    elevation: 20,
    child: Text('Ok'),
    textColor: Colors.white,
    onPressed: () => exibirTexto('Pressionado'),
  );
}

void exibirTexto(String msg) {
  print(msg);
}
