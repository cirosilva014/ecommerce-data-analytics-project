# 📊 Dashboard Automatizado de Control de Ventas e Indicadores Comerciales (E-Commerce)

##  Descripción del Proyecto
Diseño e implementación de un flujo de datos de punta a punta (End-to-End) para el monitoreo y análisis de KPIs de un negocio de comercio electrónico ficticio. El objetivo principal fue centralizar información relacional dispersa, estructurar un modelo de datos robusto con buenas prácticas de BI y automatizar la visualización de métricas financieras y operativas clave para la toma de decisiones estratégicas.

---

##  Arquitectura de Datos & Tecnologías Utilizadas

* **SQL (SQLite):** Creación, estructuración y normalización de la base de datos relacional (Tablas de Hechos y Dimensiones para Clientes, Productos y Ventas). Extracción y consolidación de datos históricos mediante consultas de agregación y unificación (`INNER JOIN`) utilizando la herramienta `sqliteviz`.
* **Google Sheets:** Implementación como repositorio en la nube conectado vía Web API. Utilizado para la auditoría, limpieza de formatos numéricos de moneda y el enriquecimiento temporal de datos cronológicos.
* **Power BI Desktop:** Conexión en vivo al origen web y desarrollo de un modelo estrella eficiente mediante la creación de una **Tabla de Calendario dedicada** vinculada en la vista de modelo. Desarrollé métricas de negocio avanzadas y dinámicas mediante expresiones **DAX** (`SUM`, `DISTINCTCOUNT` y divisiones seguras con `DIVIDE`).

---

##  Indicadores Clave de Rendimiento (KPIs) Implementados

1. **Total Ingresos:** Volumen de facturación global del periodo analizado mediante la fórmula:
   ```dax
   Total Ingresos = SUM('ventas_ecommerce'[TotalVenta])
   ```
2. **Unidades Vendidas:** Rotación física acumulada de inventario por líneas de producto.
3. **Ticket Promedio:** Margen de consumo medio por cada transacción comercial única efectuada en la plataforma, calculada de forma segura para evitar divisiones por cero:
   ```dax
   Ticket Promedio = DIVIDE([Total Ingresos], DISTINCTCOUNT('ventas_ecommerce'[VentaID]), 0)
   ```

---

##  Criterios de Diseño Visual & UI/UX

El tablero interactivo fue diseñado siguiendo un enfoque ejecutivo de alto impacto corporativo:
* **Tema Oscuro Unificado:** Paleta de colores sobria orientada a entornos corporativos que disminuye la fatiga visual y resalta los datos analíticos.
* **Estructura en Bloques Neomórficos:** Contenedores simétricos con relieve sutil y bordes redondeados (10px) que aíslan los elementos visuales emulando una aplicación moderna.
* **Diseño Scannable:** Distribución lógica de izquierda a derecha. Ubicación estratégica de indicadores macro en la cabecera superior y desgloses de rendimiento por categorías, distribución geográfica por países y tendencias de estacionalidad por meses en el cuerpo central.

---

##  Principales Conclusiones del Análisis (Insights Comerciales)

* **Concentración en Tecnología:** La categoría de *Tecnología* (Laptops y Monitores) representa el principal motor de ingresos de la organización, demostrando que el crecimiento depende de artículos premium de alto valor unitario en lugar de transacciones masivas de bajo margen.
* **Mercado Líder (Argentina):** Tras consolidar el registro de órdenes corporativas mayoristas, el mercado argentino se posiciona como el territorio con mayor facturación acumulada del periodo analizado, validando la necesidad de expandir la estrategia comercial en este segmento.
* **Estabilidad Operativa:** El ticket promedio sostenido por encima de los **$1.150** refleja un posicionamiento de marca sólido y un comportamiento de compra saludable que facilita la previsión del flujo de caja futuro.
