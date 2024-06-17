SELECT 
p.date,
pm.name as payment_method,
sum(p.amount) as total_payments
FROM sql_invoicing.payments p
left join sql_invoicing.payment_methods pm
on p.payment_method = pm.payment_method_id
group by p.date, pm.name
order by p.date
