import 'package:flutter/material.dart';

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card de Imagenes by Granados'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () {},
            ),
          ], //Fin de widget[]
        ), //Fin de appbar
        body: Container(
          child: ListView(children: <Widget>[
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/amarillo.jpg?raw=true', 'Cielo 1', 'Cielo Amarillo'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/azul.jpg?raw=true', 'Cielo 2', 'Cielo Azul'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/morao.jpg?raw=true', 'Cielo 3', 'Cielo Morado'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/naranja.jpg?raw=true', 'Cielo 4', 'Cielo Naranja'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/rojo.jpg?raw=true', 'Cielo 5', 'Cielo Rojo'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/rosa.jpg?raw=true', 'Cielo 6', 'Cielo Rosa'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/verde.jpg?raw=true', 'Cielo 7', 'Cielo Verde'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/IsaacGS17/ciclo-de-un-dia/blob/main/gris.jpg?raw=true', 'Cielo 8', 'Cielo Gris'), //x item
            SizedBox(
              height: 5.0,
            ),
          ] //Fin de widget[]
              ), //Fin de listview
        ), //Fin de container
      ), //Fin de scaffold
    ); //Fin de materialapp
  } //Fin del widget

  Widget _items(String url, String producto, String subtitulo) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.grey[850],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subtitulo, style: TextStyle(color: Colors.grey, fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin de clase cardapp
