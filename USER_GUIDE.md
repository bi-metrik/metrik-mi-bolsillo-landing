# Mi Bolsillo Landing — Guía

## URL

- **Producción:** https://metrikbolsillo.co
- **Repositorio:** https://github.com/metrik360/metrik-mi-bolsillo-landing

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
└── index.html    ← Landing page completa (HTML + CSS + JS inline)
assets/
├── favicon.svg   ← Isotipo Mb
└── og-image.png  ← Open Graph image 1200x630
```

## Cómo hacer cambios

1. Editar `src/index.html`
2. Push a `main`
3. Vercel detecta el push y hace deploy automático

## Waitlist

Los emails se guardan en Supabase:
- **Tabla:** `waitlist`
- **Campos:** id, email, source (hero/waitlist), created_at
- **Dashboard:** [link Supabase pendiente]

---

*Última actualización: 01/03/2026*
