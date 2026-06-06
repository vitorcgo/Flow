# 04 - Auth e RBAC

## Objetivo

Implementar login, JWT, refresh token, roles e protecao de rotas.

## Antes de comecar

Ler:

- `flowdesk/backend/modulos/auth.md`
- `flowdesk/backend/modulos/users.md`
- `flowdesk/specs/security-spec.md`
- `flowdesk/backend/api/status-codes.md`

## Tarefas

1. Implementar cadastro administrativo de usuarios.
2. Implementar login.
3. Gerar access token curto.
4. Persistir refresh token.
5. Implementar renovacao de sessao.
6. Implementar logout.
7. Bloquear usuario inativo.
8. Proteger endpoints por role.
9. Retornar `440` quando sessao expirar.

## Endpoints minimos

- `POST /api/auth/login`
- `POST /api/auth/refresh`
- `POST /api/auth/logout`
- `GET /api/auth/me`
- `GET /api/users`
- `POST /api/users`
- `PATCH /api/users/{id}`

## Verificacao

Testar:

- login valido retorna token
- login invalido retorna `401`
- rota sem token retorna `401`
- rota sem permissao retorna `403`
- token expirado retorna `440`
- senha nao aparece em response

## Saida esperada

Autenticacao e autorizacao prontas para o restante da API.
