# Decisoes de arquitetura

## Formato do projeto

Monorepo com duas aplicacoes separadas:

- `backend`: API Java Spring Boot.
- `frontend`: SPA React TypeScript.

Esse formato facilita demo, deploy separado e leitura por recrutador.

## Motivos da stack

Java + Spring Boot mostra dominio de ambiente corporativo, padroes de API, seguranca e regras de negocio.

React + TypeScript mostra construcao de interface operacional moderna, com tipagem, estados e consumo de API.

PostgreSQL mostra modelagem relacional, indices, joins, filtros e integridade.

## Padrao de camadas backend

```text
controller -> service -> repository -> database
```

- Controller recebe request, valida contrato e devolve response.
- Service concentra regra de negocio.
- Repository acessa dados.
- Entity representa tabela.
- DTO evita expor entity diretamente.

## Padrao frontend

```text
pages -> features -> components -> services -> api
```

- Pages organizam tela.
- Features guardam logica de modulo.
- Components cuidam da interface reutilizavel.
- Services concentram chamadas e transformacoes.
- API client centraliza headers, token, erros e refresh.

## Autenticacao

- Access token curto.
- Refresh token persistido no banco.
- Rotas protegidas por role.
- Expiracao de sessao retorna `440`.

## Auditoria

Toda alteracao importante deve gerar evento:

- login
- criacao de ticket
- troca de status
- troca de prioridade
- atribuicao
- comentario
- fechamento
- exportacao de relatorio

## Escalabilidade realista

O projeto nao precisa ser grande demais. Precisa parecer bem pensado:

- filtros com indices
- paginacao
- logs rastreaveis
- seed demo
- erros padronizados
- testes nos fluxos principais
