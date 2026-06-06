# Technical Spec

## Arquitetura

Frontend e backend separados.

```text
React TypeScript SPA
        |
        | HTTPS JSON
        v
Spring Boot REST API
        |
        | JDBC/JPA
        v
PostgreSQL
```

## Frontend

- React
- TypeScript
- Vite
- React Router
- TanStack Query
- Zustand ou Context para estado leve
- CSS modular ou Tailwind, sem visual generico
- Axios/fetch client centralizado

## Backend

- Java 21
- Spring Boot 3
- Spring Web
- Spring Security
- Spring Data JPA
- Bean Validation
- PostgreSQL Driver
- Flyway ou Liquibase
- OpenAPI/Swagger
- JUnit
- Testcontainers opcional

## Banco

- PostgreSQL
- UUID ou BIGSERIAL
- timestamps padronizados
- indices em filtros comuns
- auditoria em tabela separada

## Autenticacao

- JWT access token curto
- refresh token persistido
- roles por usuario
- rotas protegidas por perfil

## Observabilidade

- `request_id` por request
- log JSON
- status code
- metodo
- path
- user_id quando autenticado
- tempo de resposta

## Padroes

- DTOs para entrada/saida
- entities protegidas
- services com regra de negocio
- controllers magros
- exceptions centralizadas
- responses padronizadas

## Ambientes

- local
- staging/demo
- production

## Criterio de pronto tecnico

- API documentada
- testes passando
- seed demo
- lint/build frontend
- migrations versionadas
- deploy funcionando
