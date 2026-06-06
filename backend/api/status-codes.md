# Status Codes

## 200 OK

Uso:

- GET bem-sucedido
- PATCH bem-sucedido com corpo
- login bem-sucedido

Exemplo:

```json
{
  "data": {
    "id": 12,
    "status": "IN_PROGRESS"
  }
}
```

## 201 Created

Uso:

- ticket criado
- comentario criado
- usuario criado

## 203 Non-Authoritative Information

Uso opcional no FlowDesk:

- resposta vinda de cache/relatorio calculado anteriormente
- dados exibidos com aviso de possivel defasagem

Exemplo:

```json
{
  "data": {},
  "meta": {
    "source": "cached",
    "message": "Dados calculados anteriormente"
  }
}
```

## 204 No Content

Uso:

- delete logico
- desativacao sem retorno

## 400 Bad Request

Uso:

- JSON invalido
- filtro invalido
- transicao de status impossivel

## 401 Unauthorized

Uso:

- sem token
- token invalido

## 403 Forbidden

Uso:

- usuario autenticado, mas sem permissao

## 404 Not Found

Uso:

- ticket inexistente
- usuario inexistente

## 409 Conflict

Uso:

- email duplicado
- ticket ja fechado
- conflito de status

## 422 Unprocessable Entity

Uso:

- validacao de campos

## 429 Too Many Requests

Uso:

- rate limit login

## 440 Login Time-out

Uso no frontend:

- refresh token expirado
- sessao encerrada

Observacao:

440 nao e status HTTP padrao universal. Backend pode retornar 401 com `code: SESSION_EXPIRED`; frontend mapeia para tela de sessao expirada.

## 500 Internal Server Error

Uso:

- erro inesperado

Nunca retornar stack trace.
