# Hospedagem

## Recomendacao

Opcao principal para portfolio, sem Cloudflare e sem Supabase:

- Frontend: Vercel
- Backend: Oracle Cloud Always Free VM
- Banco: Aiven PostgreSQL Free

Opcao reserva:

- Frontend: Vercel ou Netlify
- Backend: Koyeb Free Web Service ou Render Free Web Service
- Banco: Neon Free

Koyeb e Render no free nao sao 24/7. Koyeb escala para zero apos 1 hora sem trafego. Render dorme apos 15 minutos sem trafego.

Nao usar Render Postgres free como banco principal, porque expira depois de 30 dias.

Documento detalhado: `deploy/plano-free-sem-cloudflare-supabase.md`.

## Variaveis backend

```env
SPRING_PROFILES_ACTIVE=prod
DATABASE_URL=
JWT_SECRET=
JWT_ACCESS_TTL_MINUTES=15
JWT_REFRESH_TTL_DAYS=7
CORS_ALLOWED_ORIGINS=https://flowdesk.vercel.app
JAVA_TOOL_OPTIONS=-XX:MaxRAMPercentage=75 -XX:+UseSerialGC
```

## Variaveis frontend

```env
VITE_API_URL=https://api.seu-dominio.com/api
```

## Dominios

Sugestao:

- `flowdesk.vitorgomes.tech`
- `flowdesk-api.vitorgomes.tech`

## Health check

Backend:

```http
GET /actuator/health
```

## Preview para portfolio

Criar usuario demo:

```text
admin@flowdesk.dev
manager@flowdesk.dev
agent@flowdesk.dev
requester@flowdesk.dev
```

Senha demo:

```text
FlowDesk@2026
```

Trocar se projeto virar publico sensivel.
