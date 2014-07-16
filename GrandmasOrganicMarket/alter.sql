Alter table grandorg.employees add
constraint ssncheck check (SSN > 999999999 and SSN <1000000000);

Alter table grandorg.employees add
constraint phonecheck check (phone > 2000000000 and phone < 10000000000);

Alter table grandorg.employee_hours add 
constraint FK_emp_hours FOREIGN KEY (emp_id) references grandorg.employees (emp_id);

Alter table grandorg.customers add
constraint phonecheck check (phone > 2000000000 and phone < 10000000000);

Alter table grandorg.online_orders add
constraint FK_cust_id FOREIGN KEY (cust_id) references grandorg.customers (cust_id);

Alter table grandorg.online_order_details add
constraint FK_ord_id FOREIGN KEY (ord_id) references grandorg.online_orders (ord_id);

Alter table grandorg.online_order_details add
constraint FK_prod_id FOREIGN KEY (prod_id) references grandorg.products (prod_id);

Alter table grandorg.online_order_details add
constraint FK_prod_upc FOREIGN KEY (prod_upc) references grandorg.products (prod_upc);

Alter table grandorg.store_sales add
constraint FK_ss_prod_id FOREIGN KEY (prod_id) references grandorg.products (prod_id);

Alter table grandorg.store_sales add
constraint FK_ss_prod_upc FOREIGN KEY (prod_upc) references grandorg.products (prod_upc);

Alter table grandorg.online_orders add
constraint FK_coup_code FOREIGN KEY (cp_code) references grandorg.coupons (coup_code);

alter table grandorg.customers modify phone bigint(10);

alter table grandorg.employees modify phone bigint(10);

alter table grandorg.employees modify emp_id int(6) unique;