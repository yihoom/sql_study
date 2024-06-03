insert into sql_store.orders (customer_id, order_date, status)
values (10, '2024-06-02', 1);
insert into sql_store.order_items (order_id, product_id, quantity, unit_price)
values (last_insert_id(), 10, 10 , 12)