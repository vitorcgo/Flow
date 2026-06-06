# Modulo Reports

## Responsabilidade

Gerar indicadores e exportacoes.

## Relatorios

- resumo geral
- tickets por status
- tickets por prioridade
- SLA cumprido vs atrasado
- produtividade por responsavel

## API

```http
GET /api/reports/summary
GET /api/reports/export.csv
```

## Resposta 203

Pode retornar 203 quando o relatorio vier de cache.
