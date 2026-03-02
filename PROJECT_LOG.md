# Mi Bolsillo Landing — Project Log

## Info General

| Campo | Valor |
|-------|-------|
| **Cliente** | Interno — MéTRIK Personas |
| **Tipo** | Página Web (Landing pre-lanzamiento) |
| **Inicio** | 01/03/2026 |
| **URL Producción** | https://metrikbolsillo.co (DNS pendiente: A → 76.76.21.21) |
| **URL Vercel** | https://metrik-mi-bolsillo-landing.vercel.app |
| **Repositorio** | https://github.com/bi-metrik/metrik-mi-bolsillo-landing |

---

## Estado Actual

| Campo | Valor |
|-------|-------|
| **Sprint** | 1 |
| **Fase** | Deliver |
| **Status** | Esperando QA |

---

## Historial de Sprints

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
