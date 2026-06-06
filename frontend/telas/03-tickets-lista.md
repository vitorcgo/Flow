# Tela: Lista de Tickets

## Objetivo

Gerenciar tickets em formato de tabela profissional.

## Colunas

- Protocolo
- Titulo
- Status
- Prioridade
- Departamento
- Responsavel
- SLA
- Criado em

## Filtros

- status
- prioridade
- responsavel
- departamento
- atrasado
- texto livre

## Acoes

- novo ticket
- abrir detalhe
- exportar CSV

## Estados

- vazio: "Nenhum ticket encontrado"
- loading: skeleton rows
- erro: retry

## API

`GET /api/tickets`
