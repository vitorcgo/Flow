# Tela: Kanban

## Objetivo

Mostrar fluxo operacional por status.

## Colunas

- Aberto
- Triagem
- Em andamento
- Aguardando solicitante
- Resolvido
- Fechado

## Item do Kanban

Nao usar card decorativo grande. Item deve ser compacto:

- protocolo
- titulo
- prioridade
- SLA
- responsavel

## Interacoes

- drag-and-drop
- clique abre detalhe
- filtro por responsavel/prioridade

## Regras

- REQUESTER nao move ticket.
- AGENT move apenas tickets atribuidos.
- MANAGER e ADMIN movem todos do departamento.

## API

- `GET /api/tickets/kanban`
- `PATCH /api/tickets/{id}/status`
