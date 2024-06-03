SELECT 
sql_store.customers.customer_id,
sql_store.customers.first_name,
sql_store.customers.points,
'Bronze' AS type
FROM sql_store.customers
where sql_store.customers.points < 2000
Union
SELECT 
sql_store.customers.customer_id,
sql_store.customers.first_name,
sql_store.customers.points,
'Silver' AS type
FROM sql_store.customers
where sql_store.customers.points >= 2000 and  sql_store.customers.points < 3000
union
SELECT 
sql_store.customers.customer_id,
sql_store.customers.first_name,
sql_store.customers.points,
'Gold' AS type
FROM sql_store.customers
where sql_store.customers.points >= 2000 and sql_store.customers.points < 3000
order by first_name
