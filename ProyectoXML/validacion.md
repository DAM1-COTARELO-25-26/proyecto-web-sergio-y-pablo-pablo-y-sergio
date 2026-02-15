# Validación del archivo catalogo-juegos.xml

## 1. Herramientas utilizadas

### Validación DTD
- Herramienta: xmllint
- Entorno: Terminal Linux / Git Bash

### Validación XSD
- Herramienta: xmllint
- Entorno: Terminal Linux / Git Bash

---

## 2. Proceso de validación

### Validación contra DTD

**Comando ejecutado:**

xmllint --valid --noout datos/catalogo-juegos.xml

Resultado:
Validación completada sin errores.

Captura incluida en:
../img/validacion-dtd.png

---

## 3. Validación contra XSD

**Comando ejecutado:**

xmllint --schema datos/catalogo-juegos.xsd --noout datos/catalogo-juegos.xml

Resultado:
catalogo-juegos.xml validates

Captura incluida en:
../img/validacion-xsd.png

---

## 4. Decisiones de diseño

### Elementos vs atributos

Se utilizaron atributos para:
- id (identificador único)
- destacado y disponible (booleanos)
- moneda (valor fijo EUR)

Se utilizaron elementos para:
- Datos extensos o estructurados (titulo, plataformas, formatos)
- Valores numéricos y fechas
- Listas (plataformas)

### Restricciones XSD aplicadas

1. Restricción de año (1970–2035) para evitar fechas irreales.
2. Restricción de precio (0–200€) con 2 decimales.
3. Patrón en ID (J001, J002…) mediante expresión regular.
4. Enumeración en formato (Digital o Fisico).
5. Longitud mínima y máxima en título.
6. Stock como positiveInteger.

---

## 5. Conclusiones

El archivo XML valida correctamente tanto con DTD como con XSD.
Se aplicaron múltiples restricciones avanzadas para garantizar coherencia
y calidad en los datos del catálogo.
