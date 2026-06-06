# 02 - Backend base

## Objetivo

Criar backend Java Spring Boot com estrutura profissional e health check funcionando.

## Antes de comecar

Ler:

- `flowdesk/iniciar/00-contexto-fixo.md`
- `flowdesk/manual/02-backend-spring.md`
- `flowdesk/backend/README.md`
- `flowdesk/arquitetura/decisoes.md`

## Tarefas

1. Criar projeto Spring Boot em `backend`.
2. Usar Java 21 e Spring Boot 3.
3. Adicionar dependencias:

- Spring Web
- Spring Security
- Spring Data JPA
- Bean Validation
- PostgreSQL Driver
- Flyway
- OpenAPI/Swagger
- Actuator
- Lombok, se fizer sentido

4. Criar pacotes:

```text
config
autenticacao
usuarios
departamentos
chamados
comentarios
auditoria
relatorios
comum
```

5. Criar response padrao.
6. Criar exception handler global.
7. Criar endpoint:

```text
GET /actuator/health
GET /api/health
```
8. Usar nomes em portugues para classes, pacotes de dominio, DTOs, metodos e campos.
9. Comentarios de codigo, quando necessarios, devem ser em portugues.

## Verificacao

Rodar:

```bash
./mvnw test
./mvnw spring-boot:run
```

Testar:

```bash
curl http://localhost:8080/api/health
```

## Saida esperada

Backend sobe localmente, responde health e possui estrutura pronta para banco.

Nao criar commit. Sugerir nomes de commit em portugues.
