# Tela: Detalhe do Ticket

## Objetivo

Concentrar contexto, conversa e historico do ticket.

## Layout

Coluna principal:

- titulo
- descricao
- comentarios
- timeline

Coluna lateral:

- status
- prioridade
- responsavel
- departamento
- SLA
- tags

## Acoes

- alterar status
- alterar prioridade
- atribuir responsavel
- comentar
- resolver
- fechar

## Auditoria visivel

Timeline deve mostrar:

- quem mudou
- o que mudou
- de/para
- quando

## API

- `GET /api/tickets/{id}`
- `PATCH /api/tickets/{id}`
- `POST /api/tickets/{id}/comments`
