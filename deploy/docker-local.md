# Ambiente local com Docker

## Objetivo

Subir dependencias locais sem configurar servicos externos.

## Servicos

- PostgreSQL
- Backend Spring Boot
- Frontend Vite

## Arquivo esperado

`docker-compose.yml`

## Variaveis locais

```env
POSTGRES_DB=flowdesk
POSTGRES_USER=flowdesk
POSTGRES_PASSWORD=flowdesk
DATABASE_URL=jdbc:postgresql://localhost:5432/flowdesk
JWT_SECRET=trocar-em-producao
FRONTEND_URL=http://localhost:5173
```

## Portas

- Frontend: `5173`
- Backend: `8080`
- Banco: `5432`

## Comandos

```bash
docker compose up -d
docker compose logs -f backend
docker compose down
```

## Criterio de pronto

- Banco aceita conexao.
- Backend responde `/actuator/health`.
- Frontend abre tela de login.
- CORS permite chamada local.
