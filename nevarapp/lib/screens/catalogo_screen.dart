import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';
import 'package:nevarapp/components/barra_navegacion.dart';
import 'package:nevarapp/components/chip_categoria.dart';
import 'package:nevarapp/components/tarjeta_producto.dart';

/// Catalog of fresh products, with search and categories.
class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        title: const Text('Catálogo'),
        backgroundColor: fondo,
        foregroundColor: medianoche,
        actions: [
          IconButton(
            onPressed: () {
              print('Carrito');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar frescos',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChipCategoria(label: 'Frutas', activo: true),
                    SizedBox(width: 8),
                    ChipCategoria(label: 'Verduras', activo: false),
                    SizedBox(width: 8),
                    ChipCategoria(label: 'Cárnicos', activo: false),
                    SizedBox(width: 8),
                    ChipCategoria(label: 'Panadería', activo: false),
                  ],
                ),
              ),
              SizedBox(height: 16),
              TarjetaProducto(emoji: '🍎', nombre: 'Manzana roja', precio: '\$6.500'),
              SizedBox(height: 12),
              TarjetaProducto(emoji: '🥭', nombre: 'Mango', precio: '\$5.900'),
              SizedBox(height: 12),
              TarjetaProducto(emoji: '🍌', nombre: 'Banano', precio: '\$3.400'),
              SizedBox(height: 12),
              TarjetaProducto(emoji: '🍓', nombre: 'Fresa', precio: '\$7.200'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BarraNavegacion(indice: 0),
    );
  }
}
