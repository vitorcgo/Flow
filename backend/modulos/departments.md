# Modulo: departamentos

## Objetivo

Organizar usuarios e chamados por areas da empresa.

## Entidade

`departments`

Campos principais:

- `id`
- `name`
- `description`
- `active`
- `created_at`
- `updated_at`

## Regras

- Departamento nao pode ter nome duplicado.
- Departamento inativo nao deve receber novo ticket.
- Usuario pode pertencer a um departamento.
- Ticket pode ser vinculado ao departamento responsavel.

## Endpoints

- `GET /api/departments`
- `POST /api/departments`
- `PATCH /api/departments/{id}`
- `PATCH /api/departments/{id}/disable`

## Permissoes

- Admin cria, edita e desativa.
- Manager visualiza.
- Agent visualiza.

## Eventos de auditoria

- `DEPARTMENT_CREATED`
- `DEPARTMENT_UPDATED`
- `DEPARTMENT_DISABLED`
