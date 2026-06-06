# Plano de migrations

## Ferramenta

Usar Flyway no backend Spring Boot.

## Padrao de nomes

```text
V1__create_departments.sql
V2__create_users.sql
V3__create_refresh_tokens.sql
V4__create_tickets.sql
V5__create_ticket_comments.sql
V6__create_ticket_tags.sql
V7__create_audit_events.sql
V8__create_notifications.sql
V9__seed_demo_data.sql
```

## Regras

- Migration nunca deve ser editada depois de aplicada.
- Mudanca nova vira novo arquivo.
- Seed demo deve ser identificavel e facil de remover.
- Indices entram junto das tabelas mais usadas.

## Ordem

1. Departamentos.
2. Usuarios.
3. Tokens.
4. Tickets.
5. Comentarios.
6. Tags.
7. Auditoria.
8. Notificacoes.
9. Dados demo.

## Verificacao

- Aplicar migrations em banco limpo.
- Rodar aplicacao.
- Conferir tabelas.
- Conferir seed.
- Derrubar banco local e subir de novo.
