drop table companies;
drop table customers;
drop table drivers;
drop table journeys;
drop table taxis;


----here created the table for companies and insert the data
CREATE TABLE companies (
    company_id  INTEGER primary key,
    company_name VARCHAR(30) NOT NULL,
    company_address VARCHAR(30) NOT  NULL,
    contact_person VARCHAR(30) NOT NULL,
    contact_number VARCHAR(30) null
);


INSERT INTO companies (company_id, company_name, company_address, contact_person, contact_number)
VALUES (1,'OLA','Adamstown','PaulOConor', '0894567821');
INSERT INTO companies (company_id, company_name, company_address, contact_person, contact_number)
VALUES (2,'FREENOW','Adamstown','Mary Kom', '0897654321');
INSERT INTO companies (company_id, company_name, company_address, contact_person, contact_number)
VALUES (3,'UBER','Adamstown','Ryan Mc Loughlin', '0894567721');
INSERT INTO companies (company_id, company_name, company_address, contact_person, contact_number)
VALUES (4,'BOLT','Adamstown','William Moore', '0894367821');

----here created the table for customers and insert the data

CREATE TABLE customers (
     customer_id INTEGER primary key NOT NULL,
     customer_name  VARCHAR(30) NOT NULL,
     customer_email VARCHAR(40) NOT NULL,
     customer_phone VARCHAR(30) null,
     company_id     INTEGER,
     driver_id      INTEGER
);


INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (1,'Paul O Conor', 'pauloconor@gmail.com', '0894504966', 1, 1111);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (2,'Mary Kom','marykom@gmail.com', '0894567821', 1, 1111);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (3,'Ryan Mc Loughlin', 'ryanmcloughlin@gmail.com', '0894567821', 2, 3333);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (4,'Tomas Mac Sweeney','tomasmacsweeney@gmail.com', '0894567821', 4, 2222);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (5,'William Moore', 'williammoore@gmail.com', '0894567821', 3, 4444);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (6,'Andrew Tate', 'andrewtate@gmail.com', '0894567821', 3, 4444);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (7,'Tom Holland', 'tomholland@gmail.com', '0894567821', 3, 4444);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (8,'Sarah Byrne', 'sarahbyrne@gmail.com', '0894567821', 1, 5555);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (9,'Emma Watson', 'emmawatson@gmail.com', '0894567821', 4, 6666);
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, company_id, driver_id)
VALUES (10,'Gigi Hadid', 'gigihadid@gmail.com', '0894567821', 1, 2222);


----here created the table for journeys and insert the data

CREATE TABLE journeys (
    journey_id          INTEGER primary key NOT NULL,
    journey_date        DATE,
    journey_origin      VARCHAR(30),
    journey_destination VARCHAR(30),
    customer_id         INTEGER,
    taxi_id             INTEGER,
    payment             DECIMAL
);

INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (1, '2023-02-12', 'Adamstown','Tallaght', 1, 111, 50.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (2, '2023-11-07', 'Office','Airport', 2, 222, 35.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (3, '2023-10-08', 'Office','Hotel', 3, 222, 55.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (4, '2023-01-09', 'Office','Train Station', 4, 444, 45.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (5, '2023-01-08', 'Adamstown','Swords', 2, 444, 65.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (6, '2023-11-11', 'Adamstown','Sligo', 1, 555, 60.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (7, '2023-10-21', 'Adamstown','Cork', 7, 333, 30.0);
INSERT INTO journeys (journey_id, journey_date, journey_origin, journey_destination, customer_id, taxi_id, payment)
VALUES (8, '2023-12-21', 'Tallaght','Cork', 7, 666, 65.0);


----here created the table for taxis and insert the data
CREATE TABLE taxis (

    taxi_id           INTEGER primary key,
    taxi_registration VARCHAR(30),
    taxi_model        VARCHAR(30),
    taxi_color        VARCHAR(30)
);

INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (111, 11, 'OLA','Black');
INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (222, 21, 'HONDA','Grey');
INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (333, 33, 'BMW','Black');
INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (444, 44, 'TESLA','White');
INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (555, 55, 'Mitsbushi Outlander','Black');
INSERT INTO taxis (taxi_id, taxi_registration, taxi_model, taxi_color)
VALUES (666, 66, 'KIA','Black');


----here created the table for drivers and insert the data
CREATE TABLE drivers(
    driver_id  INTEGER primary key,
    driver_name VARCHAR(30) NOT NULL,
    driver_license_number VARCHAR(30) not null,
    taxi_id INTEGER not null
);

INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (1111, 'Nazila Malekzadah', 'C21353D', 111);
INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (2222, 'Ritika Gupta', 'D31256D', 222);
INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (3333, 'Selena Golmez','C3215D', 333);
INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (4444, 'Gigi Hadid','C12345D', 444);
INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (5555, 'Tom Holland', 'D12345D', 555);
INSERT INTO drivers(driver_id, driver_name, driver_license_number, taxi_id)
VALUES (6666, 'Zendaya Coleman', 'C21365D', 666);


--Select the data
select *from taxis;
select *from companies;
select *from journeys;
select *from customers;
select *from drivers;

---Full Outer Join 
----Here I am finding the relationship between the taxis and journeys
SELECT taxis.taxi_registration, journeys.journey_destination, taxis.taxi_id
FROM taxis
FULL OUTER JOIN journeys
ON taxis.taxi_id = journeys.taxi_id
order by taxis.taxi_registration;

-----Inner Join of journey covered by the taxi_id 
select taxis.taxi_id, journeys.journey_destination
from taxis 
inner join journeys
on taxis.taxi_id = journeys.taxi_id
order by journeys.taxi_id;

---Union of taxis and journey
select taxi_id from taxis 
union 
select taxi_id from journeys
order by taxi_id; 

------Union of Customers and journeys
select customer_id from journeys
union
select customer_id from customers 
order by customer_id;

-----intersect taxi_id from journeys and taxis.
select taxi_id from journeys 
intersect
select taxi_id from taxis

----Sub queries of customers and journeys
select customers.customer_name, COUNT(*) as journeys
from customers
join journeys on customers.customer_id = journeys.customer_id 
group by customers.customer_name;

---Aggregation of customers.customer_id
select COUNT(customer_id)
from customers;

---Aggregation 
----We are counting the number of trips done by the driver.
select drivers.driver_name, count (journeys.taxi_id) as trip
from drivers 
inner join journeys
on drivers.taxi_id = journeys.taxi_id
group by drivers.driver_name;

----We are counting the sum payment from journeys
select SUM(payment) from journeys;

----We are counting the max payment from journeys
select MAX(payment) from journeys;

-----We are counting the minimum payment of journeys to Cork.
SELECT MIN(payment)
FROM journeys
WHERE journey_destination = 'Cork';

------We are updating the data of journeys where company_id = 1
update journeys 
set journey_origin = 'Sligo'
where customer_id in (
     select customer_id 
     from customers
     where customer_id = 1
);

------We are updating the payment data of journeys where journey_id = 3
update journeys 
set payment = 60.0
where journey_origin = 'Adamstown' and journey_destination = 'Swords';

------Deleting the data of payment
DELETE FROM journeys 
WHERE payment >= 60;

---deleting the taxis data 
DELETE from taxis
WHERE taxi_id in (
     select taxi_id 
     from drivers
     where driver_name like '%Gigi%'
);





