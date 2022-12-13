import 'package:flutter/material.dart';
import 'package:proyectobolsa/rutas/routes.dart';

class IngresoR extends StatelessWidget {
  const IngresoR({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;
    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho < 600;
    /*return Scaffold(
      body: (Cuerpo(context)),
    );*/
    return SafeArea(
        child: Scaffold(
      body: (Cuerpo(context)),
    ));
  } // Fin BUILD
} // Fin CLASS

Widget Cuerpo(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/imagenes/FondoR.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Inicio(),
          CampoUsuario(),
          CampoPassword(),
          BotonIngreso(context),
        ],
      ),
    ),
  );
} // Fin WCuerpo

Widget Inicio() {
  return Text(
    "Inicio de Sesion",
    style: TextStyle(
        fontFamily: 'FuzzyBubbles',
        color: Colors.red,
        fontSize: 30,
        fontWeight: FontWeight.bold),
  );
} // Fin WInicio

Widget CampoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingresa tu Usuario",
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
} // Fin WidGet CampoUsuario

Widget CampoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingresa tu Contraseña",
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
} // Fin CampoPassword

Widget BotonIngreso(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, Routes.home);
    },
    child: Text("Ingresar"),
    style: TextButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.white,
    ),
  );
}
