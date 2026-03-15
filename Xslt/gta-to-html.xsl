<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Catálogo de videojuegos</title>
                <link rel="stylesheet" href="index.css"/>
            </head>
            <body>
                <header>
                    <h1>Catálogo de videojuegos</h1>
                    <p>
                        <xsl:text>Tienda: </xsl:text>
                        <xsl:value-of select="catalogo/tienda/@nombre"/>
                    </p>
                </header>

                <main>
                    <section>
                        <h2>Resumen</h2>
                        <p>Total de juegos: <xsl:value-of select="count(catalogo/juegos/juego)"/></p>
                        <p>Juegos disponibles: <xsl:value-of select="count(catalogo/juegos/juego[@disponible='true'])"/></p>
                        <p>Juegos destacados: <xsl:value-of select="count(catalogo/juegos/juego[@destacado='true'])"/></p>
                    </section>

                    <section>
                        <h2>Listado de juegos</h2>
                        <xsl:apply-templates select="catalogo/juegos/juego">
                            <xsl:sort select="titulo" order="ascending"/>
                        </xsl:apply-templates>
                    </section>
                </main>

                <footer>
                    <p>Página generada desde XML con XSLT</p>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="juego">
        <article>
            <h3><xsl:value-of select="titulo"/></h3>
            <p><strong>ID:</strong> <xsl:value-of select="@id"/></p>
            <p><strong>Año:</strong> <xsl:value-of select="anioLanzamiento"/></p>
            <p><strong>Precio:</strong> <xsl:value-of select="precio"/> <xsl:value-of select="precio/@moneda"/></p>
            <p><strong>Stock:</strong> <xsl:value-of select="stock"/></p>

            <p>
                <strong>Estado:</strong>
                <xsl:choose>
                    <xsl:when test="@disponible='true'">Disponible</xsl:when>
                    <xsl:otherwise>No disponible</xsl:otherwise>
                </xsl:choose>
            </p>

            <p><strong>Plataformas:</strong></p>
            <ul>
                <xsl:for-each select="plataformas/plataforma">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>

            <xsl:if test="@destacado='true'">
                <p><strong>Juego destacado</strong></p>
            </xsl:if>
        </article>
    </xsl:template>

</xsl:stylesheet>