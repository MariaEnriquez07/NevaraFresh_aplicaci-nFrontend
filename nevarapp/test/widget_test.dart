import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
import 'package:nevarapp/main.dart';
import 'package:nevarapp/screens/galeria_screen.dart';

void main() {
  testWidgets('App loads initial route', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('NevaraFresh'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });

  testWidgets('GaleriaScreen displays all components once',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GaleriaScreen(),
      ),
    );

    // Verify all 5 section titles
    expect(find.text('1. Botones'), findsOneWidget);
    expect(find.text('2. Campos de texto'), findsOneWidget);
    expect(find.text('3. Tarjetas'), findsOneWidget);
    expect(find.text('4. Barras'), findsOneWidget);
    expect(find.text('5. Componentes propios'), findsOneWidget);

    // Verify each gallery item entry exists
    expect(find.byType(BotonCarrito), findsOneWidget);
    expect(find.byType(CampoTexto), findsOneWidget);
    expect(find.byType(TarjetaProducto), findsOneWidget);
    expect(find.byType(TarjetaProductoVertical), findsOneWidget);
    expect(find.byType(TarjetaPedido), findsOneWidget);
    expect(find.byType(TarjetaDireccion), findsOneWidget);
    expect(find.byType(ItemCarrito), findsOneWidget);
    expect(find.byType(ResumenTotal), findsOneWidget);
    expect(find.byType(FichaCategoria), findsOneWidget);
    expect(find.byType(BarraSuperior), findsOneWidget);
    expect(find.byType(BarraNavegacion), findsOneWidget);
    expect(find.byType(BannerDestacado), findsOneWidget);
    expect(find.byType(EncabezadoSeccion), findsOneWidget);
    expect(find.byType(PildoraInfo), findsOneWidget);
    expect(find.byType(PasosPedido), findsOneWidget);
    expect(find.byType(EstadoCargando), findsOneWidget);
    expect(find.byType(EstadoVacio), findsOneWidget);
    expect(find.byType(EstadoError), findsOneWidget);

    // BotonPrincipal & BotonSecundario are present as gallery items and inside EstadoError & EstadoVacio
    expect(find.byType(BotonPrincipal), findsNWidgets(2));
    expect(find.byType(BotonSecundario), findsNWidgets(2));

    // Verify component name labels
    expect(find.text('BotonPrincipal'), findsOneWidget);
    expect(find.text('BotonSecundario'), findsOneWidget);
    expect(find.text('BotonCarrito'), findsOneWidget);
    expect(find.text('CampoTexto'), findsOneWidget);
    expect(find.text('TarjetaProducto'), findsOneWidget);
    expect(find.text('TarjetaProductoVertical'), findsOneWidget);
    expect(find.text('TarjetaPedido'), findsOneWidget);
    expect(find.text('TarjetaDireccion'), findsOneWidget);
    expect(find.text('ItemCarrito'), findsOneWidget);
    expect(find.text('ResumenTotal'), findsOneWidget);
    expect(find.text('FichaCategoria'), findsOneWidget);
    expect(find.text('BarraSuperior'), findsOneWidget);
    expect(find.text('BarraNavegacion'), findsOneWidget);
    expect(find.text('BannerDestacado'), findsOneWidget);
    expect(find.text('EncabezadoSeccion'), findsOneWidget);
    expect(find.text('PildoraInfo'), findsOneWidget);
    expect(find.text('PasosPedido'), findsOneWidget);
    expect(find.text('EstadoCargando'), findsOneWidget);
    expect(find.text('EstadoVacio'), findsOneWidget);
    expect(find.text('EstadoError'), findsOneWidget);
  });
}
