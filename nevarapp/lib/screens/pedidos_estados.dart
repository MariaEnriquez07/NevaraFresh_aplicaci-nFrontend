import 'package:flutter/material.dart';
import 'package:nevarapp/components/barra_superior.dart';
import 'package:nevarapp/components/estado_cargando.dart';
import 'package:nevarapp/components/estado_error.dart';
import 'package:nevarapp/components/estado_vacio.dart';

/// Orders while the data arrives.
class PedidosCargandoScreen extends StatelessWidget {
  const PedidosCargandoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Mis pedidos'),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16), child: EstadoCargando()),
      ),
    );
  }
}

/// Orders when there is none yet.
class PedidosVacioScreen extends StatelessWidget {
  const PedidosVacioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Mis pedidos'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: EstadoVacio(
            mensaje: 'Aún no tienes pedidos',
            boton: 'Explorar el catálogo',
          ),
        ),
      ),
    );
  }
}

/// Orders when the network or the server fail.
class PedidosErrorScreen extends StatelessWidget {
  const PedidosErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      appBar: BarraSuperior(titulo: 'Mis pedidos'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: EstadoError(mensaje: 'Sin conexión'),
        ),
      ),
    );
  }
}
