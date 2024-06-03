create table invoices_archive As
SELECT 
i.invoice_id,
i.number,
c.name,
i.invoice_total,
i.payment_total,
i.invoice_date,
i.due_date,
i.payment_date
from sql_invoicing.invoices i
join sql_invoicing.clients c
	on i.client_id = c.client_id
where payment_date is not null