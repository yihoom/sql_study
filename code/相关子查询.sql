
select *
from sql_invoicing.invoices i
where i.invoice_total > (
	select AVG(invoice_total)
	from sql_invoicing.invoices
    where client_id = i.client_id
)

