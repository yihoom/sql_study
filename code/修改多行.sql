update sql_invoicing.invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where client_id in (3,4);
select * from sql_invoicing.invoices