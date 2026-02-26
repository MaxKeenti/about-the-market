#set text(
  font: "ITC Avant Garde Gothic",
  lang: "es",
  weight: "semibold",
)

#set page(
  paper: "us-letter",
  margin: (left: 3cm, top: 2.5cm, right: 2.5cm, bottom: 2.5cm),
  numbering: "1",
)

#set par(justify: true, leading: 1.4em)
#set heading(numbering: "1.")
#set list(indent: 1.5em)

#align(center)[
  #text(size: 24pt, weight: "bold")[Propuesta de Sistema de Punto de Venta e Inventario] \
  #v(1em)
  #text(size: 14pt)[Documento de Arquitectura y Estrategia Comercial] \
  #v(2em)
]

= Requerimientos del Sistema

== Alcance
- Gestión cuantitativa de inventario.
- Actualizaciones de inventario en tiempo real.
- Registro histórico de compras y ventas.
- Punto de venta (escaneo de códigos de barras o ingreso manual para modificar el inventario de un producto).
- Uso exclusivamente interno y empresarial (el sistema será utilizado únicamente por los empleados de la empresa).

== Objetivo
El objetivo final es tener un control preciso sobre las entradas y salidas para determinar estrategias de ventas apropiadas para cada temporada y, de esta manera, lograr un mejor flujo de caja.

== Plataformas Requeridas
- iOS
- Android
- Web

= Enfoque Técnico y Arquitectura

== 1. Frontend: Aplicación Multiplataforma (Capacitor + Svelte)
- *Tecnología:* Capacitor combinado con *Svelte* y TypeScript.
- *Justificación:* Capacitor nos permite construir una única aplicación web responsiva y empaquetarla como aplicaciones nativas para iOS y Android. Svelte proporciona un rendimiento de ejecución increíble y una experiencia de desarrollo altamente reactiva y sin código repetitivo, ideal para un entorno de punto de venta rápido.
- *Ventaja Empresarial:* Al ser una aplicación interna, podemos distribuirla directamente a través de Gestión de Dispositivos Móviles (MDM) o certificados empresariales, evitando las rigurosas revisiones de las tiendas públicas de aplicaciones (App Store / Play Store).

== 2. Base de Datos: PostgreSQL
- *Tecnología:* PostgreSQL (Base de Datos Relacional).
- *Justificación:* Para un sistema de gestión de inventario, *la integridad y consistencia transaccional son primordiales*. Si dos empleados intentan modificar el inventario al mismo tiempo, la base de datos debe registrar estas operaciones con precisión, sin pérdida de datos. Permite un modelado de datos robusto que vincula las ventas con el flujo de caja.

== 3. Backend: API Empresarial (Quarkus)
- *Tecnología:* *Quarkus* (Java/Kotlin).
- *Justificación:* Un sistema empresarial requiere alto rendimiento, tipado estricto, seguridad y escalabilidad. Quarkus está diseñado específicamente para entornos en la nube; ofrece tiempos de inicio increíblemente rápidos y un espacio de memoria extremadamente bajo en comparación con el Java tradicional, lo que lo hace muy rentable de alojar.

== 4. Estrategia de Despliegue: Plataforma en la Nube Gestionada (PaaS)
Utilizaremos una Plataforma en la Nube Gestionada (como *Railway* o *Render*) para alojar nuestra infraestructura. Este enfoque requiere cero mantenimiento de servidores (DevOps de nuestra parte).
- *Costos Estimados (Mensuales):* Al aprovechar el mínimo consumo de memoria de Quarkus y la ligereza de Svelte, podemos ejecutar todo el sistema empresarial en los niveles más económicos. El costo total de infraestructura (Base de datos + API + Web) se estima conservadoramente entre *\$15 y \$30 dólares por mes*.

= Estrategia Comercial y Precios (MXN)

Dado que el contexto es el de una microempresa, considero que la estrategia de precios se aleja de las tarifas empresariales tradicionales hacia un modelo "Micro-SaaS" o "Éxito Compartido".

A continuación, presento las opciones viables:

== Opción 1: Suscripción Micro-SaaS (Recomendada)
Este modelo trata el sistema como un servicio público vital (como el internet), con un costo tan bajo que resulta una decisión sencilla para quien lo pague.

- *Precio:* *\$300 a \$500 MXN / mes.*
- *Beneficio para la pyme:* Representa solo un ~2-3% de sus ingresos mensuales (aproximadamente). Es altamente asequible pero lo suficientemente significativo para que valoren la herramienta.
- *Beneficio para el Desarrollador:* Dado que nuestros costos reales de servidor en Railway con Quarkus rondarán los \$100 MXN al mes, esta tarifa cubre los costos del servidor y genera una ganancia pasiva.

== Opción 2: Instalación de Bajo Costo + Mantenimiento Mensual
Ideal si el enfoque es "comprar" el sistema en lugar de sentir que lo están alquilando indefinidamente.

- *Precio:*
  - *Instalación / Configuración Inicial:* *\$3,500 a \$4,000 MXN (Pago único)*
  - *Mantenimiento de Nube Mensual:* *\$150 a \$250 MXN / mes*
- *Beneficio:* Otorga una inyección de capital inicial para compensar el tiempo de configuración y capacitación, mientras que la pequeña cuota mensual cubre únicamente los costos de los servidores dependiendo del uso.

== Opción 3: Modelo de Riesgo Compartido (Asociación)
Si de momento no tienes el capital inicial pero posees un alto potencial técnico según la estacionalidad de tus ventas, puedo ofrecerte el sistema a cambio de un porcentaje.

- *Precio:* *1% a 2% del total de ventas procesadas.*
- *Beneficio:* Alinea perfectamente nuestros objetivos en conjunto. Si hoy facturan \$15,000 MXN, ganamos \$150-\$300 MXN. Si el sistema optimiza tu inventario y crecen a \$40,000 MXN, nuestro ingreso sube a \$800 MXN sin renegociar el contrato.

== Límite de Desarrollo (Soporte AS-IS)
Es fundamental establecer una cláusula de protección: las tarifas anteriores (ej. \$500 MXN/mes) incluyen *exclusivamente* el sistema de Punto de Venta e Inventario tal como fue construido y acordado. Cualquier solicitud de desarrollo a medida (ej. integración con WhatsApp, módulo de nóminas) será facturada de manera independiente por hora de desarrollo.
