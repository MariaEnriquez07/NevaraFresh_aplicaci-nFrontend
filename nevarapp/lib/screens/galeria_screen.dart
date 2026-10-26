import 'package:flutter/material.dart';
import 'package:nevarapp/components/banner_destacado.dart';
import 'package:nevarapp/components/barra_navegacion.dart';
import 'package:nevarapp/components/barra_superior.dart';
import 'package:nevarapp/components/boton_carrito.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/boton_secundario.dart';
import 'package:nevarapp/components/campo_texto.dart';
import 'package:nevarapp/components/encabezado_seccion.dart';
import 'package:nevarapp/components/estado_cargando.dart';
import 'package:nevarapp/components/estado_error.dart';
import 'package:nevarapp/components/estado_vacio.dart';
import 'package:nevarapp/components/ficha_categoria.dart';
import 'package:nevarapp/components/item_carrito.dart';
import 'package:nevarapp/components/pasos_pedido.dart';
import 'package:nevarapp/components/pildora_info.dart';
import 'package:nevarapp/components/resumen_total.dart';
import 'package:nevarapp/components/tarjeta_direccion.dart';
import 'package:nevarapp/components/tarjeta_pedido.dart';
import 'package:nevarapp/components/tarjeta_producto.dart';
import 'package:nevarapp/components/tarjeta_producto_vertical.dart';

/// Gallery showing each reusable component once, organized by sections.
class GaleriaScreen extends StatelessWidget {
  const GaleriaScreen({super.key});

  Widget _seccion(String titulo) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3A47),
            ),
          ),
          const SizedBox(height: 4),
          const Divider(color: Color(0xFFB46A72), thickness: 1.5),
        ],
      ),
    );
  }

  Widget _item(String nombre, Widget componente) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFF7C8D3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              nombre,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB46A72),
              ),
            ),
          ),
          const SizedBox(height: 10),
          componente,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      appBar: AppBar(
        title: const Text('Galería de componentes'),
        backgroundColor: const Color(0xFFFFF7E6),
        foregroundColor: const Color(0xFF2D3A47),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Botones
              _seccion('1. Botones'),
              _item(
                'BotonPrincipal',
                const BotonPrincipal(label: 'Confirmar pedido'),
              ),
              _item(
                'BotonSecundario',
                const BotonSecundario(label: 'Crear cuenta'),
              ),
              _item(
                'BotonCarrito',
                const BotonCarrito(label: 'Carrito (2)'),
              ),

              // 2. Campos de texto
              _seccion('2. Campos de texto'),
              _item(
                'CampoTexto',
                const CampoTexto(
                  etiqueta: 'Buscar frescos',
                  icono: Icons.search,
                ),
              ),

              // 3. Tarjetas
              _seccion('3. Tarjetas'),
              _item(
                'TarjetaProducto',
                const TarjetaProducto(
                  emoji: '🥕',
                  nombre: 'Zanahoria',
                  precio: '\$2.800',
                ),
              ),
              _item(
                'TarjetaProductoVertical',
                const TarjetaProductoVertical(
                  emoji: '🍎',
                  nombre: 'Manzana roja',
                  presentacion: 'Bolsa 1 kg',
                  precio: '\$6.500',
                ),
              ),
              _item(
                'TarjetaPedido',
                const TarjetaPedido(
                  numero: 'Pedido #1038',
                  fecha: '20 oct 2026',
                  estado: 'Entregado',
                  total: '\$32.400',
                ),
              ),
              _item(
                'TarjetaDireccion',
                const TarjetaDireccion(
                  titulo: 'Entregar en',
                  direccion: 'Calle 5 #20-10',
                ),
              ),
              _item(
                'ItemCarrito',
                const ItemCarrito(
                  emoji: '🍎',
                  nombre: 'Manzana roja',
                  detalle: '2 × \$6.500',
                  subtotal: '\$13.000',
                ),
              ),
              _item(
                'ResumenTotal',
                const ResumenTotal(total: '\$18.900'),
              ),
              _item(
                'FichaCategoria',
                const FichaCategoria(emoji: '🍎', nombre: 'Frutas'),
              ),

              // 4. Barras
              _seccion('4. Barras'),
              _item(
                'BarraSuperior',
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    child: BarraSuperior(titulo: 'Mi carrito', primary: false),
                  ),
                ),
              ),
              _item(
                'BarraNavegacion',
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    child: BarraNavegacion(indiceActivo: 0),
                  ),
                ),
              ),

              // 5. Componentes propios
              _seccion('5. Componentes propios'),
              _item(
                'BannerDestacado',
                const BannerDestacado(
                  titulo: 'Frescos de hoy',
                  subtitulo: 'Frutas y verduras para tu mesa',
                  emoji: '🍓',
                ),
              ),
              _item(
                'EncabezadoSeccion',
                const EncabezadoSeccion(
                  title: 'Nuestros productos',
                  actionLabel: 'Ver todo',
                ),
              ),
              _item(
                'PildoraInfo',
                const PildoraInfo(texto: '🌿 Fresca'),
              ),
              _item(
                'PasosPedido',
                const PasosPedido(),
              ),
              _item(
                'EstadoCargando',
                const EstadoCargando(),
              ),
              _item(
                'EstadoVacio',
                const EstadoVacio(
                  mensaje: 'No hay productos en esta categoría',
                  boton: 'Ver todas las categorías',
                ),
              ),
              _item(
                'EstadoError',
                const EstadoError(mensaje: 'Sin conexión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
