# Modulo Auth

## Responsabilidade

Autenticar usuario, emitir tokens e controlar sessao.

## Entidades

- User
- RefreshToken

## Fluxos

Login:

1. Recebe email e senha.
2. Valida credenciais.
3. Verifica usuario ativo.
4. Gera access token.
5. Gera refresh token.
6. Retorna usuario e permissoes.

Refresh:

1. Recebe refresh token.
2. Verifica expiracao.
3. Revoga token antigo.
4. Emite novo par.

Logout:

1. Revoga refresh token.
2. Retorna 204.

## Erros

- 400 payload invalido
- 401 credenciais invalidas
- 440 sessao expirada no frontend
