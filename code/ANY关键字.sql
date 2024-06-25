

select *
from sql_invoicing.invoices
where client_id = ANY(
	select client_id
	from sql_invoicing.invoices
	group by client_id
	having count(*) > 2
)



