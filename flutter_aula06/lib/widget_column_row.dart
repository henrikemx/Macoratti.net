  import 'package:flutter/material.dart';
import 'package:flutter_aula04/widget_reasedbutton.dart';

widgetRowColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        widgetButtom(),
        widgetButtom(),
        widgetButtom(),
      ],
    );
  }
