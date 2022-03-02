import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   
final estiloTexto = new TextStyle (fontSize: 25);
final conteo = 10;

  @override
  Widget build( context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
        centerTitle: true,
     

    ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Carlitos', style: estiloTexto),
          Text('$conteo', style: estiloTexto),

        ],
      )
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton(
      onPressed: () {

      print('Hola mundo');

      },
      child: Icon( Icons.add),
    ),
    );
  }
 



}