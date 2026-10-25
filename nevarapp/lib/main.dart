import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';
import 'package:nevarapp/screens/carrito_screen.dart';
import 'package:nevarapp/screens/catalogo_screen.dart';
import 'package:nevarapp/screens/detalle_screen.dart';
import 'package:nevarapp/screens/entrar_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: rosewood),
      ),
      // Cambia esta ruta para ver cada pantalla: /entrar, /catalogo,
      // /detalle o /carrito.
      initialRoute: '/entrar',
      routes: {
        '/entrar': (context) => const EntrarScreen(),
        '/catalogo': (context) => const CatalogoScreen(),
        '/detalle': (context) => const DetalleScreen(),
        '/carrito': (context) => const CarritoScreen(),
      },
    );
  }
}
