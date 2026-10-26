import 'package:flutter/material.dart';
import 'package:nevarapp/components/banner_destacado.dart';
import 'package:nevarapp/components/barra_navegacion.dart';
import 'package:nevarapp/components/boton_carrito.dart';
import 'package:nevarapp/components/campo_texto.dart';
import 'package:nevarapp/components/encabezado_seccion.dart';
import 'package:nevarapp/components/ficha_categoria.dart';
import 'package:nevarapp/components/tarjeta_producto.dart';
import 'package:nevarapp/components/tarjeta_producto_vertical.dart';

/// Home of the app: greeting, search, banner, categories and products.
class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFF7E6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola, Ana 👋',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3A47),
                          ),
                        ),
                        Text(
                          '📍 Calle 5 #20-10',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  BotonCarrito(label: 'Carrito (2)'),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              CampoTexto(
                etiqueta: 'Buscar frescos',
                icono: Icons.search,
              ),
              SizedBox(height: 16),
              BannerDestacado(
                titulo: 'Frescos de hoy',
                subtitulo: 'Frutas y verduras para tu mesa',
                emoji: '🍓',
              ),
              SizedBox(height: 16),
              EncabezadoSeccion(title: 'Categorías', actionLabel: 'Ver todo'),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FichaCategoria(emoji: '🍎', nombre: 'Frutas'),
                    SizedBox(width: 12),
                    FichaCategoria(emoji: '🥬', nombre: 'Verduras'),
                    SizedBox(width: 12),
                    FichaCategoria(emoji: '🥩', nombre: 'Cárnicos'),
                    SizedBox(width: 12),
                    FichaCategoria(emoji: '🥖', nombre: 'Panadería'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              EncabezadoSeccion(
                title: 'Nuestros productos',
                actionLabel: 'Ver todo',
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TarjetaProductoVertical(
                      emoji: '🍎',
                      nombre: 'Manzana roja',
                      presentacion: 'Bolsa 1 kg',
                      precio: '\$6.500',
                    ),
                    SizedBox(width: 12),
                    TarjetaProductoVertical(
                      emoji: '🥭',
                      nombre: 'Mango',
                      presentacion: 'Bolsa 1 kg',
                      precio: '\$5.900',
                    ),
                    SizedBox(width: 12),
                    TarjetaProductoVertical(
                      emoji: '🍌',
                      nombre: 'Banano',
                      presentacion: 'Racimo 1 kg',
                      precio: '\$3.400',
                    ),
                    SizedBox(width: 12),
                    TarjetaProductoVertical(
                      emoji: '🍓',
                      nombre: 'Fresa',
                      presentacion: 'Bandeja 500 g',
                      precio: '\$7.200',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              EncabezadoSeccion(title: 'Más pedidos', actionLabel: 'Ver todo'),
              SizedBox(height: 8),
              TarjetaProducto(emoji: '🥕', nombre: 'Zanahoria', precio: '\$2.800'),
              SizedBox(height: 12),
              TarjetaProducto(
                emoji: '🥖',
                nombre: 'Pan campesino',
                precio: '\$3.800',
              ),
              SizedBox(height: 12),
              TarjetaProducto(
                emoji: '🥩',
                nombre: 'Carne molida',
                precio: '\$16.500',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BarraNavegacion(indiceActivo: 0),
    );
  }
}
