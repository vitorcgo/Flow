# Queries uteis

## Tickets atrasados

```sql
SELECT *
FROM tickets
WHERE due_at < NOW()
  AND status NOT IN ('RESOLVED', 'CLOSED');
```

## SLA por status

```sql
SELECT status, COUNT(*) AS total
FROM tickets
GROUP BY status
ORDER BY total DESC;
```

## Tickets por responsavel

```sql
SELECT u.name, COUNT(t.id) AS total
FROM users u
LEFT JOIN tickets t ON t.assignee_id = u.id
GROUP BY u.name
ORDER BY total DESC;
```

## Auditoria de um ticket

```sql
SELECT *
FROM audit_events
WHERE entity_type = 'TICKET'
  AND entity_id = :ticket_id
ORDER BY created_at DESC;
```
