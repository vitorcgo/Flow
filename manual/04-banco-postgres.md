# Manual: Banco PostgreSQL

## Local

Usar Docker Compose.

```yaml
services:
  postgres:
    image: postgres:16
    environment:
      POSTGRES_DB: flowdesk
      POSTGRES_USER: flowdesk
      POSTGRES_PASSWORD: flowdesk
    ports:
      - "5432:5432"
```

## Produção

Opcoes:

- Aiven PostgreSQL
- Neon

## Migrations

Usar Flyway no backend.

Pasta:

```text
backend/src/main/resources/db/migration
```

Nome:

```text
V1__create_flowdesk_schema.sql
```

Base: `sql/schema.sql`.
