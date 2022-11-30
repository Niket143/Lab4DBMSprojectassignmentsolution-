create database Lab;
use Lab ;

/* 1. creating tables */


create table supplier(
sup_id int primary key auto_increment,
sup_name varchar(50) not null , 
sup_city varchar(50) not null,
sup_phone varchar(50) not null);

create table customer(
cus_id int primary key ,
cus_name varchar(20) not null ,
cus_phone varchar(10) not null ,
cus_city varchar(30) not null,
cust_gender char);

create table category (
cat_id int primary key auto_increment,
cat_name varchar (20) not null);

create table product(
pro_id int primary key auto_increment ,
pro_name varchar(20) not null default "Dummy",
pro_desc varchar(60), 
cat_id int,
foreign key(cat_id) references category(cat_id));

create table supplier_pricing(
pricing_id int primary key,
pro_id int ,
foreign key(pro_id) references product (pro_id),
sup_id int ,
foreign key (sup_id) references supplier(sup_id),
sup_price int not null );

create table Ordr(
ord_id int primary key auto_increment ,
ord_amt int not null ,
ord_date date not null ,
cus_id int ,
foreign key(cus_id) references customer(cus_id),
pricing_id int ,
foreign key(pricing_id) references supplier_pricing (pricing_id));


create table rating(
rat_id int primary key auto_increment ,
ord_id int ,
rat_ratstars int not null ,
foreign key(ord_id) references ordr(ord_id));


/* 2. Inserting values in tables */

insert into supplier (sup_name,sup_city,sup_phone) values ('Rajesh Retails','Delhi',1234567890);
insert into supplier (sup_name,sup_city,sup_phone) values ('Appario Ltd.','Mumbai',2589631470);
insert into supplier (sup_name,sup_city,sup_phone) values ('Knome products','Banglore',9785462315);
insert into supplier (sup_name,sup_city,sup_phone) values ('Bansal Retails','Kochi',8975463285);
insert into supplier (sup_name,sup_city,sup_phone) values ('Mittal Ltd.','Lucknow',7898456532);


INSERT INTO customer (cus_id ,cus_name,cus_phone , cus_city , cust_gender)
VALUES (1 ,'AAKASH',9999999999,'DELHI','M');
INSERT INTO customer (cus_id ,cus_name,cus_phone , cus_city , cust_gender)
VALUES (2 ,'AMAN',9785463215,'Noida','M');
INSERT INTO customer (cus_id ,cus_name,cus_phone , cus_city , cust_gender)
VALUES (3 ,'NEHA',9999999999,'Mumbai','F');
INSERT INTO customer (cus_id ,cus_name,cus_phone , cus_city , cust_gender)
VALUES (4 ,'MEGHA',9994562399,'Kolkata','F');
INSERT INTO customer (cus_id ,cus_name,cus_phone , cus_city , cust_gender)
VALUES (5 ,'PULKIT',7895999999,'Lucknow','M');


Insert into category (cat_name) values ('Books');
Insert into category (cat_name) values ('Games');
Insert into category (cat_name) values ('Groceries');
Insert into category (cat_name) values ('Electric');
Insert into category (cat_name) values ('clothes');


insert into product (pro_name,pro_desc,cat_id) values ('GTA V','Windows 7 and above with i5 processor and 8GB RAM',2);
insert into product (pro_name,pro_desc,cat_id) values ('TSHIRT','SIZE-L with Black, Blue and White variations',5);
insert into product (pro_name,pro_desc,cat_id) values ('ROG LAPTOP','Windows 10 with 15inch screen, i7 processor, 1TB SSD',4);
insert into product (pro_name,pro_desc,cat_id) values ('OATS','Highly Nutritious from Nestle',3);
insert into product (pro_name,pro_desc,cat_id) values ('HARRY POTTER','Best Collection of all time by J.K Rowling',1);
insert into product (pro_name,pro_desc,cat_id) values ('MILK','1L Toned MIlk',3);
insert into product (pro_name,pro_desc,cat_id) values ('Boat Earphones','1.5Meter long Dolby Atmos',4);
insert into product (pro_name,pro_desc,cat_id) values ('Jeans','Stretchable Denim Jeans with various sizes and color',5);
insert into product (pro_name,pro_desc,cat_id) values ('Project IGI','compatible with windows 7 and above',2);
insert into product (pro_name,pro_desc,cat_id) values ('Hoodie','Black GUCCI for 13 yrs and above',5);
insert into product (pro_name,pro_desc,cat_id) values ('Rich Dad Poor Dad','Written by RObert Kiyosaki',1);
insert into product (pro_name,pro_desc,cat_id) values ('Train Your Brain','By Shireen Stephen',1);


insert into ordr (ORD_ID, ORD_AMT, ORD_DATE, CUS_ID, PRICING_ID) values
 (101, 1500 	,"2021/10/06", 2, 1),
 (102, 1000 	,"2021/10/12", 3, 5),
 (103, 30000	,"2021/09/16", 5, 2),
 (104, 1500 	,"2021/10/05", 1, 1),
 (105, 3000 	,"2021/08/16", 4, 3),
 (106, 1450 	,"2021/08/18", 1, 9),
 (107, 789 	    ,"2021/09/01", 3, 7),
 (108, 780  	,"2021/09/07", 5, 6),
 (109, 3000 	,"2021/00/10", 5, 3),
 (110, 2500 	,"2021/09/10", 2, 4),
 (111, 1000 	,"2021/09/15", 4, 5),
 (112, 789   	,"2021/09/16", 4, 7),
 (113, 31000	,"2021/09/16", 1, 8),
 (114, 1000 	,"2021/09/16", 3, 5),
 (115, 3000 	,"2021/09/16", 5, 3),
 (116, 99 	    ,"2021/09/17", 2, 14);


Insert into rating (rat_ratstars) values (4);
Insert into rating (rat_ratstars) values (3);
Insert into rating (rat_ratstars) values (1);
Insert into rating (rat_ratstars) values (2);
Insert into rating (rat_ratstars) values (4);
Insert into rating (rat_ratstars) values (3);
Insert into rating (rat_ratstars) values (4);
Insert into rating (rat_ratstars) values (4);
Insert into rating (rat_ratstars) values (3);
Insert into rating (rat_ratstars) values (5);
Insert into rating (rat_ratstars) values (3);
Insert into rating (rat_ratstars) values (4);
Insert into rating (rat_ratstars) values (2);
Insert into rating (rat_ratstars) values (1);
Insert into rating (rat_ratstars) values (1);
Insert into rating (rat_ratstars) values (0);


insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (1,1,2,1500);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (2,3,5,30000);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (3,5,1,3000);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (4,2,3,2500);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (5,4,1,1000);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (6,12,2,780);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (7,12,4,789);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (8,3,1,31000);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (9,1,5,1450);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (10,4,2,999);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (11,7,3,549);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (12,7,4,529);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (13,6,2,105);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (14,6,1,99);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (15,2,5,2999);
insert into supplier_pricing (pricing_id,pro_id,sup_id,sup_price) values (16,5,2,2999);

/* 3. Display the total number of customers based on gender who have placed orders of worth at least Rs.3000 */
select count(*), c.CUST_GENDER from customer as c inner join ordr as o on c.CUS_ID = o.CUS_ID where o.ORD_AMT>=3000 group by c.CUST_GENDER;

  
  
-- 4. Display all the orders along with product name ordered by a customer having Customer_Id=2

select supplier.SUP_NAME, product.PRO_NAME, supplier_pricing.PRICING_ID, ordr.ORD_ID, customer.CUS_NAME from ordr 
inner join customer on ordr.CUS_ID=customer.CUS_ID 
inner join supplier_pricing on ordr.PRICING_ID=supplier_pricing.PRICING_ID
inner join supplier on supplier.SUP_ID=supplier_pricing.SUP_ID
inner join product on supplier_pricing.PRO_ID=product.PRO_ID
where ordr.CUS_ID=2;

  
  -- 5) Display the Supplier details who can supply more than one product.
        select * from supplier where SUP_ID in (select SUP_ID from supplier_pricing group by SUP_ID having count(SUP_ID)>1);

  
  -- 6) Find the least expensive product from each category and print the table with 
   --   category id, name, product name and price of the product

select cat.CAT_ID, cat.CAT_NAME, p.PRO_NAME, sp.SUP_PRICE from category as cat
inner join product as p on cat.CAT_ID=p.CAT_ID
inner join supplier_pricing as sp on sp.PRO_ID=p.PRO_ID
group by cat.CAT_NAME having min(sp.SUP_PRICE);


-- 7) Display the Id and Name of the Product ordered after “2021-10-05”.
select PRO_ID, PRO_NAME from product where PRO_ID in (select PRO_ID from supplier_pricing where PRICING_ID in (select PRICING_ID from ordr where ORD_DATE > '2021-10-05'));


-- 8) Display customer name and gender whose names start or end with character 'A'.
select CUS_NAME, CUST_GENDER from customer where CUS_NAME like "A%" or CUS_NAME like "%A";


/* 9) Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent
Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”. */

DELIMITER //
CREATE PROCEDURE type_of_service()
BEGIN
SELECT
    supplier.sup_id,
    sup_name,
    rat_ratstars,
    CASE
        WHEN rat_ratstars = 5 THEN 'Excellent Service'
        WHEN rat_ratstars >= 4 THEN 'Good Service'
        WHEN rat_ratstars >= 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END AS type_of_service
FROM
    supplier,
    rating,
    ordr,
    supplier_pricing
WHERE
    rating.ord_id = ordr.ord_id
        AND ordr.pricing_id = supplier_pricing.pricing_id
        AND supplier_pricing.sup_id = supplier.sup_id;
END //

DELIMITER ;

CALL type_of_service(); 
