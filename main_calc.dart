import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
typedef OperadorFunc = double Function(double valor, double operando);

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {return new MyAppState();}
}

class MyAppState extends State<MyApp> {

  double valor = 0.0;
  double operando = 0.0;
  OperadorFunc filadeOperacao;
  String resultadoString = "0.0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: SafeArea(
          child: Material(color: Colors.black,
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: 
                      Row(crossAxisAlignment: CrossAxisAlignment.center, 
                        mainAxisAlignment: MainAxisAlignment.end, 
                        children: 
                          [
                            Text(resultadoString,textAlign: TextAlign.right, 
                              style: 
                              TextStyle(fontSize: 50.0, color: Colors.white),
                            )
                          ]
                  )
             ),
            buildRow(3,7,1,"/", (valor, divisor)=> valor / divisor , 1),
            buildRow(3,4,1,"x", (valor, divisor)=> valor * divisor , 1),
            buildRow(3,1,1,"-", (valor, divisor)=> valor - divisor , 1),
            buildRow(1,0,3,"+", (valor, divisor)=> valor + divisor , 1),
            Expanded(
              child:
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.stretch,children:
                    [buildOperadorBotoes("C", null, 1, color: Colors.blueGrey),
                       buildOperadorBotoes("=", (valor, divisor)=> valor, 3)],
                 ),
             )
          ],
          ),
        ),
      )
    );
  }

  void numeroPressionado(int valor)  {
    operando = operando * 10 + valor;
    setState(
          () => resultadoString = operando.toString()
      );
  }

  void calcular(OperadorFunc operacao) {
      if (operacao == null) {
        valor = 0.0;
      }else{
        valor = filadeOperacao != null ? filadeOperacao(valor, operando) : operando;
      }
      filadeOperacao = operacao;
      operando = 0.0;
      var resultado = valor.toString();
      setState(
        () => resultadoString = resultado.toString().substring(0, min(10,resultado.length))
      );
  }

  buildNumeroBotoes( int count,int from, int flex) {
    return Iterable.generate(count, (index)
    {
            return Expanded(flex: flex,
             child: Padding(
               padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                      onPressed: () => numeroPressionado(from + index), color: Colors.white,
                        child: 
                           Text("${from + index}", 
                           style: TextStyle(fontSize: 40.0),
                        )
              ),
       ),
    );
   }).toList();
  }

 buildOperadorBotoes(String label, OperadorFunc func,
    int flex, {Color color = Colors.blue}){
      return Expanded(flex: flex,
           child: Padding(
             padding: const EdgeInsets.all(1.0),
              child: FlatButton(onPressed: () => calcular(func), color: color, 
                child: Text(
                      label, 
                      style: TextStyle(fontSize: 40.0),
                      )
              ),
          ),
      );
  }

 buildRow(int numberKeyCount, int startNumber,  int numberFlex, String operationLabel, 
  OperadorFunc operacao, int operrationFlex){
    return Expanded(child: 
     Row(crossAxisAlignment: CrossAxisAlignment.stretch,
       children: List.from(
             buildNumeroBotoes(numberKeyCount,startNumber ,numberFlex,)
          )
       ..add(
         buildOperadorBotoes(operationLabel, operacao, operrationFlex)
       )
     )
    );
  }
}
