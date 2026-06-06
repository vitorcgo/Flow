# Product Spec

## Problema

Times internos perdem controle de demandas quando usam planilhas, mensagens e ferramentas desconectadas. Isso gera atraso, retrabalho e falta de historico.

## Solucao

FlowDesk organiza tickets corporativos com Kanban, SLA, comentarios, responsaveis, prioridade, tags, auditoria e relatorios.

## Escopo MVP

- Login
- Cadastro seed de usuarios
- Perfis de acesso
- Dashboard
- Listagem de tickets
- Criacao de ticket
- Detalhe do ticket
- Kanban por status
- Comentarios
- Historico de auditoria
- SLA por prioridade
- Filtros e busca
- Relatorio simples
- API REST
- Swagger
- Logs estruturados
- Deploy

## Fora do MVP

- Chat em tempo real
- Pagamento
- Multi-tenant complexo
- App mobile nativo
- IA generativa
- Upload pesado de arquivos

## Perfis

Admin:

- gerencia usuarios
- cria departamentos
- ve todos os tickets
- altera qualquer ticket
- acessa auditoria completa

Manager:

- ve dashboard
- gerencia tickets do departamento
- atribui responsaveis
- exporta relatorio

Agent:

- ve tickets atribuidos
- move status
- comenta
- resolve tickets

Requester:

- cria ticket
- acompanha tickets proprios
- comenta no proprio ticket

## Status do ticket

- OPEN
- TRIAGE
- IN_PROGRESS
- WAITING_CUSTOMER
- RESOLVED
- CLOSED

## Prioridades

- LOW: SLA 72h
- MEDIUM: SLA 48h
- HIGH: SLA 24h
- CRITICAL: SLA 4h

## Indicadores

- tickets abertos
- tickets atrasados
- SLA medio
- resolvidos no mes
- tempo medio ate primeira resposta
- tickets por prioridade
- tickets por responsavel

## Criterios de sucesso

- Recrutador entende o produto em 30 segundos.
- Tech lead identifica arquitetura corporativa.
- Demo tem fluxo completo: login, criar ticket, mover Kanban, comentar, resolver, ver auditoria.
- README permite rodar localmente.
- Deploy publico acessivel.
