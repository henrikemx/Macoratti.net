  import 'package:flutter/material.dart';

Center widgetText() {
    return Center(
        child: Text(
        'Widget Text',
        style: TextStyle(
          fontSize: 40,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.green,
          decorationStyle: TextDecorationStyle.dashed,
          ),
        ),);
  }