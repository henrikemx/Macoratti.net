import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();
  String _infoText = 'Informe o valor de cada combustível';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alcool ou Gasolina'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _resetaValores();
              })
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.directions_car, size: 60, color: Colors.lime),
              buildTextFormGasolina(),
              buildTextFormAlcool(),
              buildContainerButton(context),
              buildTextInfo()
            ],
          ),
        ),
      ),
    );
  }

  buildTextInfo() {
    return Text(
      _infoText,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20),
    );
  }

  buildContainerButton(BuildContext context) {
    return Container(
        height: 50,
        child: RaisedButton(
            onPressed: () {
              if (_formkey.currentState.validate()) {
                calcular();
                FocusScope.of(context).requestFocus(new FocusNode());
              }
            },
            child: Text(
              'Calcular',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.deepOrange));
  }

  buildTextFormGasolina() {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'Preço da Gasolina',
            labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
        style: TextStyle(fontSize: 30),
        controller: gasolinaController,
        validator: (value) {
          if (value.isEmpty) {
            return 'Informe o valor da Gasolina';
          }
          return null;
        });
  }

  buildTextFormAlcool() {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'Preço da Alcool',
            labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
        style: TextStyle(fontSize: 30),
        controller: alcoolController,
        validator: (value) {
          if (value.isEmpty) {
            return 'Informe o valor do Alcool';
          }
          return null;
        });
  }

  void calcular() {
    setState(() {
      double gasolina = double.parse(gasolinaController.text);
      double alcool = double.parse(alcoolController.text);
      double resultado = (alcool / gasolina);
      if (resultado >= 0.70) {
        _infoText =
            'Percentual: (${resultado.toStringAsPrecision(3)})\n\n Vale a pena abastecer com Gasolina';
      } else {
        _infoText =
            'Percentual: (${resultado.toStringAsPrecision(3)})\n\n Vale a pena abastecer com Alcool';
      }
    });
  }

  _resetaValores() {
    setState(() {
      gasolinaController.text = '';
      alcoolController.text = '';
      _infoText = 'Informe o valor de cada combustível';
    });
  }
}
