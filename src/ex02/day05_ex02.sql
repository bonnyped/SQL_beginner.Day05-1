CREATE INDEX idx_person_name ON person (UPPER(person.name));

SET enable_seqscan = OFF;
EXPLAIN ANALYZE
SELECT name
FROM person
WHERE UPPER(name) = 'Denis';