# Plano free sem Cloudflare e sem Supabase

## Decisao

FlowDesk nao deve depender apenas de ambiente local.

Plano principal:

- Frontend: Vercel Hobby
- Backend: Oracle Cloud Always Free VM
- Banco: Aiven for PostgreSQL Free

Plano reserva:

- Frontend: Vercel Hobby ou Netlify Free
- Backend: Koyeb Free Web Service ou Render Free Web Service
- Banco: Neon Free

## Por que esse plano

Vercel e bom para frontend estatico React/Vite, com deploy por Git, HTTPS e preview.

Oracle Cloud Always Free e o melhor encaixe para backend 24/7 sem pagar, porque roda como VM.

Aiven PostgreSQL free nao exige cartao, nao tem limite fixo de 30 dias e serve bem para demo pequena.

Koyeb e Render servem como reserva para backend, mas nao sao 24/7 no free:

- Koyeb Free Instance escala para zero apos 1 hora sem trafego.
- Render Free Web Service dorme apos 15 minutos sem trafego.

Render Postgres free nao deve ser banco principal, porque expira depois de 30 dias.

## Arquitetura publicada

```text
Usuario
  |
  v
Vercel Frontend
  |
  v
Oracle Cloud VM Backend Spring Boot
  |
  v
Aiven PostgreSQL
```

## Variaveis do backend

```env
SPRING_PROFILES_ACTIVE=prod
DATABASE_URL=
DATABASE_USERNAME=
DATABASE_PASSWORD=
JWT_SECRET=
JWT_ACCESS_TTL_MINUTES=15
JWT_REFRESH_TTL_DAYS=7
CORS_ALLOWED_ORIGINS=https://flowdesk.vercel.app
JAVA_TOOL_OPTIONS=-XX:MaxRAMPercentage=75 -XX:+UseSerialGC
```

## Variaveis do frontend

```env
VITE_API_URL=https://api.seu-dominio.com/api
```

## Passo a passo recomendado

1. Criar banco no Aiven.
2. Copiar host, porta, usuario, senha e database.
3. Configurar backend para aceitar variaveis separadas ou URL JDBC.
4. Criar VM Oracle Cloud Always Free.
5. Instalar Docker, Docker Compose e Nginx na VM.
6. Clonar repo na VM.
7. Rodar backend em container.
8. Configurar Nginx como proxy reverso.
9. Configurar HTTPS.
10. Configurar health check em `/actuator/health`.
11. Publicar frontend na Vercel.
12. Configurar `VITE_API_URL` com URL real do backend.
13. Ajustar CORS no backend para aceitar dominio da Vercel.
14. Rodar migrations.
15. Inserir seed demo.
16. Testar login, dashboard, chamados e auditoria.

## Passos manuais Oracle Cloud

1. Criar conta Oracle Cloud.
2. Escolher regiao com cuidado, porque Always Free fica preso na home region.
3. Criar VM Ampere A1 Always Free, se houver capacidade.
4. Abrir portas `22`, `80` e `443`.
5. Criar chave SSH.
6. Acessar VM por SSH.
7. Instalar Docker.
8. Configurar firewall da VM.
9. Configurar dominio ou subdominio apontando para IP publico.

## Observacoes Oracle Cloud

- Pode pedir cartao no cadastro.
- Pode dar falta temporaria de capacidade para VM Always Free.
- Usar apenas recursos marcados como Always Free.
- Cuidar para nao criar recurso pago sem querer.
- Nao colocar banco dentro da VM se quiser banco gerenciado e facil de demonstrar.

## Dockerfile backend sugerido

```dockerfile
FROM eclipse-temurin:21-jdk AS build
WORKDIR /app
COPY . .
RUN ./mvnw -DskipTests package

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

## Ajustes para free tier

- Manter backend leve.
- Evitar processamento pesado no startup.
- Usar pool pequeno de conexoes.
- Limitar conexoes Hikari.
- Evitar upload local.
- Nao salvar arquivo em disco do servidor.
- Usar seed pequeno.

## Configuracao Hikari sugerida

```properties
spring.datasource.hikari.maximum-pool-size=3
spring.datasource.hikari.minimum-idle=1
spring.datasource.hikari.connection-timeout=30000
spring.datasource.hikari.idle-timeout=600000
```

## Quando usar Koyeb ou Render

Usar Koyeb ou Render apenas se aceitar backend dormir e acordar no primeiro acesso.

No Koyeb:

- Free Instance escala para zero apos 1 hora sem trafego
- acorda quando recebe request
- bom para demo simples

No Render:

- publicar backend como Web Service
- aceitar spin down no free
- esperar cold start depois de tempo parado
- nao usar Render Postgres free como banco definitivo

## Quando usar Neon

Usar Neon se Aiven limitar regiao, conta ou conexoes.

Neon tambem serve bem para demo e portfolio, principalmente com banco pequeno.

## Checklist de publicacao

- [ ] Backend publicado fora do local.
- [ ] Frontend publicado fora do local.
- [ ] Banco publicado fora do local.
- [ ] Backend 24/7 em Oracle Cloud Always Free.
- [ ] Sem Cloudflare.
- [ ] Sem Supabase.
- [ ] Sem Render Postgres free como banco principal.
- [ ] CORS configurado.
- [ ] Health check funcionando.
- [ ] Migrations aplicadas.
- [ ] Seed demo inserido.
- [ ] Usuario demo testado.
- [ ] Links prontos para portfolio.

## Plano se free tier ficar apertado

Se free tier incomodar muito, manter arquitetura igual e trocar apenas o servico limitado por plano pago pequeno:

- manter frontend na Vercel
- backend em Koyeb, Render ou Oracle pago pequeno
- banco Aiven Developer ou Neon Launch

Isso evita ficar refem de cold start ou limite apertado, mas nao e obrigatorio para demo inicial.
