# 03 - Banco e migrations

## Objetivo

Criar modelagem PostgreSQL com migrations versionadas e seed demo inicial.

## Antes de comecar

Ler:

- `flowdesk/sql/schema.sql`
- `flowdesk/sql/seed-demo.sql`
- `flowdesk/sql/migrations-plan.md`
- `flowdesk/manual/04-banco-postgres.md`
- `flowdesk/manual/07-dados-demo.md`

## Tarefas

1. Configurar PostgreSQL local.
2. Criar `docker-compose.yml` se ainda nao existir.
3. Configurar Flyway no backend.
4. Quebrar schema em migrations versionadas.
5. Criar seed demo separado.
6. Criar entities JPA principais.
7. Criar repositories principais.
8. Usar nomes de tabelas, colunas, constraints e indices em portugues.

## Tabelas minimas

- departamentos
- usuarios
- tokens_atualizacao
- chamados
- comentarios_chamado
- etiquetas_chamado
- eventos_auditoria
- notificacoes

## Parada manual

Se o dono quiser usar Aiven ou Neon desde o inicio, pedir a string de conexao e orientar onde colocar localmente.

## Verificacao

Rodar:

```bash
docker compose up -d postgres
./mvnw test
./mvnw spring-boot:run
```

Conferir migrations aplicadas e dados demo no banco.

## Saida esperada

Banco local funcional, migrations versionadas e seed demo carregavel.

Nao criar commit. Sugerir nomes de commit em portugues.
