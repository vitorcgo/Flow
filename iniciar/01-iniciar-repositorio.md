# 01 - Iniciar repositorio

## Objetivo

Criar a base do repositorio FlowDesk com estrutura limpa para backend, frontend, docs e infra.

## Antes de comecar

Ler:

- `flowdesk/iniciar/00-contexto-fixo.md`
- `flowdesk/README.md`
- `flowdesk/manual/01-criar-repositorio.md`

## Tarefas

1. Criar estrutura:

```text
flowdesk-app/
  backend/
  frontend/
  docs/
  infra/
```

2. Criar `.gitignore` cobrindo:

- `.env`
- `node_modules`
- `dist`
- `target`
- logs
- arquivos locais de IDE
- prints temporarios

3. Criar `README.md` inicial com:

- objetivo
- stack
- como rodar local
- links futuros de demo
- usuario demo futuro

4. Criar arquivos de exemplo:

- `backend/.env.example`
- `frontend/.env.example`

5. Copiar para `docs/` apenas documentacao profissional util.
6. Configurar README deixando claro que nomes de dominio no codigo ficam em portugues.
7. Nao criar commit. Apenas sugerir nomes de commit em portugues ao final.

## Parada manual

Se o repositorio remoto ainda nao existir, pedir ao dono:

- nome do repositorio
- se sera publico ou privado
- URL remota

## Verificacao

Rodar:

```bash
git status
```

Conferir que nao existe arquivo sensivel ou pasta temporaria.

## Saida esperada

Base criada e pronta para receber backend.

Tambem entregar 2 ou 3 sugestoes de commit em portugues, sem executar commit.
