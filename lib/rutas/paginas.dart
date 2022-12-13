import 'package:flutter/material.dart';
import 'package:proyectobolsa/paginas/home.dart';
import 'package:proyectobolsa/paginas/gale1.dart';
import 'package:proyectobolsa/paginas/gale2.dart';
import 'package:proyectobolsa/paginas/ingreso.dart';
import 'package:proyectobolsa/paginas/ingresos.dart';
import 'package:proyectobolsa/rutas/routes.dart';
import 'package:proyectobolsa/paginas/perfil.dart';
import 'package:proyectobolsa/paginas/report.dart';

abstract class Paginas {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => Home(),
    Routes.page1: (BuildContext context) => Paginas1(),
    Routes.page2: (BuildContext context) => Paginas2(),
    Routes.ingreso: (BuildContext context) => Ingreso(),
    Routes.perf: (BuildContext context) => Perfil(),
    Routes.repo: (BuildContext context) => Report(),
    Routes.inir: (BuildContext context) => INGRESOS(),
  };
}
