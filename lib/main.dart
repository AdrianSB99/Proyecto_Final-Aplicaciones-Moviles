import 'package:flutter/material.dart';
//import 'package:proyectobolsa/ingreso.dart';
import 'package:proyectobolsa/paginas/home.dart';
import 'package:proyectobolsa/paginas/ingreso.dart';
import 'package:proyectobolsa/paginas/ingresos.dart';
import 'package:proyectobolsa/rutas/paginas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bolsa de los altos App',
      home: INGRESOS(),
      routes: Paginas.route,
    );
  }
}
