#set text(
  font: "ITC Avant Garde Gothic",
  lang: "es",
  weight: "regular",
  size: 11pt,
)

#set page(
  paper: "us-letter",
  margin: (left: 3cm, top: 2.5cm, right: 2.5cm, bottom: 2.5cm),
)

#set par(justify: true, leading: 1.4em)
#set heading(numbering: "1.")
#set list(indent: 1.5em)

#align(center)[
  #text(size: 20pt, weight: "bold")[Acuerdo de Prestación de Servicios de Software] \
  #v(0.5em)
  #text(size: 14pt)[Sistema de Punto de Venta e Inventario (Modelo Suscripción)] \
  #v(2em)
]

Este documento establece los términos y condiciones para el desarrollo, implementación y mantenimiento del Sistema de Punto de Venta e Inventario, acordado entre el Desarrollador y el Cliente.

= Alcance del Proyecto
El desarrollador proporcionará acceso y mantenimiento a un Sistema de Punto de Venta e Inventario diseñado para un uso exclusivamente interno y empresarial. El sistema incluye:
- Actualizaciones de inventario en tiempo real.
- Punto de venta (escaneo de códigos de barras o ingreso manual para modificar el inventario de un producto).
- Registro histórico de compras y ventas.
- Disponibilidad en plataformas iOS, Android y Web.

= Modelo de Inversión
Bajo el modelo de Suscripción Micro-SaaS, el cliente no asume el costo total de desarrollo, sino una tarifa mensual que cubre el uso del sistema, el alojamiento en la nube y el mantenimiento.
- *Mensualidad:* \$400.00 MXN.
- El primer pago se realizará al momento de entregar el sistema funcional en el punto de venta.

= Tiempos de Entrega
- *Tiempo estimado de desarrollo:* de 3 a 4 semanas a partir de la firma de este acuerdo y la recepción del catálogo inicial.

= Requisitos para Iniciar
Para comenzar la configuración del sistema, el cliente deberá proporcionar:
+ Un listado en Excel con los productos principales, incluyendo: Nombre del producto y Precio de Venta.
+ Aprobación y firma de este documento.

= Límite de Desarrollo (Soporte AS-IS)
La tarifa mensual cubre exclusivamente el sistema de Punto de Venta e Inventario tal como fue construido y acordado. Cualquier solicitud de desarrollo a medida (ej. integración con WhatsApp, módulo de nóminas) será facturada de manera independiente por hora de desarrollo.

#v(4em)
#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  align(center)[
    \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ \
    *Firma del Cliente* \
    Brenda / Representante
  ],
  align(center)[
    \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ \
    *Firma del Desarrollador* \
    Maximiliano Gonzalez Calzada
  ],
)
