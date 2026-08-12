# Decisiones — Mi Bolsillo Landing

| Fecha | Decision | Contexto |
|-------|----------|----------|
| 2026-03-01 | HTML estatico sin framework | Velocidad de carga, simplicidad, sin dependencias. Todo inline en un solo archivo. |
| 2026-03-01 | Vercel para hosting | Deploy instantaneo, dominio facil, gratis para sitios estaticos. |
| 2026-03-01 | Supabase para waitlist | Consistente con stack del producto Mi Bolsillo. RLS para seguridad. |
| 2026-03-01 | Montserrat como unica tipografia | Per manual de marca MéTRIK v5.0. Sin fuentes secundarias. |
| 2026-03-11 | Crear nuevo proyecto Vercel | El proyecto anterior `metrik-mibolsillo` tenia template Next.js por error y fue eliminado accidentalmente al intentar desasociar dominio. Se creo `metrik-mi-bolsillo-landing` limpio. |
| 2026-03-11 | 4 planes de pricing | Free + Personal + Mi Negocio + Mi Negocio+ para cubrir desde prueba hasta negocio completo con empleados. Alineado con features reales del producto. |
| 2026-03-11 | Landing como documentacion del producto | Cada feature card incluye ejemplo de chat real. Quien quiera conocer las funciones lo encuentra en lenguaje natural sin PDF ni docs separados. Propuesto por Hana (process optimizer). |
| 2026-03-11 | Producto lowercase en lockups | "bolsillo" en minuscula per manual de marca v5.0: MéTRIK (Bold 700) + producto (Light 300 lowercase). Consistente con one, clarity, analytics, projects. |
| 2026-03-11 | Legal pages como HTML standalone | Terminos y politica de datos como archivos .html independientes con estilos inline. Sin compartir CSS con el landing. Simplicidad + independencia. |
| 2026-03-11 | Chat demos expandidos a ~50 mensajes | Demos cortos no mostraban ni el 1% del potencial. Se expandieron para cubrir: onboarding, registro texto/voz, multiples gastos, presupuestos, prestamos, correccion, alertas, resumen semanal, exportacion (personal); catalogo, ventas, fiados, abonos, proveedores, inventario, clientes, empleados, P&L, cierre diario, punto de equilibrio, recordatorios de cobro, exportacion contable (negocio). |
| 2026-03-11 | Tipografia per manual v5.0 | H1=ExtraBold 800, H2=Bold 700, H3=SemiBold 600, Body=Regular 400, CTA=SemiBold 600, Labels=Bold 700. Corregido de pesos 900 que se estaban usando antes. |
| 2026-03-11 | Isotipo en avatar del phone | Avatar del chat usa isotipo formal: M (Bold 700) + b subscript (Regular 400) + linea verde cubriendo ambos. Per especificacion de isotipos de linea del manual. |
