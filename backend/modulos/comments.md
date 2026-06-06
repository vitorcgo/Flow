# Modulo Comments

## Responsabilidade

Registrar conversa dentro do ticket.

## Campos

- id
- ticket_id
- author_id
- body
- internal
- created_at

## Regras

- Comentario interno visivel apenas para AGENT, MANAGER e ADMIN.
- REQUESTER ve apenas comentarios publicos.
- Comentario gera evento de auditoria.

## API

```http
POST /api/tickets/{id}/comments
GET  /api/tickets/{id}/comments
```
