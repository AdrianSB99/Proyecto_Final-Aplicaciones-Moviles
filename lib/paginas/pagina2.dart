import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  const Pagina2({
    Key? key,
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Linea Comercial')),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(imageRuta))),
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ], // children Aligment
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Text(
                  producto,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.3),
                ),
                Text(
                  nombre,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.3),
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  precio,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 6.3),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  descripcionTitulo,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 6.3),
                ),
                Text(
                  descripcionDetallada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      wordSpacing: 0,
                      height: 0),
                ),
              ]),
            ),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.lime.shade900,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  'Comprar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ] // children
                ),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Volver al Menu'),
              )
            ]),
          )
        ], // children Column
      ),
    );
  }
}
