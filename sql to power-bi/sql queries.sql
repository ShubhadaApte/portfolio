use sales;
SELECT * FROM customer;
SELECT * FROM orders;
 select c.cust_id, c.cust_name, c.Cust_city,o.Order_num from customer as c inner join  orders as o on c. cust_id = o.cust_id;
 select c.cust_id,c.cust_name,c.cust_state from customer as c 
 inner join orders as o on c.cust_id = o.cust_id
 inner  join order_num as om on o.order_num= nm.order_num;
 -- creating a list of ordering customers with product and order date using where condition
 select c.cust_name as Customer, p.prod_name as Product, o.order_date as Date 
 from customer as c, orders as o, product as p, orderitem as ot
 where c.cust_id = o.cust_id
 and o.order_num = ot.order_num
 and ot.prod_id = p.prod_id
 order by order_date;
 
 
 -- creating view and using joins
 create view  saleanalysis as 
 select c.cust_id, c.cust_name,c.cust_state,op.order_num, op.prod_id, o.order_date, p.prod_name,p.vend_id, v.vend_name
 from customer as c join orders as o on c.cust_id = o.cust_id
 join orderitem as op on o.order_num = op.order_num
 join product as p on op.prod_id = p.prod_id
 join vendor as v on p.vend_id = v.vend_id;
 
 select * from  saleanalysis;
