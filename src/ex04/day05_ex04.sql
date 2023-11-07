CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique ON menu (pizza_name, pizzeria_id);
SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT mn.pizza_name,
       mn.pizzeria_id
FROM menu mn;