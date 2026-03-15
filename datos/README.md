## Transformación XSLT

El archivo XML `gta.xml` se transforma a HTML utilizando la hoja de estilo:

xslt/gta-to-html.xsl

Esta transformación genera la página:

catalogo.html

La página muestra:
- resumen de videojuegos
- listado de juegos
- información de precio, stock y plataformas

Funciones XSLT utilizadas:
- template
- apply-templates
- for-each
- value-of
- sort
- if
- choose
- funciones XPath como count()