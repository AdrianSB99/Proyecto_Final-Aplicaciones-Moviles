import 'package:flutter/material.dart';
import 'package:proyectobolsa/paginas/pagina1.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/camiseta-oxo-impresa-f-2.png',
      producto: 'Bolsa de Camiseta Impresa',
      nombre: 'Camiseta Personalizada Biodegradable',
      precio: '\$90.00 MXN',
      descripcionTitulo: 'Camiseta Biodegradable Impresa d2w',
      descripcionDetallada:
          'Bolsa camiseta 100% biodegradable y de alta calidad fabricada con tecnología d2w que cuando es desechada en el suelo o composta comercial en la presencia de microorganismos, humedad y oxígeno, se biodegrada en materias comunes encontradas en la naturaleza, tal como describe la norma ASTM D 6954-04 en un término de 12 a 24 meses.'),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/camiseta-2.png',
    producto: 'Bolsa de Camiseta ECO ONE',
    nombre: 'Camiseta Chica Biodegradable',
    precio: '\$85.00 MXN',
    descripcionTitulo: 'Camiseta Biodegradable línea ECO ONE',
    descripcionDetallada:
        'Camiseta Biodegradable línea ECO ONE» y que el texto sea el siguiente: «Bolsa camiseta 100% biodegradable fabricada con tecnología eco one, se activa cuando se colocan en un vertedero biológicamente activo, mejora la biodegradación del plástico en metano (puede convertirse en energía), dióxido de carbono y humus inerte.',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/bolsa-ecogreen.png',
    producto: 'Bolsa de Camiseta green',
    nombre: 'Bolsa de Camiseta Chica',
    precio: '\$65.00 MXN',
    descripcionTitulo: 'Camiseta green pack',
    descripcionDetallada:
        'Bolsa camiseta elaborada con materiales plásticos 100% reciclados de grado pos industrial, que garantiza la calidad y resistencia que necesitas. Con la ayuda de nuestro proceso interno de reciclaje, convertimos los residuos plásticos de otras empresas en bolsas Green Pack con excelente calidad y resistencia.',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/plana-green.png',
    producto: 'Bolsa Plana',
    nombre: 'Plana green pack',
    precio: '\$100.00',
    descripcionTitulo: 'Bolsa Plana Green Pack',
    descripcionDetallada:
        'Bolsa plana elaborada con materiales 100% reciclados, pensada para las tareas más difíciles, con sellos de calidad industrial y una resistencia incomparable, los materiales plásticos reciclados para fabricar estas bolsas son de procedencia pos industrial lo que garantiza la calidad y resistencia de nuestras bolsas.',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/bolsa-rollo-1.png',
    producto: 'Bolsa de Rollo',
    nombre: 'Rollo Biodegradable',
    precio: '\$150.00 MXN',
    descripcionTitulo: 'Rollo biodegradable impreso d2w',
    descripcionDetallada:
        'Bolsa plana de alta densidad, elaborada en rollo punteado para una mayor rapidez al despachar, elaborada con tecnología d2w 100% biodegradable, con materiales de la mejor calidad y altos estándares de inocuidad lo que la hace apta para el contacto con alimentos, impresa con temas ecológicos.',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/03/bolsa-rollo-2.png ',
    producto: 'Bolsa de Rollo',
    nombre: 'Rollo biodegradable',
    precio: '\$100.00',
    descripcionTitulo: 'Rollo biodegradable verde d2w',
    descripcionDetallada:
        'Bolsa plana de alta densidad, elaborada en rollo punteado para una mayor rapidez al despachar, elaborada con tecnología d2w 100% biodegradable, con materiales de la mejor calidad y altos estándares de inocuidad lo que la hace apta para el contacto con alimentos, pigmentada con un ligero color verde para dar un toque ecológico a su producto.',
  )
];

class MuestPag1 extends StatelessWidget {
  const MuestPag1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text('Bolsas'),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pagina1(
                                imageRuta: _images[index].imageRuta,
                                producto: _images[index].producto,
                                nombre: _images[index].nombre,
                                precio: _images[index].precio,
                                descripcionTitulo:
                                    _images[index].descripcionTitulo,
                                descripcionDetallada:
                                    _images[index].descripcionDetallada,
                              ),
                            ));
                      },
                      child: Hero(
                        tag: 'logo',
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(_images[index].imageRuta),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.green[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Regresar',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  } // Fin BUILD
} //Fin CLASS

class ImageDetails {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
}
