select 
	pm.name As payment_method,
    sum(p.amount) as  total
from sql_invoicing.payments p
join sql_invoicing.payment_methods pm
	on p.payment_method = pm.payment_method_id
group by pm.name with rollup
-- rollup不能加别名 
    