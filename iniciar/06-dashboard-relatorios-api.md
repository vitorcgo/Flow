# 06 - Dashboard, relatorios e API

## Objetivo

Criar endpoints de indicadores, relatorios e documentacao da API.

## Antes de comecar

Ler:

- `flowdesk/backend/modulos/reports.md`
- `flowdesk/backend/api/endpoints.md`
- `flowdesk/backend/api/response-pattern.md`
- `flowdesk/backend/api/status-codes.md`
- `flowdesk/logs/logging-spec.md`

## Tarefas

1. Criar endpoint de resumo do dashboard.
2. Criar metricas por status.
3. Criar metricas por prioridade.
4. Criar metricas por SLA.
5. Criar relatorio por periodo.
6. Criar export simples em CSV, se couber no MVP.
7. Configurar Swagger/OpenAPI.
8. Padronizar erros e status codes.
9. Adicionar logs estruturados com request id.

## Endpoints minimos

- `GET /api/dashboard/summary`
- `GET /api/reports/tickets`
- `GET /api/reports/sla`
- `GET /api/reports/export.csv`

## Verificacao

Testar:

- dashboard com seed demo
- filtros por periodo
- response `200`
- response `203` quando dados forem parciais
- response `400` em filtro invalido
- response `440` em sessao expirada
- Swagger acessivel

## Saida esperada

API completa o suficiente para sustentar o frontend e demo.
