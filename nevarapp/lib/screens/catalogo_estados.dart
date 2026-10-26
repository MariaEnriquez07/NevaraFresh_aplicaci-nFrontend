import 'package:flutter/material.dart';
import 'package:nevarapp/components/barra_superior.dart';
import 'package:nevarapp/components/estado_cargando.dart';
import 'package:nevarapp/components/estado_error.dart';
import 'package:nevarapp/components/estado_vacio.dart';

/// Catalog while the data arrives.
class CatalogoCargandoScreen extends StatelessWidget {
  const CatalogoCargandoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Catálogo'),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16), child: EstadoCargando()),
      ),
    );
  }
}

/// Catalog when there are no products to show.
class CatalogoVacioScreen extends StatelessWidget {
  const CatalogoVacioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Catálogo'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: EstadoVacio(
            mensaje: 'No hay productos en esta categoría',
            boton: 'Ver todas las categorías',
          ),
        ),
      ),
    );
  }
}

/// Catalog when the network or the server fail.
class CatalogoErrorScreen extends StatelessWidget {
  const CatalogoErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Catálogo'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: EstadoError(mensaje: 'Sin conexión'),
        ),
      ),
    );
  }
}
