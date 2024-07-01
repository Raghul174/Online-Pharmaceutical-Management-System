create table customer1(customer_id varchar(10) primary key,username varchar(20) unique,password varchar(30) unique,contact_number bigint not null,registration_date date not null); 
desc customer1; 

create table Employeee1(employee_id varchar(10) primary key,emp_name varchar(30) unique,role varchar(80) not null,email varchar(100) unique,contact_number bigint not null,hire_date date 
not null); 
desc Employeee1; 

 
create table P_product(product_id varchar(10) primary key,product_name varchar(40) not null,price decimal(10,2) not null,manufacture varchar(50)not null,quantity varchar(25) not null,medicine_type 
varchar(20) not null,expiry_date date not null); 
desc P_product; 


CREATE TABLE Orderr ( 
order_id VARCHAR(10) PRIMARY KEY, 
order_date DATE NOT NULL, 
price decimal(10,2), 
quantity int, 
total_cost DECIMAL(10,2) NOT NULL, 
order_status VARCHAR(60) NOT NULL, 
shipping_method VARCHAR(40) NOT NULL, 
customer_id VARCHAR(10), 
employee_id VARCHAR(10), 
product_id VARCHAR(10), 
CONSTRAINT or_cus_fk FOREIGN KEY (customer_id) REFERENCES customer1(customer_id), 
CONSTRAINT em_or_fk FOREIGN KEY (employee_id) REFERENCES Employee1 (employee_id), 
CONSTRAINT pro_or_fk FOREIGN KEY (product_id) REFERENCES Product (product_id) 
); 
desc Orderr; 

create table payment(payment_id varchar(10) primary key,payment_amount decimal(10,2) not null,payment_date date not null,payment_method varchar(50) not null,order_id varchar(10), 
CONSTRAINT pa_or_fk FOREIGN KEY (order_id) REFERENCES Orderr(order_id)); 
desc payment; 


create table feedback(feedback_id varchar(10) primary key,feedback_rating decimal(10,1) not null,customer_id varchar(10),product_id varchar(10), CONSTRAINT feed_id_fk FOREIGN KEY (customer_id) 
REFERENCES customer1(customer_id), CONSTRAINT feed_pro_fk FOREIGN KEY (product_id) REFERENCES 
Product(product_id)); 
desc feedback; 

create table include_product(order_id varchar(10),product_id varchar(10), 
CONSTRAINT pa_or_fk FOREIGN KEY (order_id) REFERENCES Orderr(order_id), 
CONSTRAINT feed_pro_fk FOREIGN KEY (product_id) REFERENCES Product(product_id) 
); 
desc include_product; 

##insertion

INSERT INTO customer1 VALUES 
('C01', 'deeksha', 'deek25@gmail.com', 8097653221, '2008-07-02'), 
('C02', 'priyanka', 'pri20@gmail.com', 9090353222, '2005-12-23'), 
('C03', 'raghul', 'rag20@gmail.com', 9945653223, '2003-04-17'), 
('C04', 'sabitha', 'sabi25@gmail.com', 9965653224, '2005-02-26'), 
('C05', 'bhuvanesh', 'bhu@5@gmail.com', 9976453225, '2007-11-30'), 
('C06', 'sanjana', 'sana05@gmail.com', 9976453026, '2007-11-30'), 
('C07', 'jeeva', 'jeeva5@gmail.com', 9970453227, '2007-07-30'), 
('C08', 'priya', 'priya27@gmail.com', 6676403228, '2006-10-27'), 
('C09', 'akshay', 'ak47@gmail.com', 9606453229, '2001-11-01'), 
('C10', 'hemamalini', 'hema00@gmail.com', 9076453220, '1998-01-01'), 
('C11', 'vincent', 'vincent01@gmail.com', 8976453221, '2000-09-05'), 
('C12', 'khathija', 'khathija80@gmail.com', 7976453222, '2003-03-27'); 
select * from customer1; 


INSERT INTO Employee1 VALUES 
('E01', 'dhinesh', 'customer support', 'dhinesh@5@gmail.com', '0988776634', '2004-07-14'), 
('E02', 'raghul', 'delivery', 'raghul20@gmail.com', '9988006634', '2003-06-12'), 
('E03', 'anika', 'customer support', 'anika21@gmail.com', '9988770034', '2003-12-14'), 
('E04', 'logesh', 'manager', 'logesh01@gmail.com', '9988776604', '2003-06-12'), 
('E05', 'logith', 'customer support', 'logith77@gmail.com', '9088776634', '2006-11-16'), 
('E06', 'vishwa', 'delivery', 'vishwa33@gmail.com', '9988076634', '2003-06-12'), 
('E07', 'ajay', 'customer support', 'ajay03@gmail.com', '9988776034', '2007-07-12'), 
('E08', 'raj', 'delivery', 'raj09@gmail.com', '9900776034', '2004-10-12'), 
('E09', 'sabitha', 'delivery', 'sab199@gmail.com', '9908076634', '2004-10-10'), 
('E10', 'pranavi', 'customer support', 'pranavi99@gmail.com', '0000776634', '2004-04-12'), 
('E11', 'sneha', 'accountant', 'sneha2005@gmail.com', '9900776634', '2003-06-12'); 
select * from Employee1; 


INSERT INTO P_product (Product_ID, Product_Name, Price, Manufacture, Quantity, Medicine_Type, 
Expiry_Date) 
VALUES 
('P01', 'Paracetamol Tablets', 4.99, 'Generic Pharma', '100 tablets', 'Tablet', '2021-03-23'), 
('P02', 'Cetirizine Tablets', 5.49, 'HealthyLife Pharma', '50 tablets', 'Tablet', '2024-07-18'), 
('P03', 'Cough Syrup', 6.99, 'Medica', '200ml', 'Syrup', '2023-10-23'), 
('P04', 'Pediatric Syrup', 7.49, 'Littlehearts Pharma', '101ml', 'Syrup', '2023-10-23'), 
('P05', 'Lubricating Eye Drops', 8.29, 'EyeCare Solutions', '15ml', 'Eye Drop', '2024-09-13'), 
('P06', 'Antiherterial Eye Drops', 9.00, 'EyeCare Solutions', '8ml', 'Eye Drops', '2001-01-10'), 
('P07', 'Burn Ointment', 7.79, 'Healing Hands Ltd.', '10g', 'Ointment', '2021-06-23'), 
('P08', 'Antifungal Ointment', 8.99, 'Fung Free Pharmaceuticals', '9g', 'Ointment', '2023-06-23'), 
('P09', 'Ibuprofen Tablets', 6.49, 'HealthyLife Pharma', '50 tablets', 'Tablet', '2024-10-30'), 
('P10', 'Antacid Tablets', 5.99, 'Relief Pharmaceuticals', '60 tablets', 'Tablet', '2024-07-03'), 
('P11', 'Allergy Relief Syrup', 7.99, 'Allergy Co.', '150ml', 'Syrup', '2023-11-15'), 
('P12', 'Digestive Syrup', 6.29, 'DigestMell Inc.', '100ml', 'Syrup', '2024-08-03'), 
('P13', 'Antihistamine Eye Drops', 8.99, 'EyeCare Solutions', '15 ml', 'Eye Drops', '2023-06-23'), 
('P14', 'Amoxicillin', 10.99, 'Relief Pharmaceuticals', '15 tablets', 'Tablet', '2025-02-20'), 
('P15', 'Losartan', 11.49, 'Healing Hands Ltd.', '20ml', 'Ointment', '2025-05-01'), 
('P16', 'Prednisone', 12.99, 'Littlehearts Pharma', '75ml', 'Syrup', '2024-08-10'), 
('P17', 'Lisinopril', 13.49, 'Littlehearts Pharma', '200ml', 'Syrup', '2025-10-15'), 
('P18', 'Metoprolol', 14.29, 'EyeCare Solutions', '10ml', 'Eye Drop', '2024-11-28'); 
select * from P_product; 


INSERT INTO orderr VALUES 
('O01', '2022-06-23', 18.67, 3, 56.01, 'shipped', 'express', 'C01', 'E01', 'PD01'), 
('O02', '2005-12-23', 34.49, 2, 68.98, 'delivered', 'standard', 'C03', 'E05', 'PD02'), 
('O03', '2023-06-17', 67.99, 1, 67.99, 'processing', 'express', 'C01', 'E01', 'PD03'), 
('O04', '2023-02-26', 20.67, 2, 41.34, 'shipped', 'express', 'C01', 'E03', 'PD04'), 
('O05', '2024-09-13', 25.99, 1, 25.99, 'delivered', 'standard', 'C05', 'E05', 'PD05'), 
('O06', '2023-01-10', 99.99, 1, 99.99, 'processing', 'express', 'C06', 'E06', 'PD06'), 
('O07', '2023-06-23', 18.67, 2, 37.34, 'shipped', 'express', 'C07', 'E07', 'PD07'), 
('O08', '2023-06-23', 10.30, 2, 20.60, 'delivered', 'standard', 'C11', 'E08', 'PD08'), 
('O09', '2024-10-30', 30.90, 1, 30.90, 'processing', 'express', 'C09', 'E09', 'PD09'), 
('O10', '2024-07-03', 50.99, 1, 50.99, 'shipped', 'express', 'C10', 'E10', 'PD10'), 
('O11', '2022-11-15', 35.90, 1, 35.90, 'delivered', 'standard', 'C11', 'E08', 'PD11'), 
('O12', '2024-08-03', 60.30, 1, 60.30, 'processing', 'express', 'C12', 'E05', 'PD12'), 
('O13', '2023-06-23', 60.30, 2, 120.60, 'delivered', 'express', 'C05', 'E08', 'PD13'), 
('O14', '2015-10-13', 30.90, 2, 61.80, 'delivered', 'standard', 'C08', 'E11', 'PD14'), 
('O15', '2013-02-23', 34.49, 3, 103.47, 'processing', 'express', 'C12', 'E05', 'PD15'), 
('O16', '2023-06-13', 50.89, 2, 101.78, 'shipped', 'express', 'C11', 'E03', 'PD16'), 
('O17', '2023-08-29', 90.78, 1, 90.78, 'processing', 'express', 'C11', 'E03', 'PD17'), 
('O18', '2024-08-03', 60.98, 2, 121.96, 'processing', 'express', 'C12', 'E05', 'PD18'), 
('O19', '2023-02-22', 50.89, 2, 101.78, 'shipped', 'express', 'C03', 'E10', 'PD19'); 
select * from orderr; 

INSERT INTO p_payment VALUES 
('PD01', 56.01, '2005-12-23', 'PayPal'), 
('PD02', 68.98, '2005-12-31', 'Cash'), 
('PD03', 67.99, '2023-06-17', 'PayPal'), 
('PD04', 41.34, '2023-02-26', 'Credit Card'), 
('PD05', 25.99, '2023-01-10', 'PayPal'), 
('PD06', 99.99, '2023-01-10', 'Credit Card'), 
('PD07', 37.34, '2023-06-23', 'Credit Card'), 
('PD08', 20.60, '2023-06-23', 'PayPal'), 
('PD09', 30.90, '2024-10-30', 'PayPal'), 
('PD10', 50.99, '2024-10-30', 'Credit Card'), 
('PD11', 35.90, '2022-11-15', 'Cash'), 
('PD12', 60.30, '2024-08-03', 'PayPal'), 
('PD13', 120.60, '2023-06-23', 'Credit Card'), 
('PD14', 61.80, '2015-10-13', 'Cash'), 
('PD15', 103.47, '2013-02-23', 'Cash'), 
('PD16', 101.78, '2023-06-13', 'Credit Card'), 
('PD17', 90.78, '2023-08-29', 'PayPal'), 
('PD18', 121.96, '2024-08-03', 'PayPal'), 
('PD19', 101.78, '2023-02-22', 'Credit Card'); 
select * from p_payment; 

INSERT INTO feedback VALUES 
('F01', 4.5, 'C01', 'P01'), 
('F02', 3.8, 'C05', 'P02'), 
('F03', 4.2, 'C03', 'P03'), 
('F04', 4.9, 'C11', 'P03'), 
('F05', 3.7, 'C05', 'P05'), 
('F06', 4.0, 'C11', 'P06'), 
('F07', 4.6, 'C07', 'P07'), 
('F08', 3.5, 'C08', 'P15'), 
('F09', 4.3, 'C09', 'P09'), 
('F10', 4.8, 'C10', 'P05'), 
('F11', 3.9, 'C11', 'P18'), 
('F12', 3.2, 'C12', 'P16'), 
('F13', 4.8, 'C01', 'P10'), 
('F14', 2.0, 'C09', 'P18'), 
('F15', 3.5, 'C07', 'P17'); 
select * from feedback; 

INSERT INTO include_product VALUES 
('O01', 'P01'), 
('O02', 'P02'), 
('O03', 'P03'), 
('O04', 'P05'), 
('O05', 'P07'), 
('O06', 'P06'), 
('O07', 'P01'), 
('O08', 'P08'), 
('O09', 'P18'), 
('O10', 'P10'), 
('O11', 'P13'), 
('O12', 'P12'), 
('O13', 'P12'), 
('O14', 'P15'), 
('O15', 'P02'), 
('O16', 'P17'), 
('O17', 'P16'), 
('O18', 'P11'), 
('O19', 'P17'); 
select * from include_product; 

##Arithmetic operator 
SELECT order_id, price + quantity + 5 AS total_cost_with_additional_cost FROM orderr; 
SELECT product_id, price - (price * 0.1) AS discounted_price FROM P_product; 
SELECT order_id, (price * quantity) - 5 AS total_revenue FROM orderr; 
SELECT order_id, (price + 5) / quantity AS avg_cost_per_unit FROM orderr; 

#Logical operator
SELECT * FROM orderr WHERE order_status = 'processing' OR order_status = 'shipped'; 
SELECT * FROM orderr WHERE order_status = 'shipped' AND total_cost > 50; 
SELECT * FROM orderr WHERE order_status = 'processing' OR total_cost > 100; 
SELECT * FROM P_product WHERE NOT medicine_type = 'Tablet'; 

#Comparison operator
SELECT * FROM feedback WHERE feedback_rating = 4.5; 
SELECT * FROM P_product WHERE quantity <> 100; 
SELECT * FROM orderr WHERE total_cost > 100; 
SELECT * FROM Product WHERE price < 5; 
SELECT * FROM orderr WHERE total_cost >= 50; 
SELECT * FROM P_product WHERE quantity <= 50; 
SELECT * FROM P_product WHERE product_name LIKE '%Tablet%'; 
SELECT * FROM orderr WHERE total_cost BETWEEN 50 AND 100; 
SELECT * FROM orderr WHERE order_status IN ('shipped', 'delivered'); 
SELECT * FROM orderr WHERE employee_id IS NOT NULL; 

#Group functions
SELECT customer_id, COUNT(order_id) AS order_count;
SELECT product_id, AVG(feedback_rating) AS average_rating FROM feedback GROUP BY product_id; 

#Numeric functions
SELECT product_id, CEIL(price) AS rounded_price FROM P_product; 
SELECT order_id, SQRT(total_cost) AS total_cost_sqrt FROM orderr;
SELECT MIN(price) AS minimum_price FROM P_product;  
SELECT MAX(quantity) AS maximum_quantity 
FROM P_product; 
SELECT FLOOR(AVG(total_cost)) AS rounded_down_average_cost 
FROM orderr; 

#Character functions
SELECT customer_id, CONCAT(username, ' - ', contact_number) AS formatted_contact 
FROM customer1; 
SELECT product_id, UPPER(product_name) AS uppercase_product_name 
FROM P_product; 
SELECT employee_id, LOWER(emp_name) AS lowercase_employee_name 
FROM Employeee1; 
SELECT product_id, SUBSTRING(product_name, 1, 3) AS first_three_chars 
FROM P_product; 
SELECT customer_id, username, LENGTH(username) AS username_length 
FROM customer1; 

#Date functions
SELECT *FROM orderr WHERE YEAR(order_date) = 2023; 
SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 3 DAY) AS 
delivery_date FROM orderr; 
SELECT order_id, order_date, DATEDIFF(CURRENT_DATE(), order_date) AS 
days_since_order FROM orderr; 
SELECT order_id, order_date, ADDTIME(order_date, '02:00:00') AS 
expected_delivery_time FROM orderr; 
SELECT order_id, order_date, MONTH(order_date) AS order_month 
FROM orderr; 

#Conversion functions
SELECT customer_id, DATE_FORMAT(registration_date, '%d-%b-%Y') AS 
formatted_registration_date FROM customer1; 
SELECT order_id, STR_TO_DATE(order_date, '%Y-%m-%d') AS converted_order_date 
FROM orderr; 
SELECT product_id, CAST(price AS SIGNED) AS integer_price FROM 
P_product; 

#Set operator
SELECT product_name FROM Product UNION SELECT product_id AS product_name 
FROM feedback; 

#Group by and having
SELECT product_id, AVG(feedback_rating) AS avg_rating 
FROM feedback GROUP BY product_id HAVING AVG(feedback_rating) > 4.0;

#Join
SELECT orderr.order_id,orderr.order_date,orderr.total_cost, customer1.username FROM orderr INNER 
JOIN customer1 ON orderr.customer_id = customer1.customer_id;
SELECT orderr.order_id, orderr.order_date, customer1.username, Product.product_name, 
orderr.quantity FROM orderr JOIN customer1 ON orderr.customer_id = customer1.customer_id 
JOIN include_product ON orderr.order_id = include_product.order_id JOIN Product ON 
include_product.product_id = Product.product_id WHERE orderr.order_date > '2023-01-01'; 
 SELECT orderr.order_id,orderr.order_date,orderr.total_cost,Product.product_name FROM orderr JOIN 
product ON orderr.product_id = Product.product_id;

#Sub query
SELECT username FROM customer1 WHERE customer_id IN (SELECT DISTINCT customer_id FROM 
orderr); 
SELECT DISTINCT customer1.username FROM orderr JOIN customer1 ON orderr.customer_id = 
customer1.customer_id WHERE orderr.quantity > 2;
SELECT product_name FROM P_product p WHERE quantity > (SELECT AVG(quantity) FROM orderr o 
WHERE o.product_id = p.product_id);
