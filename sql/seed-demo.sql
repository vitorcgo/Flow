-- Seed demonstrativo. Senhas devem ser geradas pelo backend com BCrypt.

INSERT INTO departments (name) VALUES
('TI'),
('Financeiro'),
('Operacoes'),
('Atendimento');

-- Usuarios reais devem ser criados por seed Java para aplicar hash de senha.
-- Emails sugeridos:
-- admin@flowdesk.dev
-- manager@flowdesk.dev
-- agent@flowdesk.dev
-- requester@flowdesk.dev

-- Tickets demonstrativos devem cobrir:
-- OPEN, TRIAGE, IN_PROGRESS, WAITING_CUSTOMER, RESOLVED, CLOSED
-- LOW, MEDIUM, HIGH, CRITICAL
-- tickets vencidos e no prazo
