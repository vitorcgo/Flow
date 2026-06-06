# 00 - Contexto fixo

Use este contexto em todas as etapas do projeto FlowDesk.

## Projeto

FlowDesk e um sistema corporativo de chamados, SLA, Kanban, auditoria e relatorios.

Objetivo: demonstrar dominio full-stack em ambiente empresarial, com Java Spring Boot, React TypeScript, PostgreSQL, seguranca, logs, testes e deploy.

## Regras obrigatorias

- Trabalhar com qualidade de projeto real.
- Nao criar pastas ou arquivos de ferramenta no repositorio.
- Nao salvar arquivos temporarios no repositorio.
- Nao commitar `.env`, tokens, secrets, prints temporarios ou logs locais.
- Nunca criar commit sozinho. Ao final, sugerir nomes de commit em portugues e aguardar aprovacao do dono.
- Comentarios de codigo devem ser em portugues.
- Classes, ids, variaveis, funcoes, tabelas, colunas, nomes de componentes e textos internos do dominio devem ser em portugues.
- Se algum documento antigo usar nome em ingles para entidade de dominio, converter na implementacao para portugues.
- Manter copy honesta: projeto autoral de portfolio.
- Perguntar ao dono apenas quando faltar dado manual ou credencial.
- Ao final de cada etapa, listar verificacoes feitas.

## Nomenclatura obrigatoria

Usar portugues no dominio do projeto.

Exemplos:

- `Usuario`, nao `User`
- `Chamado`, nao `Ticket`
- `Departamento`, nao `Department`
- `ComentarioChamado`, nao `TicketComment`
- `EventoAuditoria`, nao `AuditEvent`
- `Relatorio`, nao `Report`
- `id_usuario`, nao `user_id`
- `data_criacao`, nao `created_at`

Sufixos tecnicos de framework podem permanecer quando forem convencao reconhecivel:

- `UsuarioController`
- `ChamadoService`
- `RelatorioRepository`
- `AutenticacaoDTO`

## Visual

Interface corporativa, limpa, densa e operacional.

Evitar:

- landing page
- cards decorativos
- visual generico
- excesso de texto
- elementos grandes sem funcao
- telas quadradas demais sem refinamento

Preferir:

- tabelas boas
- filtros claros
- sidebar objetiva
- header util
- estados de loading, vazio e erro
- responsivo bem resolvido
- detalhes pequenos de produto real

## Documentos base

Ler antes de implementar:

- `flowdesk/README.md`
- `flowdesk/contexto/briefing.md`
- `flowdesk/specs/product-spec.md`
- `flowdesk/specs/technical-spec.md`
- `flowdesk/arquitetura/decisoes.md`
- `flowdesk/planejamento/criterios-de-pronto.md`

## Saida esperada em toda etapa

Responder com:

- feito
- arquivos criados ou alterados
- comandos rodados
- resultado das verificacoes
- pendencias
- sugestoes de nomes de commit em portugues, sem commitar
- proxima etapa
