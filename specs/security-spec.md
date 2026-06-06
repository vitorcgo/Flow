# Security Spec

## Objetivo

Mostrar maturidade corporativa: autenticar, autorizar, registrar auditoria e responder erros sem vazar dados sensiveis.

## Controles

- Senhas com BCrypt.
- JWT assinado.
- Refresh token com expiracao.
- CORS restrito ao dominio do frontend.
- Validacao de entrada com Bean Validation.
- Sanitizacao de campos textuais no frontend.
- Rate limit opcional em login.
- Logs sem senha, token ou dados sensiveis.

## RBAC

Rotas por perfil:

- `/api/admin/**`: ADMIN
- `/api/reports/**`: ADMIN, MANAGER
- `/api/tickets/**`: ADMIN, MANAGER, AGENT, REQUESTER
- `/api/audit/**`: ADMIN, MANAGER

## Auditoria obrigatoria

Criar evento quando:

- ticket criado
- status alterado
- prioridade alterada
- responsavel alterado
- comentario criado
- ticket resolvido
- usuario criado/alterado

## Erros seguros

Nunca retornar:

- stack trace
- nome de tabela
- SQL
- token
- hash de senha

## Headers recomendados

- `X-Request-Id`
- `Content-Type: application/json`
- `Cache-Control: no-store` em rotas autenticadas

## Status especiais

- 401: nao autenticado
- 403: autenticado sem permissao
- 440: sessao expirada no frontend, mapeada quando refresh token invalido/expirado
