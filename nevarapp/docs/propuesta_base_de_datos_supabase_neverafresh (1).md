# Modelo de Datos Supabase - Sistema Operativo y Comunitario NeveraFresh

Para adaptar la red colaborativa de reabastecimiento entre las **85 tiendas de NeveraFresh**, este modelo de datos soporta tanto la comunicación interna (mensajería y publicaciones de estado/mermas entre administradores de tienda y administradores centrales) como el perfilado de usuarios.

---

## 1. Estructura de Entidades

### `usuarios`
Representa al personal operativo (administradores de tienda, administradores logísticos, conductores de domicilios).

* **id** (PK, UUID)
* **nombre** (TEXT) - Nombre completo del colaborador.
* **usuario** (TEXT, UNIQUE) - Nombre de usuario para ingreso a la app.
* **cargo** (TEXT) - Ej. *"Gerente de Tienda"*, *"Logística / Domiciliario"*, *"Administrador Central"*.
* **correo** (TEXT, UNIQUE) - Correo corporativo.
* **ciudad** (TEXT) - Ciudad de la sucursal asignada.
* **foto_url** (TEXT) - URL del avatar o foto de perfil.

### `publicaciones`
Novedades de la red de tiendas, avisos de excedentes/mermas, alertas de desabastecimiento o comunicados de la app.

* **id** (PK, UUID)
* **usuario_id** (FK a `usuarios.id`) - Usuario que realiza la publicación.
* **texto** (TEXT) - Contenido del mensaje o alerta operativa.
* **fecha** (TIMESTAMP WITH TIME ZONE) - Fecha de creación.

### `seguidores`
Relación de seguimiento entre usuarios (por ejemplo, gerentes que siguen a tiendas clave o coordinadores que siguen a ciertos domiciliarios).

* **id** (PK, UUID)
* **seguidor_id** (FK a `usuarios.id`) - Usuario que sigue.
* **seguido_id** (FK a `usuarios.id`) - Usuario seguido.

### `mensajes`
Chat directo e interconectado entre gerentes de tienda y domiciliarios para la coordinación del reabastecimiento en tiempo real.

* **id** (PK, UUID)
* **emisor_id** (FK a `usuarios.id`) - Emisor del mensaje.
* **receptor_id** (FK a `usuarios.id`) - Destinatario del mensaje.
* **texto** (TEXT) - Contenido de la comunicación directa.
* **hora** (TIMESTAMP WITH TIME ZONE) - Marca de tiempo del envío.

---

## 2. Relaciones

* **Un usuario tiene muchas publicaciones:** La clave foránea `usuario_id` en la tabla `publicaciones` referencia al `id` del usuario creador (`usuarios.id`).
* **Un usuario tiene muchos seguidores:** La tabla `seguidores` conecta `seguidor_id` con `seguido_id` (ambas FKs apuntando a `usuarios.id`).
* **Un usuario tiene muchos mensajes:** La tabla `mensajes` gestiona las interacciones enviadas (`emisor_id`) y recibidas (`receptor_id`), ambas vinculadas a `usuarios.id`.

