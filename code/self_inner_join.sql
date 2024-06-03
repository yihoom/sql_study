SELECT 
e.employee_id,
e.first_name As name
FROM sql_hr.employees e
left join sql_hr.employees m
	on e.reports_to = m.employee_id;