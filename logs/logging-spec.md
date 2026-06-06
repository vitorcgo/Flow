# Logging Spec

## Formato

Logs em JSON.

Campos:

- timestamp
- level
- request_id
- method
- path
- status
- duration_ms
- user_id
- message

## Exemplo 200

```json
{
  "level": "INFO",
  "request_id": "req_01HZ",
  "method": "GET",
  "path": "/api/tickets",
  "status": 200,
  "duration_ms": 42,
  "user_id": 3,
  "message": "tickets.list.success"
}
```

## Exemplo 400

```json
{
  "level": "WARN",
  "request_id": "req_01HZ",
  "method": "POST",
  "path": "/api/tickets",
  "status": 400,
  "duration_ms": 18,
  "message": "tickets.create.invalid_payload"
}
```

## Exemplo 440 frontend

```json
{
  "level": "INFO",
  "event": "session.expired",
  "status": 440,
  "message": "Refresh token expirado. Usuario redirecionado para login."
}
```

## Nao logar

- senha
- token
- refresh token
- hash
- dados sensiveis completos
