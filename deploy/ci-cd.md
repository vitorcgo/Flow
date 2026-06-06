# CI/CD

## GitHub Actions

Pipeline desejado:

1. Checkout
2. Setup Java
3. Backend tests
4. Setup Node
5. Frontend install
6. Frontend build
7. Optional Docker build

## Backend checks

```bash
./mvnw test
./mvnw package -DskipTests
```

## Frontend checks

```bash
npm ci
npm run build
```

## Branches

- `main`: deploy
- `dev`: integracao
- feature branches: trabalho isolado

## Protecao

Antes de merge:

- testes backend
- build frontend
- review rapido
