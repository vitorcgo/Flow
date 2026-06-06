-- FlowDesk schema PostgreSQL

CREATE TABLE departments (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(120) NOT NULL UNIQUE,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE users (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(160) NOT NULL,
  email VARCHAR(180) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role VARCHAR(30) NOT NULL CHECK (role IN ('ADMIN', 'MANAGER', 'AGENT', 'REQUESTER')),
  department_id BIGINT REFERENCES departments(id),
  active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE refresh_tokens (
  id BIGSERIAL PRIMARY KEY,
  user_id BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  token_hash VARCHAR(255) NOT NULL UNIQUE,
  expires_at TIMESTAMP NOT NULL,
  revoked_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE tickets (
  id BIGSERIAL PRIMARY KEY,
  protocol VARCHAR(30) NOT NULL UNIQUE,
  title VARCHAR(180) NOT NULL,
  description TEXT NOT NULL,
  status VARCHAR(40) NOT NULL CHECK (status IN ('OPEN', 'TRIAGE', 'IN_PROGRESS', 'WAITING_CUSTOMER', 'RESOLVED', 'CLOSED')),
  priority VARCHAR(20) NOT NULL CHECK (priority IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')),
  requester_id BIGINT NOT NULL REFERENCES users(id),
  assignee_id BIGINT REFERENCES users(id),
  department_id BIGINT NOT NULL REFERENCES departments(id),
  due_at TIMESTAMP NOT NULL,
  first_response_at TIMESTAMP,
  resolved_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE ticket_comments (
  id BIGSERIAL PRIMARY KEY,
  ticket_id BIGINT NOT NULL REFERENCES tickets(id) ON DELETE CASCADE,
  author_id BIGINT NOT NULL REFERENCES users(id),
  body TEXT NOT NULL,
  internal BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE ticket_tags (
  id BIGSERIAL PRIMARY KEY,
  ticket_id BIGINT NOT NULL REFERENCES tickets(id) ON DELETE CASCADE,
  name VARCHAR(60) NOT NULL
);

CREATE TABLE audit_events (
  id BIGSERIAL PRIMARY KEY,
  actor_id BIGINT REFERENCES users(id),
  entity_type VARCHAR(60) NOT NULL,
  entity_id BIGINT NOT NULL,
  action VARCHAR(80) NOT NULL,
  before_value JSONB,
  after_value JSONB,
  request_id VARCHAR(80),
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_tickets_status ON tickets(status);
CREATE INDEX idx_tickets_priority ON tickets(priority);
CREATE INDEX idx_tickets_assignee ON tickets(assignee_id);
CREATE INDEX idx_tickets_department ON tickets(department_id);
CREATE INDEX idx_tickets_due_at ON tickets(due_at);
CREATE INDEX idx_audit_entity ON audit_events(entity_type, entity_id);
CREATE INDEX idx_audit_request ON audit_events(request_id);
