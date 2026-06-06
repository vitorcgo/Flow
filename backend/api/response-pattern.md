# Response Pattern

## Sucesso simples

```json
{
  "data": {
    "id": 1
  },
  "meta": {
    "requestId": "req_01HZX",
    "timestamp": "2026-01-12T14:22:00Z"
  }
}
```

## Lista paginada

```json
{
  "data": [],
  "meta": {
    "page": 1,
    "pageSize": 20,
    "total": 150,
    "requestId": "req_01HZX"
  }
}
```

## Erro

```json
{
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Campos invalidos",
    "fields": {
      "title": "Titulo e obrigatorio"
    }
  },
  "meta": {
    "requestId": "req_01HZX",
    "timestamp": "2026-01-12T14:22:00Z"
  }
}
```
