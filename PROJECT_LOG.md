# Mi Bolsillo Landing — Project Log

## Info General

| Campo | Valor |
|-------|-------|
| **Cliente** | Interno — MéTRIK Personas |
| **Tipo** | Página Web (Landing de conversión directa) |
| **Inicio** | 01/03/2026 |
| **URL Producción** | https://metrikbolsillo.co (live) |
| **URL Vercel** | https://metrik-mi-bolsillo-landing.vercel.app |
| **Repositorio** | https://github.com/bi-metrik/metrik-mi-bolsillo-landing |

---

## Estado Actual

| Campo | Valor |
|-------|-------|
| **Sprint** | 2 |
| **Fase** | Deliver |
| **Status** | Live en metrikbolsillo.co |

---

## Historial de Sprints

### Sprint 2: Pivote a conversión directa (03/06/2026)

| Campo | Valor |
|-------|-------|
| Entregables | Eliminada la waitlist (formularios, contador, backend Supabase con placeholders que nunca capturó); precio único Personal $20.000/mes (sin earlybird ni Pro Anual); CTA único → chat WhatsApp del bot (wa.me/573186953502) que registra y vincula a la pasarela; tagline "Claridad para decidir" |
| Deploy | Auto vía Git push → metrikbolsillo.co (live y verificado) |
| Commit | `0d48c41` |

**Notas:** Cambio de modelo de "captar lista de espera" a "conversión directa al producto". El registro y pago ocurren en el chat (bot Mi Bolsillo), no en la landing. Alineado con la focalización 100% personal del producto.

**Pendientes técnicos:** (1) `.vercel/project.json` tiene orgId obsoleto → el deploy CLI falla; los deploys funcionan vía Git push. Re-linkear con `vercel link` para habilitar CLI. (2) Alias `metrik-mi-bolsillo-landing.vercel.app` quedó en versión vieja (el dominio real metrikbolsillo.co sí está actualizado). (3) OG image referencia `og-image.png` pero solo existe `.svg` → sin preview al compartir. (4) Rutas /terminos y /politica-de-datos en el dominio (hoy el rewrite manda todo a index.html).

### Sprint 1: Refinar + Waitlist + Deploy

| Campo | Valor |
|-------|-------|
| Fechas | 01/03/2026 → en curso |
| Entregables | Landing refinada, waitlist backend, favicon, OG image, deploy Vercel |
| URL | https://metrik-mi-bolsillo-landing.vercel.app |
| QA | Esperando |

**Notas:** Proyecto inicia con HTML v3 funcional entregado por Mauricio. Dirección visual con Ren. Backend waitlist en Supabase nuevo.

---

## Backlog

- [ ] Analytics (GA4 / Pixel)
- [ ] A/B testing de copy hero
- [ ] Contador dinámico de cupos madrugadores
- [ ] Redirects dominios alternativos (mibolsillo.com.co, mi-bolsillo.co)
- [ ] Integración email marketing (Resend)
- [ ] DM Serif Display en H1 hero (evaluar con Ren)

---

## Decisiones Importantes

| Fecha | Decisión | Razón |
|-------|----------|-------|
| 01/03 | Supabase nuevo (no reusar metrik-one) | Separar productos — Mi Bolsillo es B2C independiente |
| 01/03 | Deploy en Vercel (no GitHub Pages) | Dominio custom + static hosting profesional |
| 01/03 | Repo en bi-metrik (no metrik360) | Permisos insuficientes en org metrik360, transferir después |
| 01/03 | Waitlist via REST API directo (no Edge Functions) | Landing es HTML puro, fetch() al REST endpoint de Supabase |
| 01/03 | Analytics fuera de Sprint 1 | Foco en tener la landing live primero |

---

## Contactos

| Rol | Nombre | Contacto |
|-----|--------|----------|
| Owner | Mauricio Moreno | mauricio.moreno@metrik.com.co |

---

*Última actualización: 01/03/2026*
