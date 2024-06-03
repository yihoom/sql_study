SELECT 
p.date,
c.name as client,
p.amount,
pm.name as payment_method
from sql_invoicing.payments p
left join sql_invoicing.clients c
	using(client_id)
left join sql_invoicing.payment_methods pm
	on p.payment_method = pm.payment_method_id