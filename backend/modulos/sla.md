# Modulo SLA

## Responsabilidade

Calcular prazo e atraso dos tickets.

## Regras

- LOW: 72h
- MEDIUM: 48h
- HIGH: 24h
- CRITICAL: 4h

## Campos calculados

- `due_at`
- `is_overdue`
- `time_to_first_response`
- `resolution_time`

## Jobs

Job opcional a cada 15 minutos:

- verifica tickets atrasados
- registra evento
- marca alerta para dashboard

## Testes

- prioridade gera data correta
- ticket resolvido nao aparece como atrasado
- ticket critical vence em 4h
