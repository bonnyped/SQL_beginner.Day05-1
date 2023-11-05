CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id, order_date);

SET enable_seqscan = FALSE;
EXPLAIN ANALYZE
SELECT person_id,
       menu_id
FROM person_order;
