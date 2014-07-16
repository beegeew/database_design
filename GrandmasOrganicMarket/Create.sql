create schema grandorg;
use grandorg;

create table customers
(
    cust_id     INT(8) NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(15) NOT NULL,
    last_name   VARCHAR(15) NOT NULL,
    cust_email  VARCHAR(25) UNIQUE,
    address_1   VARCHAR(25) NOT NULL,
    address_2   VARCHAR(25),
    city        VARCHAR(15) NOT NULL,
    state       VARCHAR(2) NOT NULL,
    zip_code    INT(9) NOT NULL,
    acct_bal    DEC(10,2),
    phone       INT(10) NOT NULL,
    cred_rate   VARCHAR(1) NOT NULL,
    PRIMARY KEY (cust_id)
);

create table coupons
(
    coup_code   INT(10) NOT NULL,
    disc_type   CHAR(2) NOT NULL,
    disc_amt    INT(5) NOT NULL,
    PRIMARY KEY (coup_code)
);

create table online_orders
(
    order_id    INT(8) UNIQUE AUTO_INCREMENT,
    cust_id     INT(8) NOT NULL,
    total       DEC(5,2) NOT NULL,
    del_date    DATE,
    status      CHAR(1) NOT NULL,
    pmt_stat    CHAR(1) NOT NULL,
    cp_code     INT(10),
    PRIMARY KEY (order_id),
    FOREIGN KEY (cust_id) REFERENCES grandorg.customers (cust_id),
    FOREIGN KEY (cp_code) references grandorg.coupons (coup_code)
);

create table products
(
    prod_id     int(10) NOT NULL AUTO_INCREMENT,
    prod_name   varchar(20) NOT NULL,
    prod_upc    int(12) NOT NULL,
    prod_desc   varchar(25),
    price       int(5) NOT NULL,
    discount    int(23),
    image       longblob,
    quantity    int(5) NOT NULL,
    PRIMARY KEY (prod_id)
);

create table online_order_details
(
    ord_id              int(8) NOT NULL,
    prod_id             int(10) NOT NULL,
    prod_upc            INT(12),
    quantity            int(2) NOT NULL,
    line_item_cost      DEC(6,2) NOT NULL,
    PRIMARY KEY(ord_id,prod_id),
    FOREIGN KEY(prod_id) references grandorg.products(prod_id),
    FOREIGN KEY(prod_upc) references grandorg.products (prod_upc),
    FOREIGN KEY(ord_id) references grandorg.online_orders(order_id)
);

create table store_sales
(
    recpt_id        int(8) NOT NULL,
    quant           int(3) NOT NULL,
    total           dec(4,2) NOT NULL,
    date            date,
    prod_id         int(10) NOT NULL,
    prod_upc        int(10) NOT NULL,
    PRIMARY KEY(recpt_id,prod_id),
    FOREIGN KEY(prod_id) references grandorg.products(prod_id),
    FOREIGN KEY(prod_upc) references grandorg.products(prod_upc)
);

create table employees
(
    emp_id          int(6) AUTO_INCREMENT NOT NULL,
    first_name      varchar(15) NOT NULL,
    last_name       varchar(15) NOT NULL,
    phone           int(10),
    address         varchar(30) NOT NULL,
    SSN             int(9) NOT NULL,
    emp_type        char(1) NOT NULL,
    up_hrs          int(3),
    wage            int(5),
    PRIMARY KEY (emp_id,SSN)
);

create table employee_hours
(
    emp_id          int(6) NOT NULL,
    emp_type        char(1) NOT NULL,
    emp_name        char(32) NOT NULL,
    sun_hrs         int(2),
    mon_hrs         int(2),
    tues_hrs        int(2),
    wed_hrs         int(2),
    thurs_hrs       int(2),
    fri_hrs         int(2),
    sat_hrs         int(2),
    PRIMARY KEY(emp_id),
    FOREIGN KEY (emp_id) references grandorg.employee (emp_ip),
    FOREIGN KEY (emp_type) references grandorg.employee (emp_type)
);
