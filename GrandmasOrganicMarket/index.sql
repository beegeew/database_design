create index cust_phone on grandorg.customers (phone);

create index emp_phone on grandorg.employees (phone);

create index emp_name on grandorg.employee_hours (emp_name);

create index coups on grandorg.coupons (coup_code);

create index deldate on grandorg.online_orders (del_date);

create index disclevel on grandorg.coupons (disc_amt);