import 'package:flutter/material.dart';
import 'package:proyectobolsa/paginas/pagina2.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://bolsasdelosaltos.com/wp-content/uploads/2020/04/camiseta-phone-600x424-copia.png',
      producto: 'Bolsa de Camiseta Clasica',
      nombre: 'Camiseta Clasica',
      precio: '\$65.00 MXN',
      descripcionTitulo: 'Camiseta Clasica Chica',
      descripcionDetallada:
          'Las más resistentes y confiables del mercado, elaboradas con materiales de la más alta calidad, cumpliendo las normas oficiales, práctica por sus asas laterales ideal para empacar y transportar las compras diarias. Para facilitar el uso en el checkout, cada tamaño siempre es del mismo color. También fabricamos todas las medidas en color natural para su uso en alimentos así como color negro con la misma calidad.'),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2019/11/plana-de-baja-densidad-e1579112157497.png',
    producto: 'Bolsa Plana',
    nombre: 'Bolsa Plana 20x30',
    precio: '\$75.00 MXN',
    descripcionTitulo: 'Bolsa Plana',
    descripcionDetallada:
        'Bolsa fabricada con polietileno de baja densidad con excelente sellado y en presentación individual, las bolsas planas cuentan con excelente transparencia y resistencia, muy útiles tanto para la industria y el comercio en general..',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/01/bolsas-de-rollo.png',
    producto: 'Bolsa Rollo',
    nombre: 'Bolsa Rollo Clasico',
    precio: '\$75.00 MXN',
    descripcionTitulo: 'Rollo 15x25',
    descripcionDetallada:
        'Bolsa en presentación de rollo para desprender fácilmente, su uso va desde el empaque de frutas, alimentos y supermercados y también puede ser usada con líquidos. Excelente resistencia y calidad por ser elaborada con los mejores materiales..',
  ),
  ImageDetails(
    imageRuta:
        'https://bolsasdelosaltos.com/wp-content/uploads/2020/07/flat-final.png',
    producto: 'Bolsa Camiseta',
    nombre: 'Camiseta Flat',
    precio: '\$85.00',
    descripcionTitulo: 'Bolsa de Camiseta Flat',
    descripcionDetallada:
        'Con la misma calidad de la línea Clásica, ultra delgada y ultra resistente que garantiza un mayor rendimiento pieza por pieza, ideal para el empaque y transporte de productos en supermercados, farmacias, tiendas con productos que no son tan demandantes.',
  )
];

class MuestPag2 extends StatelessWidget {
  const MuestPag2({super.key});

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
                              builder: (context) => Pagina2(
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
