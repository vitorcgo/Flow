# Modulo: notificacoes

## Objetivo

Registrar alertas internos sem depender de servico externo no primeiro MVP.

## Canais do MVP

- notificacao dentro da aplicacao
- contador no header
- lista de eventos recentes

## Eventos que geram notificacao

- ticket atribuido ao usuario
- comentario novo em ticket acompanhado
- SLA proximo do vencimento
- SLA vencido
- ticket reaberto

## Entidade sugerida

`notifications`

Campos:

- `id`
- `user_id`
- `type`
- `title`
- `message`
- `read_at`
- `created_at`

## Endpoints

- `GET /api/notifications`
- `PATCH /api/notifications/{id}/read`
- `PATCH /api/notifications/read-all`

## Criterio de pronto

- Usuario ve notificacoes pendentes.
- Usuario consegue marcar como lida.
- Backend gera notificacao em eventos principais.
