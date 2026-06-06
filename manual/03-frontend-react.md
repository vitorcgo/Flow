# Manual: Frontend React

## Criar projeto

```bash
npm create vite@latest frontend -- --template react-ts
cd frontend
npm install
```

## Instalar libs

```bash
npm install react-router-dom @tanstack/react-query axios zustand
```

Opcional:

```bash
npm install lucide-react
```

## Estrutura

```text
src/
  app/
  components/
  features/
  pages/
  services/
  styles/
  types/
```

## Ordem

1. Design tokens.
2. AppShell.
3. Login.
4. Dashboard.
5. Lista tickets.
6. Detalhe ticket.
7. Kanban.
8. Usuarios.
9. Auditoria.
10. Relatorios.

## Build

```bash
npm run build
```
