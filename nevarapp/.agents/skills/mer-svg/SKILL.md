---
name: mer-svg
description: Genera o actualiza el diagrama entidad-relación (MER) de la aplicación de domicilios de NevaraFresh en formato SVG. Úsala cuando soliciten crear, visualizar o modificar el modelo gráfico de datos de esta aplicación.
---

# MER de NevaraFresh en SVG

## Objetivo

Generar o actualizar una representación gráfica del modelo entidad-relación (MER) correspondiente a la aplicación de domicilios de NevaraFresh, respetando la documentación del proyecto y las convenciones visuales establecidas.

## Pasos

1. Lee `AGENTS.md` para comprender el contexto general, la arquitectura y las restricciones del proyecto.
2. Lee `nevarapp/docs/Context.md` para identificar el alcance funcional de la aplicación de domicilios.
3. Lee `nevarapp/docs/propuesta_base_de_datos_supabase_neverafresh (1).md` para consultar las entidades, atributos, claves y relaciones documentadas.
4. Si existe una versión anterior del diagrama, revísala para conservar las decisiones válidas y evitar cambios innecesarios.
5. Si existe una referencia de estilo gráfico, consúltala antes de generar el diagrama.
6. Identifica las entidades, sus atributos, las claves primarias (PK), las claves foráneas (FK) y las relaciones con sus respectivas cardinalidades.
7. Verifica que el modelo representado corresponda al alcance de la aplicación de domicilios. No incorpores entidades de otros sistemas operativos o administrativos sin justificación documental.
8. Genera o actualiza el archivo `nevarapp/docs/mer.svg`, utilizando SVG válido y una distribución visual legible.
9. Comprueba que el diagrama sea coherente con las fuentes consultadas y que el archivo pueda visualizarse correctamente.

## Reglas

- Utiliza la documentación del proyecto como fuente de verdad. No inventes entidades, atributos, relaciones ni restricciones.
- Distingue el modelo general de datos de NevaraFresh del modelo específico de la aplicación de domicilios.
- Si el esquema documentado no define suficientemente una relación o una regla, no la presentes como un hecho confirmado.
- Mantén identificables las entidades, los atributos, las claves y las cardinalidades.
- Evita cruces innecesarios entre relaciones y superposiciones de texto.
- Si el modelo cambia, actualiza el diagrama para reflejar la documentación vigente.
- No modifiques el esquema de Supabase ni el código de la aplicación como parte de esta tarea.
- Si falta información indispensable o existen contradicciones entre los documentos, indícalo antes de asumir una solución.

## Resultado

El archivo generado debe quedar en `nevarapp/docs/mer.svg`.

Al finalizar, informa brevemente qué entidades y relaciones se representaron, qué archivo se creó o modificó y si quedaron aspectos del modelo pendientes de definición.