# 08 - Frontend telas

## Objetivo

Implementar as telas principais usando a API e o design system.

## Antes de comecar

Ler:

- `flowdesk/frontend/telas/01-login.md`
- `flowdesk/frontend/telas/02-dashboard.md`
- `flowdesk/frontend/telas/03-tickets-lista.md`
- `flowdesk/frontend/telas/04-ticket-detalhe.md`
- `flowdesk/frontend/telas/05-kanban.md`
- `flowdesk/frontend/telas/06-usuarios-admin.md`
- `flowdesk/frontend/telas/07-auditoria.md`
- `flowdesk/frontend/telas/08-relatorios.md`
- `flowdesk/frontend/telas/09-configuracoes.md`

## Tarefas

1. Login.
2. Dashboard.
3. Lista de tickets.
4. Detalhe do ticket.
5. Kanban.
6. Usuarios admin.
7. Auditoria.
8. Relatorios.
9. Configuracoes.

## Estados obrigatorios

Cada tela precisa tratar:

- carregando
- vazio
- erro
- sucesso
- permissao negada quando aplicavel

## Mobile

Garantir:

- sidebar vira drawer ou navegacao compacta
- tabelas nao estouram tela
- filtros ficam usaveis
- botoes mantem area de toque boa
- textos nao se sobrepoem

## Verificacao

Rodar:

```bash
npm run lint
npm run build
```

Testar manualmente:

- login
- abrir dashboard
- criar ticket
- mover ticket no Kanban
- comentar
- filtrar
- abrir relatorio

## Saida esperada

Produto navegavel de ponta a ponta.
