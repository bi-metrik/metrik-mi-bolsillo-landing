# Mi Bolsillo Landing — Guía

## URL

- **Producción:** https://metrikbolsillo.co
- **Vercel preview:** https://metrik-mi-bolsillo-landing.vercel.app
- **Repositorio:** https://github.com/bi-metrik/metrik-mi-bolsillo-landing

## Stack

| Componente | Tecnología |
|-----------|-----------|
| Frontend | HTML + CSS + Vanilla JS |
| Backend | Supabase (waitlist) |
| Deploy | Vercel (auto-deploy desde main) |
| Dominio | metrikbolsillo.co |

## Estructura

```
src/
├── index.html     ← Landing page completa (HTML + CSS + JS inline)
├── favicon.svg    ← Isotipo Mb
└── og-image.svg   ← Open Graph image source (convertir a PNG 1200x630)
docs/
└── supabase-setup.sql ← Schema para crear la tabla waitlist
```

## Cómo hacer cambios

1. Editar `src/index.html`
2. `git add . && git commit -m "desc" && git push origin main`
3. Ejecutar `vercel --prod` para deploy (auto-deploy pendiente de configurar en dashboard)

## Setup Supabase (una sola vez)

1. Crear proyecto nuevo en https://supabase.com/dashboard
2. Ir a SQL Editor y ejecutar `docs/supabase-setup.sql`
3. Copiar el **Project URL** y **anon key** de Settings → API
4. En `src/index.html`, reemplazar:
   - `__SUPABASE_URL__` → tu Project URL
   - `__SUPABASE_ANON_KEY__` → tu anon key
5. Push y deploy

## Waitlist

Los emails se guardan en Supabase:
- **Tabla:** `waitlist`
- **Campos:** id, email, source (hero/waitlist), created_at
- **Dashboard:** [link Supabase pendiente]

---

*Última actualización: 01/03/2026*
