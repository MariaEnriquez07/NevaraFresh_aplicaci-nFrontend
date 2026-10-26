import 'package:flutter/material.dart';
import 'package:nevarapp/screens/carrito_screen.dart';
import 'package:nevarapp/screens/catalogo_estados.dart';
import 'package:nevarapp/screens/catalogo_screen.dart';
import 'package:nevarapp/screens/confirmado_screen.dart';
import 'package:nevarapp/screens/detalle_screen.dart';
import 'package:nevarapp/screens/entrar_screen.dart';
import 'package:nevarapp/screens/galeria_screen.dart';
import 'package:nevarapp/screens/pedidos_estados.dart';
import 'package:nevarapp/screens/pedidos_screen.dart';

void main() {
  runApp(const App());
}

/// Root widget of the app.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NevaraFresh',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB46A72)),
      ),
      // Cambia esta ruta para ver cada pantalla:
      // /galeria, /entrar, /catalogo, /detalle, /carrito, /confirmado, /pedidos
      // Estados: /catalogo-cargando, /catalogo-vacio, /catalogo-error,
      //          /pedidos-cargando, /pedidos-vacio, /pedidos-error
      initialRoute: '/entrar',
      routes: {
        '/galeria': (context) => const GaleriaScreen(),
        '/entrar': (context) => const EntrarScreen(),
        '/catalogo': (context) => const CatalogoScreen(),
        '/detalle': (context) => const DetalleScreen(),
        '/carrito': (context) => const CarritoScreen(),
        '/confirmado': (context) => const ConfirmadoScreen(),
        '/pedidos': (context) => const PedidosScreen(),
        '/catalogo-cargando': (context) => const CatalogoCargandoScreen(),
        '/catalogo-vacio': (context) => const CatalogoVacioScreen(),
        '/catalogo-error': (context) => const CatalogoErrorScreen(),
        '/pedidos-cargando': (context) => const PedidosCargandoScreen(),
        '/pedidos-vacio': (context) => const PedidosVacioScreen(),
        '/pedidos-error': (context) => const PedidosErrorScreen(),
      },
    );
  }
}
