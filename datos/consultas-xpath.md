# Consultas XPath del catálogo de videojuegos

## 1. Seleccionar todos los juegos
XPath:
/catalogo/juegos/juego

Explicación:
Selecciona todos los elementos juego del catálogo.

---

## 2. Seleccionar todos los títulos de juegos
XPath:
/catalogo/juegos/juego/titulo

Explicación:
Obtiene los títulos de todos los videojuegos.

---

## 3. Juegos disponibles
XPath:
/catalogo/juegos/juego[@disponible='true']

Explicación:
Selecciona todos los juegos que están disponibles.

---

## 4. Juegos destacados
XPath:
/catalogo/juegos/juego[@destacado='true']

Explicación:
Selecciona los juegos marcados como destacados.

---

## 5. Juegos con precio mayor a 50
XPath:
/catalogo/juegos/juego[precio>50]

Explicación:
Filtra los videojuegos que cuestan más de 50.

---

## 6. Juegos de 2022
XPath:
/catalogo/juegos/juego[anioLanzamiento=2022]

Explicación:
Selecciona los videojuegos lanzados en 2022.

---

## 7. Contar juegos disponibles
XPath:
count(/catalogo/juegos/juego[@disponible='true'])

Explicación:
Cuenta el número de juegos disponibles.

---

## 8. Juegos con plataforma PC
XPath:
/catalogo/juegos/juego[plataformas/plataforma='PC']

Explicación:
Selecciona los juegos disponibles en PC.

---

## 9. Primer juego del catálogo
XPath:
/catalogo/juegos/juego[1]

Explicación:
Selecciona el primer videojuego listado.

---

## 10. Último juego del catálogo
XPath:
/catalogo/juegos/juego[last()]

Explicación:
Selecciona el último videojuego del catálogo.