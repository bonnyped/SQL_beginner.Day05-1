CREATE UNIQUE INDEX IF NOT EXISTS idx_person_order_order_date ON person_order (person_id, menu_id) WHERE order_date = '2022-01-01';

SET enable_seqscan = FALSE;

EXPLAIN ANALYZE
SELECT *
FROM person_order po
WHERE po.order_date = '2022-01-01';