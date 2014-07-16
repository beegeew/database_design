insert into grandorg.coupons (coup_code, disc_type, disc_amt) VALUES (3210,"pr",10);
insert into grandorg.coupons (coup_code, disc_type, disc_amt) VALUES (3261,"fr",15);
insert into grandorg.coupons (coup_code, disc_type, disc_amt) VALUES (3039,"mt",5);
insert into grandorg.coupons (coup_code, disc_type, disc_amt) VALUES (3293,"al",3);
insert into grandorg.coupons (coup_code, disc_type, disc_amt) VALUES (9845,"dg",7);

insert into grandorg.customers (cust_id, first_name, last_name, cust_email, address_1,
address_2, city, state, zip_code, acct_bal, phone, cred_rate) VALUES ( 0, "Sarah", "Jones",
"spjones@yahoo.com","123 Ekaf St","" , "George", "NB", 86501, 0.0, 4563758987, "a");
insert into grandorg.customers (cust_id, first_name, last_name, cust_email, address_1,
address_2, city, state, zip_code, acct_bal, phone, cred_rate) VALUES ( 0, "Jonah", "Park",
"jpbond@imagod.net","3524 Sprawl Rd","" , "Cheyenne", "WY", 82341, 3.25, 2546734562, "b");
insert into grandorg.customers (cust_id, first_name, last_name, cust_email, address_1,
address_2, city, state, zip_code, acct_bal, phone, cred_rate) VALUES ( 0, "Cindy", "Mitchell",
"cincin@gmail.com","9076 Tumbleweed Ln","" , "Paris", "TX", 72341, 0.0, 9876574352, "a");
insert into grandorg.customers (cust_id, first_name, last_name, cust_email, address_1,
address_2, city, state, zip_code, acct_bal, phone, cred_rate) VALUES ( 0, "Zanita", "Carlisle",
"sparklybabe33@aol.com","546 Loser Way","" , "Bad Town", "NJ", 86501, 546.0, 2736491038, "f");
insert into grandorg.customers (cust_id, first_name, last_name, cust_email, address_1,
address_2, city, state, zip_code, acct_bal, phone, cred_rate) VALUES ( 0, "Krishlin", "Amazdia",
"krishamaz@nyu.edu","9875 125Th St NE","Apt 3B" , "New York", "NY", 10101, 32.0, 9812387645, "c");

insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (12, "Grandma", "Georgia", 2354672985, "135 Meandering Way", 123123452, "b", 0,50);
insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (65, "Misti", "Johns", 3746253463, "934 Main St", 453786278, "s", 23,9);
insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (976, "Kelly", "Zuniga", 9384637293, "RT 5 Box 3B", 983258734, "s", 15,9);
insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (52, "Amy", "Parker", 2838475820, "785 Indiana Rd", 209823444, "m", 4,25);
insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (34, "Robert", "Hazulackous", 6354827374, "635 Putnam Ave", 65609345, "g", 3,7);

insert into grandorg.employee_hours (emp_id, emp_type, emp_name, sun_hrs, mon_hrs, tues_hrs, wed_hrs, thurs_hrs,
fri_hrs, sat_hrs) values (12, "b", "Grandma", 0,0,0,0,0,12,10);
insert into grandorg.employee_hours (emp_id, emp_type, emp_name, sun_hrs, mon_hrs, tues_hrs, wed_hrs, thurs_hrs,
fri_hrs, sat_hrs) values (65, "s", "Misti", 0,8,5,5,8,12,8);
insert into grandorg.employee_hours (emp_id, emp_type, emp_name, sun_hrs, mon_hrs, tues_hrs, wed_hrs, thurs_hrs,
fri_hrs, sat_hrs) values (976, "s", "Kelly", 8,8,10,0,4,7,0);
insert into grandorg.employee_hours (emp_id, emp_type, emp_name, sun_hrs, mon_hrs, tues_hrs, wed_hrs, thurs_hrs,
fri_hrs, sat_hrs) values (52, "m", "Amy", 0,8,8,8,8,8,0);
insert into grandorg.employee_hours (emp_id, emp_type, emp_name, sun_hrs, mon_hrs, tues_hrs, wed_hrs, thurs_hrs,
fri_hrs, sat_hrs) values (34, "g", "Robert", 10,10,0,0,0,10,10);

insert into online_orders (order_id, cust_id, total, del_date, status, pmt_stat, cp_code)
values (0,2,25.00,20120414,"n","p",0);
insert into online_orders (order_id, cust_id, total, del_date, status, pmt_stat, cp_code)
values (0,3,48.37,20120331,"n","p",0);
insert into online_orders (order_id, cust_id, total, del_date, status, pmt_stat, cp_code)
values (0,4,386.99,20991231,"n","n",0);
insert into online_orders (order_id, cust_id, total, del_date, status, pmt_stat, cp_code)
values (0,5,39.00,20120401,"n","p",0);
insert into online_orders (order_id, cust_id, total, del_date, status, pmt_stat, cp_code)
values (0,6,225.70,20991231,"d","n",0);

insert into products (prod_id, prod_name, prod_upc, prod_desc, price, discount, image, quantity)
values (0,"Soap",123848,"Bubbly Bath Soap",15,0,"",150);
insert into products (prod_id, prod_name, prod_upc, prod_desc, price, discount, image, quantity)
values (0,"Wheat Grass",398472,"",13,0,"",18);
insert into products (prod_id, prod_name, prod_upc, prod_desc, price, discount, image, quantity)
values (0,"Oranges",90384,"Fresh Oranges",7,0,"",31);
insert into products (prod_id, prod_name, prod_upc, prod_desc, price, discount, image, quantity)
values (0,"Apples",928374,"Granny Smith Apples",8,0,"",42);
insert into products (prod_id, prod_name, prod_upc, prod_desc, price, discount, image, quantity)
values (0,"Razors",37487,"Razors",3,0,"",0);

insert into grandorg.employees (emp_id, first_name, last_name, phone, address, SSN, emp_type, up_hrs, wage)
Values (12, "Maya", "Katzlaka", 6354827374, "635 Putnam Ave", 372119827, "g", 3,7);