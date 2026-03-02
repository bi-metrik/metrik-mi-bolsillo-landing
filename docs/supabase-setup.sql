-- Mi Bolsillo — Supabase Setup
-- Ejecutar en el SQL Editor del proyecto nuevo de Supabase

-- 1. Tabla waitlist
CREATE TABLE public.waitlist (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  source TEXT NOT NULL DEFAULT 'hero' CHECK (source IN ('hero', 'waitlist')),
  created_at TIMESTAMPTZ DEFAULT now() NOT NULL
);

-- 2. Indice para busquedas por email
CREATE INDEX idx_waitlist_email ON public.waitlist(email);

-- 3. RLS: habilitar
ALTER TABLE public.waitlist ENABLE ROW LEVEL SECURITY;

-- 4. Policy: cualquiera puede insertar (anon)
CREATE POLICY "Allow anonymous inserts" ON public.waitlist
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- 5. Policy: solo service_role puede leer (dashboard Supabase)
CREATE POLICY "Only service role can read" ON public.waitlist
  FOR SELECT
  TO service_role
  USING (true);

-- 6. Vista rapida para contar registros
CREATE VIEW public.waitlist_stats AS
SELECT
  COUNT(*) AS total,
  COUNT(*) FILTER (WHERE source = 'hero') AS from_hero,
  COUNT(*) FILTER (WHERE source = 'waitlist') AS from_waitlist,
  MIN(created_at) AS first_signup,
  MAX(created_at) AS last_signup
FROM public.waitlist;
