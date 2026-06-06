# FlowDesk

Sistema corporativo de chamados, tarefas, SLA e auditoria para demonstrar dominio full-stack em contexto empresarial.

## Objetivo

Construir um produto B2B com cara de ferramenta usada por operacao real: login, cargos, permissoes, chamados, Kanban, SLA, auditoria, relatorios, logs, API documentada, banco relacional, testes, CI/CD e deploy.

Este repositorio de planejamento deve conter apenas documentacao tecnica profissional e arquivos intencionais do projeto.

## Stack proposta

- Frontend: React, TypeScript, Vite
- Backend: Java 21, Spring Boot 3
- Banco: PostgreSQL
- Auth: JWT com refresh token e RBAC
- Infra local: Docker Compose
- API docs: OpenAPI/Swagger
- CI/CD: GitHub Actions
- Deploy: Vercel para frontend, Oracle Cloud Always Free para backend, Aiven PostgreSQL para banco
- Observabilidade: logs estruturados, request id, health checks

## Estrutura

```text
flowdesk/
  contexto/       Briefing, publico, problemas e posicionamento
  specs/          Contratos de produto, tecnica, UX, seguranca e testes
  frontend/       Planejamento visual, telas, componentes e estados
  backend/        Modulos, regras, APIs e status codes
  sql/            Modelo relacional, queries e seed de demonstracao
  deploy/         Hospedagem, variaveis, CI/CD e ambientes
  manual/         Passo a passo manual para voce executar
  iniciar/        Roteiros sequenciais para construir sem perder contexto
  arquitetura/    Decisoes tecnicas e padroes de implementacao
  documentacao/   README final, portfolio copy e roteiro de demo
  logs/           Padrao de logs, respostas HTTP e erros
  skills/         Competencias demonstradas pelo projeto
  planejamento/   Roadmap, checklist, entregas e criterios de pronto
```

## Resultado esperado para portfolio

FlowDesk deve comunicar:

- "Sei construir sistema interno de empresa."
- "Entendo fluxo corporativo, SLA, permissao e auditoria."
- "Consigo trabalhar com Java/Spring, React/TypeScript, SQL e deploy."
- "Tenho criterio de produto, nao so tela bonita."

## Ordem recomendada

1. Ler `contexto/briefing.md`.
2. Ler `specs/product-spec.md`.
3. Ler `iniciar/00-contexto-fixo.md`.
4. Seguir `iniciar/README.md` em ordem.
5. Implementar banco conforme `sql/schema.sql`.
6. Implementar backend por `backend/modulos`.
7. Implementar frontend por `frontend/telas`.
8. Subir deploy conforme `deploy/hospedagem.md`.
9. Gravar demo seguindo `documentacao/roteiro-demo.md`.
