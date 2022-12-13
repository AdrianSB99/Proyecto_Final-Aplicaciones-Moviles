import 'package:flutter/material.dart';
import 'package:proyectobolsa/rutas/routes.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/imagenes/Fondo.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Area de Reporte',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Para reportar productos dañados favor de marcar al siguiente numero 272 912432',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.grey,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, botInicio(context)],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

Widget botInicio(BuildContext context) {
  Padding(padding: EdgeInsets.symmetric(vertical: 60));
  return RaisedButton(
    color: Color.fromARGB(255, 0, 255, 4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    onPressed: () {
      Navigator.pushNamed(context, Routes.home);
    },
    child: Text(
      'Regresar',
      style: TextStyle(color: Colors.white),
    ),
  );
}
