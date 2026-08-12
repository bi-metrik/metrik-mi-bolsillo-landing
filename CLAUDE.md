# MéTRIK — Mi Bolsillo Landing

## Proyecto
- **Tipo:** Pagina web (landing pre-lanzamiento + legal)
- **Cliente:** Interno — MéTRIK ONE / Mi Bolsillo (B2C)
- **Stack:** HTML estatico, CSS inline, JS vanilla, Vercel (sin framework)
- **Repo:** https://github.com/bi-metrik/metrik-mi-bolsillo-landing
- **Deploy:** https://metrikbolsillo.co
- **Dominio:** metrikbolsillo.co (Vercel)
- **Vercel project:** metrik-mi-bolsillo-landing (user: bmmorenog)

## Arquitectura

Sitio estatico puro — sin build step, sin framework. Vercel sirve `src/` directamente.

### Archivos

```
src/
  index.html              — Landing principal (~88KB, todo inline)
  terminos.html           — Terminos y condiciones (Ley 1480/2011)
  politica-de-datos.html  — Politica de datos (Ley 1581/2012)
  favicon.svg             — Isotipo Mb
  og-image.svg            — Open Graph image 1200x630
docs/
  supabase-setup.sql      — DDL para tabla waitlist en Supabase
  decisions.md            — Historial de decisiones
vercel.json               — Rewrites y headers de seguridad
REQUIREMENTS.md           — Requirements Sprint 1 original
```

### Vercel config

```json
{
  "outputDirectory": "src",
  "rewrites": [
    { "source": "/terminos", "destination": "/terminos.html" },
    { "source": "/politica-de-datos", "destination": "/politica-de-datos.html" },
    { "source": "/(.*)", "destination": "/index.html" }
  ]
}
```

### Rutas

| URL | Archivo |
|-----|---------|
| `/` | `index.html` |
| `/terminos` | `terminos.html` |
| `/politica-de-datos` | `politica-de-datos.html` |
| `/*` (catch-all) | `index.html` |

## Secciones del landing (index.html)

1. **Nav** — Lockup "MéTRIK bolsillo" + links Funciones/Planes + CTA waitlist
2. **Hero** — Claim, dual CTA, oferta madrugadores con contador animado, stats
3. **Phone demo** — Toggle 3 modos (Personal / Mi Negocio / Todo junto), chat animado con skip, ~40-50 msgs por demo
4. **Como funciona** — 3 pasos
5. **Para ti (Personal)** — 6 feature cards con ejemplos de chat
6. **Para tu negocio (Business)** — Dark section, 5 tabs (Ventas, Clientes, Catalogo, Equipo, Inteligencia), ~20 cards
7. **¿Por que WhatsApp?** — Tabla comparativa + metricas
8. **Pricing** — 4 planes (Free, Personal, Mi Negocio, Mi Negocio+) + tabla expandible de funciones
9. **Waitlist** — Form email + Supabase (pendiente conectar)
10. **Backed by MéTRIK** — Lockup + tagline
11. **Footer** — Links legales + contacto

## Planes y precios

| Plan | Precio | Madrugador | Cupos | Target |
|------|--------|-----------|-------|--------|
| Free | $0 | — | — | Probar |
| Personal | $24,900/mes | $19,900/mes | 100 | Independientes |
| Mi Negocio | $39,900/mes | $29,900/mes | 50 | Ventas + clientes |
| Mi Negocio+ | $69,900/mes | $49,900/mes | 25 | Catalogo + equipo |

## Marca (per manual v5.0)

- Lockup system: MéTRIK (Bold 700) + producto lowercase (Light 300) + linea verde 2.5px
- Isotipo: M (Bold 700) + subindice (Regular 400) + linea verde
- Tipografia: Montserrat exclusiva. H1=800, H2=700, H3=600, Body=400, CTA=600, Labels=700
- Color: Negro Carbon 60%, Gris Acero 30%, Verde Metrica max 10%
- Producto siempre lowercase en lockups: "bolsillo"

## Legal

- **Terminos:** 17 secciones, cubre uso licito (L05), IA (Gemini), pagos (Wompi), eliminacion
- **Politica de datos:** 14 secciones per Ley 1581/2012, incluye tablas de datos recopilados, encargados (Meta/Google/Supabase/Wompi), derechos ARCO
- **NIT:** Pendiente de registro (placeholder en politica-de-datos.html)
- Ambas paginas revisadas por Emilio (CLO)

## Waitlist (Supabase)

- **Estado:** DDL listo en `docs/supabase-setup.sql`, NO conectado aun
- **Placeholders en index.html:** `__SUPABASE_URL__`, `__SUPABASE_ANON_KEY__`
- **Tabla:** `waitlist` (id, email, source, created_at)
- **RLS:** anon puede INSERT, solo service_role puede SELECT

## Sprint actual
- **Fase:** Build
- **Objetivo:** Landing completa como presentacion + documentacion del producto
- **Progreso:** Landing funcional y desplegada. Falta conectar waitlist a Supabase.

## Ultimo avance
**Sesion:** 2026-03-11
**Branch:** main

Que se hizo:
- Fix dominio metrikbolsillo.co (apuntaba a proyecto Vercel equivocado, se creo nuevo proyecto)
- Creacion de terminos y condiciones + politica de datos (revisados por Emilio/CLO)
- Reestructuracion completa: single-persona → dual-persona (Personal + Mi Negocio/Mi Negocio+)
- 4 planes de pricing con comparativa expandible de funciones
- Chat demo interactivo: 3 modos (Personal, Mi Negocio, Todo junto) + toggle + skip button
- Demos expandidos a ~40-50 mensajes cada uno cubriendo catalogo, fiados, inventario, P&L, empleados, prestamos, exportacion, alertas, resumen semanal
- Implementacion manual de marca v5.0: lockup system, isotipo en avatar, tipografia corregida
- Lockup aplicado en las 3 paginas (landing + terminos + politica)
- Deploy exitoso en metrikbolsillo.co

## Pendientes
- [ ] Crear proyecto Supabase para Mi Bolsillo y conectar waitlist form
- [ ] Reemplazar placeholders `__SUPABASE_URL__` y `__SUPABASE_ANON_KEY__`
- [ ] Registrar NIT y actualizar politica-de-datos.html
- [ ] Git commit de todos los cambios de esta sesion
- [ ] Analytics (GA4/Pixel) — Sprint 2
- [ ] A/B testing de copy — Sprint 2
- [ ] Integracion email marketing (Resend) — Sprint 2
- [ ] OG image actualizada (la actual es SVG placeholder)

## Decisiones clave

| Fecha | Decision | Contexto |
|-------|----------|----------|
| 2026-03-01 | HTML estatico sin framework | Velocidad de carga, simplicidad, sin dependencias |
| 2026-03-01 | Vercel para hosting | Deploy instantaneo, dominio facil, gratis |
| 2026-03-11 | Nuevo proyecto Vercel | El anterior (metrik-mibolsillo) tenia template Next.js por error |
| 2026-03-11 | 4 planes en vez de 3 | Free + Personal + Mi Negocio + Mi Negocio+ para cubrir independientes y negocios |
| 2026-03-11 | Landing como documentacion | Funciones documentadas con ejemplos de chat en lenguaje natural |
| 2026-03-11 | Producto lowercase en lockups | "bolsillo" per manual de marca v5.0 — productos siempre en minuscula |
| 2026-03-11 | Legal standalone HTML | Terminos y politica como paginas independientes con estilos inline |
| 2026-03-11 | Demos expandidos ~50 msgs | Mostrar potencial completo: catalogo, fiados, inventario, P&L, empleados |

## Contexto critico
- El proyecto Vercel anterior `metrik-mibolsillo` fue eliminado accidentalmente (solo tenia template Next.js, no habia codigo real). El codigo del producto Mi Bolsillo esta en `/Users/mauricio/Developer/metrik/activos/metrik-mibolsillo/` y su repo en GitHub intacto.
- Nada esta commiteado en esta sesion. Hay cambios significativos en index.html (+925 lineas), vercel.json, y 2 archivos nuevos (terminos.html, politica-de-datos.html).

## Notas para continuidad
Al retomar este proyecto, revisar:
1. Este archivo para contexto general
2. `docs/decisions.md` para historial completo de decisiones
3. Git log para ultimos cambios
4. `REQUIREMENTS.md` para scope original del Sprint 1
