# Tela: Login

## Objetivo

Permitir entrada segura no sistema.

## Layout

- Centro da tela.
- Formulario compacto.
- Logo FlowDesk pequena.
- Campos:
  - email
  - senha
- Checkbox "manter conectado".
- Link "esqueci minha senha" opcional.

## Estados

- Loading no botao.
- Erro 400: campos invalidos.
- Erro 401: credenciais invalidas.
- Erro 440: sessao expirada, pedir novo login.

## Regras

- Nao mostrar se email existe.
- Nao salvar senha.
- Redirecionar para dashboard apos login.

## API

`POST /api/auth/login`
