import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyectobolsa/rutas/routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('AdrianSB'),
              accountEmail: Text('@5D9wZJor9oOH1PY'),
              currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/1393246251005718529/n2VVXCbU_400x400.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              )),
              decoration: BoxDecoration(
                color: Colors.green[900],
              ),
            ),
            ListTile(
              title: (Text('Perfil de Usuario')),
              subtitle: Text('Click para Informacion'),
              onTap: () {
                Navigator.pushNamed(context, Routes.perf);
              },
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Linea Ecologica')),
              subtitle: Text('Ver mas'),
              onTap: (() {
                Navigator.pushNamed(context, Routes.page1);
              }),
              leading: Icon(
                Icons.terrain_rounded,
                color: Colors.greenAccent,
              ),
            ),
            ListTile(
              title: (Text('Linea Comercial')),
              subtitle: Text('Ver mas'),
              onTap: () {
                Navigator.pushNamed(context, Routes.page2);
              },
              leading: Icon(
                Icons.attach_money,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Reportar Producto')),
              subtitle: Text('Dañados'),
              onTap: () {
                Navigator.pushNamed(context, Routes.repo);
              },
              leading: Icon(
                Icons.recycling,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Cerrar Sesion')),
              subtitle: Text('Bay Bay'),
              onTap: () {
                Navigator.pushNamed(context, Routes.inir);
              },
              leading: Icon(
                Icons.get_app_sharp,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Bolsa de los altos'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Center(
          child: Text(
        'Bolsa de los Altos es una empresa fabricante de soluciones en empaque de todo tipo de polietilenos, elaboramos bolsas, peliculas y empaques para el comercio y la industria',
        style: TextStyle(
          fontFamily: 'FuzzyBubbles',
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      )),
    );
  } // Fin BUILD
}// Fin CLASS