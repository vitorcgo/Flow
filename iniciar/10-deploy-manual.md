# 10 - Deploy manual

## Objetivo

Publicar backend, frontend e banco em ambiente acessivel para portfolio.

## Antes de comecar

Ler:

- `flowdesk/deploy/hospedagem.md`
- `flowdesk/deploy/plano-free-sem-cloudflare-supabase.md`
- `flowdesk/deploy/ci-cd.md`
- `flowdesk/deploy/docker-local.md`
- `flowdesk/manual/05-deploy.md`
- `flowdesk/manual/08-checklist-publicacao.md`

## Tarefas

1. Usar plano principal 24/7: Vercel frontend, Oracle Cloud Always Free VM backend, Aiven PostgreSQL banco.
2. Usar plano reserva apenas se aceitar backend dormindo: Vercel frontend, Koyeb ou Render backend, Neon banco.
3. Nao usar Cloudflare.
4. Nao usar Supabase.
5. Nao deixar projeto apenas local.
6. Criar banco gerenciado.
7. Configurar variaveis do backend.
8. Publicar backend.
9. Configurar CORS com URL do frontend.
10. Publicar frontend.
11. Rodar migrations no ambiente final.
12. Inserir seed demo seguro.
13. Testar login demo.

## Parada manual

Pedir ao dono:

- conta escolhida para backend
- conta escolhida para frontend
- banco escolhido
- regiao Oracle escolhida
- chave SSH criada
- URL final desejada
- valores de variaveis sensiveis

Nao colocar secrets em arquivo versionado.

## Verificacao

Testar:

- frontend abre
- backend health responde
- banco remoto conecta
- login demo funciona
- dashboard carrega
- CORS nao bloqueia
- refresh token funciona

## Saida esperada

Projeto publicado e pronto para prints.
