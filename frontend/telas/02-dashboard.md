# Tela: Dashboard

## Objetivo

Mostrar saude operacional do time.

## Layout

- Header: periodo, departamento, busca.
- Linha de indicadores:
  - abertos
  - atrasados
  - resolvidos no mes
  - SLA medio
- Grafico simples: tickets por status.
- Lista: tickets criticos.
- Lista: atividade recente.

## Sem cards de IA

Indicadores devem ser blocos funcionais com borda leve e dados reais, nao caixas decorativas gigantes.

## Interacoes

- Filtro por periodo.
- Clique em indicador abre listagem filtrada.
- Clique em ticket abre detalhe.

## API

- `GET /api/dashboard/summary`
- `GET /api/dashboard/activity`
