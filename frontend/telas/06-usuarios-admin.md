# Tela: Usuarios e Perfis

## Objetivo

Permitir que ADMIN gerencie acessos.

## Campos

- nome
- email
- role
- departamento
- status

## Acoes

- criar usuario
- editar usuario
- ativar/desativar
- resetar senha demo

## Regras

- Apenas ADMIN acessa.
- Nao permitir remover ultimo ADMIN.

## API

- `GET /api/users`
- `POST /api/users`
- `PATCH /api/users/{id}`
- `PATCH /api/users/{id}/status`
