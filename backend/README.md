# Backend Plan

## Arquitetura de pacotes

```text
com.flowdesk
  config/
  security/
  common/
  auth/
  users/
  departments/
  tickets/
  comments/
  audit/
  reports/
  notifications/
```

## Padrao por modulo

```text
controller
service
repository
entity
dto
mapper
exception
```

## Regras

- Controller nao contem regra de negocio.
- Service valida permissao e regra.
- Repository so acessa banco.
- DTO evita expor entity inteira.
- Exception handler padroniza erros.

## Recursos obrigatorios

- Auth JWT
- RBAC
- CRUD ticket
- Status workflow
- Comentarios
- Auditoria
- Dashboard
- Relatorios
- Swagger
- Logs estruturados
