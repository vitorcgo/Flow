# 09 - Integracao e testes

## Objetivo

Garantir que frontend, backend e banco funcionam juntos com qualidade minima para demo.

## Antes de comecar

Ler:

- `flowdesk/specs/testing-spec.md`
- `flowdesk/backend/api/status-codes.md`
- `flowdesk/planejamento/checklist.md`
- `flowdesk/planejamento/criterios-de-pronto.md`

## Tarefas

1. Revisar CORS.
2. Revisar refresh token no frontend.
3. Padronizar tratamento de erro.
4. Criar testes backend para auth e tickets.
5. Criar testes frontend para componentes criticos, se couber.
6. Fazer teste manual completo.
7. Atualizar checklist.

## Fluxo manual obrigatorio

1. Login como admin.
2. Criar usuario agent.
3. Criar departamento.
4. Criar ticket.
5. Atribuir agent.
6. Mover para em andamento.
7. Comentar.
8. Resolver.
9. Conferir auditoria.
10. Conferir dashboard.

## Status codes para validar

- `200`
- `201`
- `203`
- `400`
- `401`
- `403`
- `404`
- `409`
- `422`
- `440`
- `500`

## Verificacao

Rodar:

```bash
./mvnw test
npm run lint
npm run build
```

## Saida esperada

Fluxo completo funcionando com erros previsiveis e respostas consistentes.
