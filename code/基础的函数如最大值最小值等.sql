SELECT  
'First half of 2019' As date_range,
sum(invoice_total) As total_sales,
sum(payment_total) As total_payments,
(sum(invoice_total)- sum(payment_total)) as waht_we_expect
FROM sql_invoicing.invoices i
where i.invoice_date between '2019-01-01' and '2019-06-30'
union
SELECT  
'Second half of 2019' As date_range,
sum(invoice_total) As total_sales,
sum(payment_total) As total_payments,
-- (sum(invoice_total)- sum(payment_total)) as waht_we_expect
sum(invoice_total- payment_total) as waht_we_expect
FROM sql_invoicing.invoices i
where i.invoice_date > '2019-07-01'
union
SELECT  
'Total' As date_range,
sum(invoice_total) As total_sales,
sum(payment_total) As total_payments,
(sum(invoice_total)- sum(payment_total)) as waht_we_expect
FROM sql_invoicing.invoices i
