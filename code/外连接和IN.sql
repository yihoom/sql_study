select 
customer_id,
first_name,
last_name
from sql_store.customers
where sql_store.customers.customer_id IN (
	select customer_id
    from sql_store.orders
    where sql_store.orders.order_id IN (
		select order_id
        from sql_store.order_items
        where sql_store.order_items.product_id = 3
    )
);


select 
customer_id,
first_name,
last_name
from sql_store.customers
left join sql_store.orders using(customer_id)
left join sql_store.order_items using(order_id)
	where sql_store.order_items.product_id = 3


