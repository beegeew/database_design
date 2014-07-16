update grandorg.employees
set last_name="Backus"
where SSN=983258734;

update grandorg.employees
set SSN=NULL
where emp_id=34;

update grandorg.employee_hours
set mon_hrs=5
where emp_id=12;

update grandorg.employee_hours
set emp_id=484
where emp_id=12;