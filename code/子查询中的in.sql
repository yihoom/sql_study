
select *
from sql_invoicing.clients
where client_id NOT IN(
select 
	distinct client_id
from sql_invoicing.invoices
)

