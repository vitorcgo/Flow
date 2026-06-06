# Design System

## Cores

```css
:root {
  --bg: #ffffff;
  --surface: #f7f8fa;
  --surface-2: #eef1f4;
  --border: #d9dee5;
  --text: #111827;
  --muted: #667085;
  --primary: #155eef;
  --success: #067647;
  --warning: #b54708;
  --danger: #b42318;
  --critical-bg: #fff1f3;
}
```

## Tipografia

- Fonte: `Inter`, `IBM Plex Sans` ou `Geist`.
- Titulo pagina: 24-28px.
- Titulo secao: 16-18px.
- Texto tabela: 13-14px.
- Labels: 12px uppercase leve.

## Espacamento

- Shell: 16px
- Gap padrao: 12px
- Secao: 24px
- Tabela row: 48px
- Toolbar: 56px

## Raios

- Inputs: 10px
- Botoes: 10px
- Modais/drawers: 16px
- Badges: 999px

## Sombras

Usar pouco:

- dropdown
- modal
- drawer
- menu usuario

## Motion

- 120ms hover
- 180ms dropdown
- 220ms drawer
- sem animacoes exageradas

## Estados

- loading: skeleton
- empty: icone simples + acao
- error: mensagem objetiva + retry
- success: toast curto

## Acessibilidade

- contraste AA
- foco visivel
- botoes com label
- forms com `label`
- tabela navegavel
