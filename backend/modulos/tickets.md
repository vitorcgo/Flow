# Modulo Tickets

## Responsabilidade

Criar, listar, atualizar e mover tickets.

## Campos principais

- id
- protocol
- title
- description
- status
- priority
- due_at
- first_response_at
- resolved_at
- requester_id
- assignee_id
- department_id

## Regras

- Protocolo gerado automaticamente: `FD-2026-000001`.
- Ticket nasce como `OPEN`.
- SLA calculado pela prioridade.
- Mudanca de status gera auditoria.
- Mudanca de responsavel gera auditoria.
- Ticket fechado nao volta para status anterior, exceto ADMIN.

## Transicoes permitidas

```text
OPEN -> TRIAGE
TRIAGE -> IN_PROGRESS
IN_PROGRESS -> WAITING_CUSTOMER
WAITING_CUSTOMER -> IN_PROGRESS
IN_PROGRESS -> RESOLVED
RESOLVED -> CLOSED
```

## Permissoes

- REQUESTER cria e ve tickets proprios.
- AGENT move tickets atribuidos.
- MANAGER move tickets do departamento.
- ADMIN move qualquer ticket.
