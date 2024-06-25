
select invoice_total
from sql_invoicing.invoices
where invoice_total > all(
	select invoice_total
	from sql_invoicing.invoices
	where client_id = 3
)

