# 12 - Revisao final

## Objetivo

Fazer auditoria final antes de commit, deploy publico ou inclusao no portfolio.

## Antes de comecar

Ler:

- `flowdesk/planejamento/checklist.md`
- `flowdesk/planejamento/criterios-de-pronto.md`
- `flowdesk/manual/08-checklist-publicacao.md`

## Tarefas

1. Rodar build backend.
2. Rodar testes backend.
3. Rodar lint frontend.
4. Rodar build frontend.
5. Revisar responsivo.
6. Revisar seed demo.
7. Revisar README.
8. Revisar variaveis.
9. Revisar arquivos versionados.
10. Revisar links do portfolio.
11. Revisar se comentarios de codigo estao em portugues.
12. Revisar se classes, ids, variaveis, tabelas, colunas e componentes de dominio estao em portugues.

## Nao pode existir no repositorio

- `.env`
- tokens
- secrets
- logs locais
- prints temporarios
- pastas de ferramenta
- arquivos de cache
- dumps de banco com dados sensiveis
- commit criado sem aprovacao do dono

## Verificacao sugerida

```bash
git status
git diff --stat
npm run build
./mvnw test
```

## Resultado esperado

Responder com:

- aprovado ou nao aprovado
- problemas encontrados
- correcoes feitas
- pendencias manuais
- sugestao de mensagem de commit

Nao executar commit. Apenas sugerir 2 ou 3 nomes de commit em portugues.
