# Manual: Backend Spring Boot

## Criar projeto

Use Spring Initializr.

Dependencias:

- Spring Web
- Spring Security
- Spring Data JPA
- PostgreSQL Driver
- Validation
- Flyway Migration
- Spring Boot Actuator
- Lombok opcional

## Configurar

Arquivos:

- `application.yml`
- `application-dev.yml`
- `application-prod.yml`

## Implementar ordem

1. Health check.
2. Entidades.
3. Repositories.
4. DTOs.
5. Auth.
6. Tickets.
7. Comments.
8. Audit.
9. Dashboard.
10. Reports.

## Testar

```bash
./mvnw test
./mvnw spring-boot:run
```
