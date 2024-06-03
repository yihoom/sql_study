delete from sql_invoicing.invoices
where client_id = (
select 
client_id
from sql_invoicing.clients
where name = 'Myworks'
)

