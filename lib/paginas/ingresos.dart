import 'package:flutter/material.dart';
import 'package:proyectobolsa/paginas/ingreso.dart';
import 'package:proyectobolsa/paginas/ingresoR.dart';

class INGRESOS extends StatelessWidget {
  const INGRESOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CuerpoR(context));
  }
}

Widget CuerpoR(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;

  bool isDesktop(BuildContext context) => ancho >= 600;
  bool ismobile(BuildContext context) => ancho < 600;
  if (ismobile(context)) return Ingreso();
  if (isDesktop(context)) return IngresoR();
  return Scaffold();
}
