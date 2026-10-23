# Guía de Agentes de Desarrollo — NevaraFresh (AGENTS.md)

Este documento sirve como contexto maestro, directriz de arquitectura y guía técnica para agentes de Inteligencia Artificial y desarrolladores que interactúen con el repositorio **NevaraFresh_aplicaci-nFrontend**.

---

## 1. Contexto General del Proyecto

### 1.1 ¿Qué es NevaraFresh?
**NevaraFresh** es una iniciativa orientada a la comercialización, distribución y abastecimiento eficiente de productos frescos.

El repositorio actual alberga la aplicación frontend desarrollada en **Flutter**, diseñada con dos ejes documentados clave en `nevarapp/docs`:
1. **Aplicación para Clientes (Domicilios):** Experiencia de usuario orientada al recorrido de compra, catálogo de frescos, carrito y seguimiento de pedidos.
2. **Red Operativa y Colaborativa (85 Tiendas):** Modelo de datos para la comunicación interna, mermas, alertas y coordinación logística entre personal de sucursales y administración central.

### 1.2 Alcance de la Aplicación de Clientes
* **Catálogo de productos:** Explorar y consultar productos frescos organizados por categorías.
* **Detalle del producto:** Visualización de características, precios e información nutricional o de presentación.
* **Carrito de compras:** Selección de ítems, adición/disminución de cantidades y cálculo de montos.
* **Dirección y entrega:** Registro o selección de direcciones para entrega a domicilio.
* **Checkout y Confirmación:** Resumen de la compra previo a la orden final.
* **Seguimiento de pedidos:** Consulta de historial de pedidos y visualización de sus estados actuales.
* **Perfil de usuario:** Datos básicos del cliente, preferencias y configuración de cuenta.

### 1.3 Límites del Alcance (Qué NO incluye)
* No es un panel administrativo ni ERP de inventario global.
* No sustituye una aplicación dedicada e independiente de repartidores (a menos que se especifique un módulo puntual de visualización de entregas).
* No asumir procesos internos, pasarelas de pago definitivas ni reglas de negocio sin previa confirmación o especificación funcional.

---

## 2. Propuesta del Modelo de Datos (Supabase)

La persistencia y el esquema de datos documentados en `nevarapp/docs/propuesta_base_de_datos_supabase_neverafresh (1).md` soportan la red comunitaria y operativa entre las 85 tiendas de NeveraFresh, así como el perfilado de usuarios.

### 2.1 Entidades y Esquema

#### `usuarios`
Representa al personal operativo (administradores de tienda, administradores logísticos, conductores de domicilios) y perfiles base del sistema.
* `id` (`UUID`, PK): Identificador único del usuario.
* `nombre` (`TEXT`): Nombre completo del colaborador o usuario.
* `usuario` (`TEXT`, UNIQUE): Nombre de usuario/alias para ingreso al sistema.
* `cargo` (`TEXT`): Rol o cargo laboral (ej. *"Gerente de Tienda"*, *"Logística / Domiciliario"*, *"Administrador Central"*).
* `correo` (`TEXT`, UNIQUE): Correo corporativo o de contacto.
* `ciudad` (`TEXT`): Ciudad de la sucursal asignada.
* `foto_url` (`TEXT`): URL de la imagen de perfil o avatar.

#### `publicaciones`
Novedades de la red de tiendas, avisos de excedentes/mermas, alertas de desabastecimiento o comunicados operativos.
* `id` (`UUID`, PK): Identificador único de la publicación.
* `usuario_id` (`UUID`, FK `usuarios.id`): Usuario que emite la publicación.
* `texto` (`TEXT`): Contenido del mensaje, novedad o alerta operativa.
* `fecha` (`TIMESTAMPTZ`): Fecha y hora de creación del registro.

#### `seguidores`
Relación de seguimiento entre usuarios (ej. gerentes que siguen tiendas nodales o coordinadores que supervisan ciertos domiciliarios).
* `id` (`UUID`, PK): Identificador único de la relación.
* `seguidor_id` (`UUID`, FK `usuarios.id`): Usuario que sigue a otro.
* `seguido_id` (`UUID`, FK `usuarios.id`): Usuario al cual se sigue.

#### `mensajes`
Chat directo e interconectado entre gerentes de tienda, domiciliarios y administradores para coordinación en tiempo real.
* `id` (`UUID`, PK): Identificador único del mensaje.
* `emisor_id` (`UUID`, FK `usuarios.id`): Usuario emisor del mensaje.
* `receptor_id` (`UUID`, FK `usuarios.id`): Usuario receptor/destinatario.
* `texto` (`TEXT`): Contenido del mensaje transmitido.
* `hora` (`TIMESTAMPTZ`): Marca de tiempo del envío.

### 2.2 Relaciones Clave
* **Usuario -> Publicaciones (1:N):** Un usuario puede registrar múltiples publicaciones (`publicaciones.usuario_id -> usuarios.id`).
* **Usuario -> Seguidores (N:M autoreferencial):** Conexión bidireccional mediante `seguidores.seguidor_id` y `seguidores.seguido_id`.
* **Usuario -> Mensajes (1:N emisor, 1:N receptor):** Un usuario gestiona interacciones como emisor (`mensajes.emisor_id`) y como receptor (`mensajes.receptor_id`).

---

## 3. Arquitectura y Estructura del Código Frontend

La aplicación se ubica en el subdirectorio `nevarapp/` y está construida con **Flutter** y **Dart**.

### 3.1 Estructura Recomendada de `nevarapp/lib`
Para garantizar la separación entre interfaces visuales, lógica de negocio y modelos de datos:

```
nevarapp/
├── docs/                                          # Documentación funcional y de datos
│   ├── Context.md                                 # Alcance e identidad de la app
│   └── propuesta_base_de_datos_supabase_neverafresh (1).md # Modelo Supabase
├── lib/
│   ├── core/                                      # Utilidades globales, temas, constantes
│   │   ├── constants/
│   │   ├── theme/
│   │   └── utils/
│   ├── data/                                      # Capa de datos y persistencia
│   │   ├── datasources/                           # Conexión Supabase / API / Local
│   │   ├── models/                                # Modelos Dart serializables (fromMap/toMap)
│   │   │   ├── usuario_model.dart
│   │   │   ├── publicacion_model.dart
│   │   │   ├── mensaje_model.dart
│   │   │   ├── seguidor_model.dart
│   │   │   └── producto_model.dart (catálogo cliente)
│   │   └── repositories/                          # Implementaciones de repositorios
│   ├── domain/                                    # Capa de dominio (si aplica arquitectura limpia)
│   │   ├── entities/
│   │   └── repositories/
│   ├── presentation/                              # Capa visual (UI)
│   │   ├── screens/                               # Pantallas principales
│   │   │   ├── catalog/                           # Catálogo de productos frescos
│   │   │   ├── cart/                              # Carrito de compras
│   │   │   ├── orders/                            # Historial y seguimiento de pedidos
│   │   │   ├── operational/                       # Módulos operativos / mensajería / mermas
│   │   │   └── profile/                           # Perfil de usuario
│   │   └── widgets/                               # Componentes visuales reutilizables
│   └── main.dart                                  # Punto de entrada de la aplicación
├── pubspec.yaml                                   # Dependencias y configuración de Flutter
└── analysis_options.yaml                          # Reglas de linter y calidad de código
```

---

## 4. Directrices de Implementación para Agentes

1. **Separación de Responsabilidades:** Nunca acoplar consultas directas a base de datos dentro de los widgets de presentación. Encapsular la lógica en servicios o repositorios y modelos dedicados.
2. **Inmutabilidad y Tipado Estricto:**
   * Utilizar clases de modelo con campos `final`.
   * Implementar constructores nombrados para deserialización segura (`factory Model.fromJson(Map<String, dynamic> json)`) y serialización (`Map<String, dynamic> toJson()`).
   * Manejar de forma nula-segura (`null safety`) los tipos devueltos por la base de datos Supabase.
3. **No Suponer Lógica No Definida:**
   * Si una funcionalidad, regla de cálculo de precios, pasarela de pago o integración externa no está especificada en `docs/`, consultar antes de asumir o simularla limpiamente mediante contratos/interfaces mock.
4. **Respeto a la Identidad Visual y Experiencia:**
   * Priorizar una navegación clara, minimalista y adaptada a la venta de productos frescos y a la agilidad operativa.
   * Mantener consistencia en temas (colores, tipografía y espaciados).
5. **Calidad de Código y Documentación:**
   * Preservar los comentarios existentes.
   * Ejecutar análisis estático con `flutter analyze` y asegurar ausencia de advertencias o errores.

---

## 5. Comandos de Referencia

Ejecutar estos comandos desde el directorio `nevarapp/`:

```powershell
# Obtener dependencias
flutter pub get

# Ejecutar análisis estático
flutter analyze

# Ejecutar pruebas unitarias / de widgets
flutter test

# Ejecutar la aplicación en modo desarrollo
flutter run
```

---

## 6. Referencias Documentales
* [Contexto de la Aplicación](file:///D:/Estudio/Universidades/Icesi/5%20Semestre/Seminario%20en%20Ingenieria%20de%20software/Proyecto/NevaraFresh_aplicaci-nFrontend/nevarapp/docs/Context.md)
* [Propuesta Base de Datos Supabase](file:///D:/Estudio/Universidades/Icesi/5%20Semestre/Seminario%20en%20Ingenieria%20de%20software/Proyecto/NevaraFresh_aplicaci-nFrontend/nevarapp/docs/propuesta_base_de_datos_supabase_neverafresh%20(1).md)
