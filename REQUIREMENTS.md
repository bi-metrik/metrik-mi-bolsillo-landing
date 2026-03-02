# Mi Bolsillo Landing — Sprint 1 Requirements

**Cliente:** Interno — MéTRIK Personas (B2C)
**Tipo:** Página Web (Landing pre-lanzamiento)
**Sprint:** 1 — Refinar + Waitlist + Deploy
**Fecha:** 01/03/2026
**Status:** Borrador

---

## 1. Problema a Resolver

Mi Bolsillo necesita una landing page en producción para capturar emails de la lista de espera antes del lanzamiento (junio 2026). Existe un HTML v3 funcional que requiere refinamiento visual, conexión a backend para persistir emails, y deploy a producción en metrikbolsillo.co.

---

## 2. Entregables del Sprint

- [ ] Landing page refinada visualmente (con dirección de Ren)
- [ ] Formularios de waitlist conectados a Supabase (proyecto nuevo)
- [ ] Favicon con isotipo Mb
- [ ] OG image (1200x630) para compartir en redes
- [ ] Deploy en Vercel con dominio metrikbolsillo.co
- [ ] Repo en GitHub (metrik360 org)

---

## 3. Usuarios

| Usuario | Rol | Qué hace con esto | Frecuencia |
|---------|-----|-------------------|------------|
| Independiente colombiano 25-45 | Prospecto | Ve la landing, entiende el producto, deja su email | Una vez |
| Mauricio | Owner | Revisa emails capturados en Supabase | Semanal |

---

## 4. Datos

**Fuente:** Supabase (proyecto nuevo para Mi Bolsillo)
**Tabla:** `waitlist`
**Campos:** `id`, `email`, `source` (hero/waitlist), `created_at`
**Actualización:** Tiempo real (cada submit)

---

## 5. Diseño

**Colores:** Negro Carbón #1A1A1A, Verde Métrica #10B981, Fondo #F5F4F2
**Tipografía:** Montserrat (principal), DM Serif Display (evaluar para H1 hero — propuesta Ren)
**Logo:** Isotipo Mb + logo MéTRIK en footer
**Referencia:** HTML v3 existente (src/index.html)

**Secciones:**
1. Nav (marca Mb + CTA)
2. Hero (claim + form + chat animado)
3. Cómo funciona (3 pasos)
4. Por qué WhatsApp (comparativa + métricas)
5. Pricing (Free / Pro / Pro Anual)
6. Waitlist (CTA principal)
7. Backed by MéTRIK
8. Footer

**Assets pendientes:**
- Favicon (16x16, 32x32, apple-touch-icon 180x180)
- OG image 1200x630

---

## 6. Funcionalidades

### Waitlist form
- Qué hace: Captura email y lo persiste en Supabase
- Validaciones: Email válido, no duplicados (upsert)
- Campos: email, source (hero/waitlist), created_at
- Feedback: Animación de confirmación (ya existe en v3)

### Chat animado
- Qué hace: Simula conversación de WhatsApp mostrando flujo de uso
- Estado: Funcional en v3, no requiere cambios

### Contador de cupos
- Qué hace: Muestra cupos madrugadores restantes
- Estado: Estático en v3 (hardcoded 73). Decisión: dejar estático en S1.

---

## 7. Criterios de Aceptación

- [ ] Landing carga en metrikbolsillo.co
- [ ] Formularios persisten email en Supabase
- [ ] No hay duplicados en la tabla waitlist
- [ ] Favicon Mb visible en browser tab
- [ ] OG image aparece al compartir URL
- [ ] Chat animado funciona sin errores
- [ ] Responsive (mobile, tablet, desktop)
- [ ] 0 errores consola
- [ ] Lighthouse Performance > 90

---

## 8. Fuera de Alcance

- Analytics (GA4/Pixel) — Sprint 2
- A/B testing de copy — Sprint 2
- Contador dinámico de cupos (basado en registros reales) — Sprint 2
- Redirects de dominios alternativos (mibolsillo.com.co, mi-bolsillo.co) — Sprint 2
- Integración con email marketing (Resend, Mailchimp) — Sprint 2

---

## 9. Validación

- [ ] Mauricio aprobó
- Fecha: ___

---

*Template MéTRIK v2*
