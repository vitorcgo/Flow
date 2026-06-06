# Endpoints

## Auth

```http
POST /api/auth/login
POST /api/auth/refresh
POST /api/auth/logout
GET  /api/auth/me
```

## Dashboard

```http
GET /api/dashboard/summary
GET /api/dashboard/activity
```

## Tickets

```http
GET    /api/tickets
POST   /api/tickets
GET    /api/tickets/{id}
PATCH  /api/tickets/{id}
PATCH  /api/tickets/{id}/status
POST   /api/tickets/{id}/comments
GET    /api/tickets/{id}/audit
```

## Users

```http
GET   /api/users
POST  /api/users
PATCH /api/users/{id}
PATCH /api/users/{id}/status
```

## Departments

```http
GET  /api/departments
POST /api/departments
```

## Audit

```http
GET /api/audit-events
```

## Reports

```http
GET /api/reports/summary
GET /api/reports/export.csv
```
