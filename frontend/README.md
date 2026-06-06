# Frontend Plan

## Direcao visual

FlowDesk deve parecer produto corporativo moderno, nao landing page.

Estetica:

- fundo branco
- cinza frio leve
- preto suave para texto
- azul/verde apenas para status
- vermelho apenas para erro/SLA critico
- cantos levemente arredondados, nao tudo quadradao
- sem gradientes roxos
- sem blobs
- sem "cards de IA" decorativos
- sem hero gigante
- sem desenhos SVG decorativos

## Layout base

```text
┌────────────────────────────────────────────┐
│ Topbar: busca, filtros globais, usuario    │
├───────────────┬────────────────────────────┤
│ Sidebar       │ Conteudo operacional        │
│ Dashboard     │ tabelas, kanban, forms      │
│ Tickets       │                             │
│ Kanban        │                             │
│ Relatorios    │                             │
│ Admin         │                             │
└───────────────┴────────────────────────────┘
```

## Componentes

- AppShell
- Sidebar
- Topbar
- DataTable
- StatusBadge
- PriorityBadge
- SlaPill
- Drawer
- Modal de confirmacao
- Toast
- EmptyState
- Skeleton
- Pagination
- CommandSearch
- FilterBar
- KanbanBoard
- TicketTimeline

## Padrao de tela

Cada tela deve ter:

- titulo curto
- acao principal clara
- filtros
- conteudo principal
- estados: carregando, vazio, erro, sucesso

## Nao fazer

- Dashboard com card decorativo enorme.
- Texto explicando como usar.
- Botao sem funcao.
- Mock visual sem dados.
- Layout marketing.

## Dados mockados para desenvolvimento

Criar fixtures coerentes:

- 8 usuarios
- 4 departamentos
- 36 tickets
- 80 eventos de auditoria
- prioridades variadas
- tickets atrasados e no prazo
