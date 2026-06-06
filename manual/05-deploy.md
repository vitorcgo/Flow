# Manual: Deploy

## Plano recomendado

- Frontend: Vercel
- Backend: Oracle Cloud Always Free VM
- Banco: Aiven PostgreSQL

Sem Cloudflare. Sem Supabase. Projeto precisa ficar publicado, nao apenas local.

## Banco Aiven

1. Criar conta Aiven.
2. Criar Aiven for PostgreSQL Free.
3. Copiar host, porta, database, usuario e senha.
4. Guardar dados apenas em variaveis de ambiente.
5. Testar conexao antes do deploy do backend.

## Backend Oracle Cloud Always Free

1. Criar conta Oracle Cloud.
2. Criar VM Always Free.
3. Abrir portas `22`, `80` e `443`.
4. Acessar VM por SSH.
5. Instalar Docker e Docker Compose.
6. Clonar repositorio.
7. Criar `.env` apenas na VM.
8. Subir backend em container.
9. Configurar Nginx como proxy reverso para porta `8080`.
10. Configurar HTTPS.
11. Configurar health check:

```text
/actuator/health
```

12. Configurar variaveis:

```env
SPRING_PROFILES_ACTIVE=prod
DATABASE_URL=
DATABASE_USERNAME=
DATABASE_PASSWORD=
JWT_SECRET=
CORS_ALLOWED_ORIGINS=
JAVA_TOOL_OPTIONS=-XX:MaxRAMPercentage=75 -XX:+UseSerialGC
```

Observacao: usar apenas recursos marcados como Always Free. Oracle pode pedir cartao no cadastro e pode faltar capacidade temporaria na regiao.

## Backend Koyeb como reserva

Koyeb Free Web Service nao e 24/7. Ele escala para zero apos 1 hora sem trafego.

Usar apenas se aceitar primeira chamada mais lenta.

## Backend Render como reserva

Render Free Web Service nao e 24/7. Ele dorme apos 15 minutos sem trafego.

1. Criar Web Service.
2. Conectar repo GitHub.
3. Selecionar pasta `backend`.
4. Configurar variaveis:

```env
SPRING_PROFILES_ACTIVE=prod
DATABASE_URL=
JWT_SECRET=
CORS_ALLOWED_ORIGINS=
```

5. Configurar health check:

```text
/actuator/health
```

Observacao: aceitavel para portfolio simples, mas nao e backend sempre ligado. Render Postgres free nao e recomendado como banco principal.

## Frontend Vercel

1. Importar repo.
2. Root directory: `frontend`.
3. Build command:

```bash
npm run build
```

4. Output:

```text
dist
```

5. Variavel:

```env
VITE_API_URL=https://seu-backend/api
```

## Validacao

- login demo funciona
- dashboard carrega
- criar ticket funciona
- Kanban move
- auditoria registra
- link publico abre fora da maquina local
