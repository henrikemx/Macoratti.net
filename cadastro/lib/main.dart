import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());

  var db = Firestore.instance;

  // QuerySnapshot resultado = await db.collection('produtos').getDocuments();
  // DocumentSnapshot resultado =

  db.collection('produtos').snapshots().listen((resultado) {
    resultado.documents.forEach((d) {
      print(d.data);
    });
  });

  //.document('iyGcDcxfXXx2PJRjdUWG')
  // .get(); // esta função irá realizar uma busca especifica
  //.delete();

  // print(resultado.documentID);
  // print(resultado.data);

  // resultado.documents.forEach((d) {
  // d.reference.updateData({'ativo': false});

  //print(d.documentID);
  //print(d.data);

  // });

  // db.collection('produtos').document('produto1').updateData({
  //   'nome': 'caneta esferográfica BIC',
  // });

  // .add({'nome': 'estojo', 'preco': 5.45, 'ativo': true});

  /*
  .document('produto2')
    .setData({

  'nome':'caderno',
  'preco':8.99,
  'ativo': false
    });*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
