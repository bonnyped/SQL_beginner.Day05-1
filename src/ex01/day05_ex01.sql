EXPLAIN ANALYZE
SELECT mn.pizza_name,
       zz.name
FROM menu mn
         JOIN pizzeria zz ON mn.pizzeria_id = zz.id;

SET enable_seqscan = FALSE;

EXPLAIN ANALYZE
SELECT mn.pizza_name,
       zz.name pizzeria_name
FROM menu mn
         JOIN pizzeria zz ON mn.pizzeria_id = zz.id;