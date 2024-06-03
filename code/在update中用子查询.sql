update sql_store.orders
	set comments = 'Gold Customer'
where customer_id IN 
(SELECT 
	customer_id
FROM sql_store.customers
where points >= 3000)
