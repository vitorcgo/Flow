# Modulo: usuarios

## Objetivo

Controlar acesso, papeis, departamentos e usuarios ativos na plataforma.

## Perfis

- `ADMIN`: controla usuarios, departamentos e configuracoes.
- `MANAGER`: acompanha indicadores e distribui tickets.
- `AGENT`: atende tickets e comenta.
- `REQUESTER`: abre chamados e acompanha os proprios tickets.

## Entidade

`users`

Campos principais:

- `id`
- `name`
- `email`
- `password_hash`
- `role`
- `department_id`
- `active`
- `last_login_at`
- `created_at`
- `updated_at`

## Endpoints

- `GET /api/users`
- `GET /api/users/{id}`
- `POST /api/users`
- `PATCH /api/users/{id}`
- `PATCH /api/users/{id}/disable`

## Regras

- Email deve ser unico.
- Senha nunca aparece em response.
- Usuario inativo nao autentica.
- Apenas admin altera role.

## Eventos de auditoria

- `USER_CREATED`
- `USER_UPDATED`
- `USER_DISABLED`
- `USER_ROLE_CHANGED`
