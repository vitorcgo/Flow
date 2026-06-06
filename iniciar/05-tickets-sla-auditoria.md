# 05 - Tickets, SLA e auditoria

## Objetivo

Implementar o fluxo principal do produto.

## Antes de comecar

Ler:

- `flowdesk/backend/modulos/tickets.md`
- `flowdesk/backend/modulos/comments.md`
- `flowdesk/backend/modulos/sla.md`
- `flowdesk/backend/modulos/audit.md`
- `flowdesk/backend/modulos/notifications.md`

## Tarefas

1. Criar CRUD de tickets.
2. Criar filtros por status, prioridade, departamento, responsavel e busca.
3. Implementar comentarios.
4. Implementar mudanca de status.
5. Implementar atribuicao de responsavel.
6. Calcular SLA.
7. Registrar eventos de auditoria.
8. Gerar notificacoes internas.
9. Garantir paginacao.

## Status sugeridos

- open
- in_progress
- waiting_user
- resolved
- closed

## Prioridades

- low
- medium
- high
- critical

## Verificacao

Testar:

- criar ticket
- listar com filtro
- mover status
- comentar
- atribuir usuario
- gerar auditoria
- calcular SLA vencido
- bloquear acoes sem permissao

## Saida esperada

Fluxo principal funcional e auditavel.
