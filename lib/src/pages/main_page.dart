//import 'dart:html';

//import 'dart:ui';

//import 'dart:html';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  //var _nombre = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, size: 32,),
        actions: <Widget>[
          Icon(Icons.remove_red_eye, size: 22),
          SizedBox(
            width: 8,
          ),
          Center(
              child: Text(
            '0'  ,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, )),
          ),
          SizedBox(
            width: 16,
          )
        ],
        backgroundColor: Colors.deepPurple[700],
        title: Text('Trapp' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Card(
              elevation: 14,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 380,
                    height: 140,
                    child: Center(
                      child: ListView(
                        children: <Widget>[
                          SizedBox(height: 6),
                          buildTextFormField(),
                          Container(
                            width: 20,
                            height: 4,
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: 20),
                                    ElevatedButton(
                                      child: Text(
                                        'A',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26),
                                      ),
                                      onPressed: () => _mostrarAlert(context),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple[700],
                                          shape: StadiumBorder()),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      child: Text(
                                        'B',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26),
                                      ),
                                      onPressed: () => _mostrarAlert(context),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple[700],
                                          shape: StadiumBorder()),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      child: Text(
                                        'C',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26),
                                      ),
                                      onPressed: () => _mostrarAlert(context),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple[700],
                                          shape: StadiumBorder()),
                                    ),
                                    SizedBox(width: 66),
                                    FloatingActionButton(
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                        color: Colors.deepPurple[700],
                                      ),
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      onPressed: () => _mostrarAlert(context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
              backgroundColor: Colors.deepPurple[700],
              onPressed: () {},
            ),
            SizedBox(height: 455),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 30),
                FloatingActionButton(
                  child: Icon(Icons.share, size: 30),
                  backgroundColor: Colors.deepPurple[700],
                  onPressed: () {},
                ),
                SizedBox(
                  width: 240,
                ),
                FloatingActionButton(
                  child: Center(
                    child: Container(
                      //decoration: BoxDecoration(shape: BoxShape.circle),
                      padding: EdgeInsets.zero,
                      child: new Image.asset(
                        "assets/images/trapp_logo_blanco.png",
                        alignment: Alignment.center,
                        scale: 16,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.deepPurple[700],
                  onPressed: () {},
                ),
                SizedBox(width: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField() => TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        /*prefixIcon: Icon(
                          Icons.edit,
                          color: Colors.black,),*/
        hintText: 'Añadir pregunta',
        hintStyle: TextStyle(color: Colors.black),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              title: Text(
                'Añade una respuesta',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 3),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          /*prefixIcon: Icon(
                                              Icons.edit,
                                              color: Colors.black,
                                    ),*/
 
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('Cancelar',
                        style: TextStyle(color: Colors.deepPurple[700])),
                    onPressed: () => Navigator.of(context).pop()),
                TextButton(
                  child: Text('Añadir',
                      style: TextStyle(color: Colors.deepPurple[700])),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]);
        });
  }
}
