## Estructura de Datos XML

### Descripción
Este proyecto utiliza XML para estructurar un catálogo de videojuegos reales
disponibles en la tienda NextLevel.

### Archivos
- `/datos/catalogo-juegos.xml` → Archivo principal con 20 videojuegos
- `/datos/catalogo-juegos.dtd` → Validador DTD
- `/datos/catalogo-juegos.xsd` → Schema XSD con restricciones avanzadas
- `/datos/validacion.md` → Documentación de validación

### Estructura principal

catalogo
 ├── tienda
 └── juegos
      └── juego
           ├── titulo
           ├── anioLanzamiento
           ├── precio
           ├── formato
           ├── plataformas
           ├── stock
           └── fechaRegistro

### Validación
Ver documentación completa en `validacion.md`
