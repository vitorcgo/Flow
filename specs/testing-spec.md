# Testing Spec

## Backend

Testes unitarios:

- calculo de SLA
- transicao de status
- permissao por role
- validacao de prioridade

Testes de integracao:

- login
- criar ticket
- listar tickets
- mover ticket
- comentar
- auditoria gerada

## Frontend

Testes recomendados:

- render login
- erro de login
- dashboard carrega indicadores
- filtro de tickets
- formulario de ticket valida campos
- Kanban move item

## Contratos

Validar:

- status code correto
- formato de erro padrao
- campos obrigatorios
- paginacao

## Comandos desejados

```bash
# backend
./mvnw test

# frontend
npm run test
npm run build
```

## Criterios

- Nenhum teste quebrado.
- Build frontend passando.
- Swagger acessivel.
- Seed demo funcionando.
