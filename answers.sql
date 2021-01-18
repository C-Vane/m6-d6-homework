/*Question 1*/
SELECT customer_id,company_name,contact_title, address, city, region, postal_code, country, phone, fax, contact_name FROM public.customers WHERE country='Germany'
/*Question 2*/
UPDATE public.customers set country='United Kingdom' WHERE country='UK'
/*Question 3*/
DELETE FROM customers WHERE fax IS NULL
/*Question 4*/
INSERT INTO  customers(customer_id,company_name,contact_title, address, city, region, postal_code, country, phone, fax, contact_name) VALUES
('STRVE','Strive','student','Louise-Otto','Freiburg', 'Baden','79100','Germany','+251925356384','+251925356384','Vanessa Cattabini'),
('STVE','Strive','student','Louise-Otto','Freiburg', 'Baden','79100','Germany','+251925356384','+251925356384','Luca Perullo'),
('STRE','Strive','student','Louise-Otto','Freiburg', 'Baden','79100','Germany','+251925356384','+251925356384','Roberto Scioni'),
('STRV','Strive','student','Louise-Otto','Freiburg', 'Baden','79100','Germany','+251925356384','+251925356384','Ari Razab'),
('STRIV','Strive','student','Louise-Otto','Freiburg', 'Baden','79100','Germany','+251925356384','+251925356384','Simona Cossai')
/*Question 5*/
SELECT customer_id,company_name,contact_title, address, city, region, postal_code, country, phone, fax, contact_name FROM public.customers WHERE contact_title='Sales Representative'
/*Question 6*/
UPDATE public.customers set company_name='Linkedin' WHERE customer_id='BOTTM'
/*Question 7*/
SELECT customer_id,company_name,contact_title, address, city, region, postal_code, country, phone, fax, contact_name FROM public.customers WHERE region IS NULL or country='USA' 
/*Question 8*/
DELETE FROM customers WHERE postal_code= '1734'
/*Question 9*/
SELECT customer_id,company_name,contact_title, address, city, region, postal_code, country, phone, fax, contact_name FROM public.customers WHERE contact_title='Owner'
/*Question 10*/
SELECT company_name,contact_title, contact_name FROM public.customers WHERE country='Brazil'
/*Question 11*/
SELECT customer_id,company_name as name,contact_title as title, address, city, region, postal_code, country, phone, fax, contact_name FROM public.customers WHERE country='Finland'
/*Question 12*/
DELETE FROM customers WHERE city= 'Lyon'
/*Question 13*/
UPDATE public.customers set region='Unknown' WHERE region is NULL
/*Question 14*/
CREATE TABLE IF NOT EXISTS ARTICLE (_id character varying(15) NOT NULL PRIMARY KEY,
    headline CHARACTER VARYING(40) NOT NULL,
    subhead CHARACTER VARYING(40),
    content CHARACTER NOT NULL,
    category CHARACTER VARYING(40) NOT NULL,
    author CHARACTER VARYING(40) NOT NULL,
    cover CHARACTER VARYING(40) NOT NULL,
    createdAt date NOT NULL,
    lastUpdated date)
/*Question 15*/
CREATE TABLE IF NOT EXISTS author (_id character varying(15) NOT NULL PRIMARY KEY,
    name CHARACTER VARYING(40) NOT NULL,
    surname CHARACTER VARYING(40),
    email CHARACTER VARYING(40) NOT NULL,
    password CHARACTER VARYING(40) NOT NULL,
    img CHARACTER VARYING(40) NOT NULL,
    created_At date NOT NULL)
/*Question 16*/
CREATE TABLE IF NOT EXISTS reviews (_id character varying(15) NOT NULL PRIMARY KEY,
    author CHARACTER VARYING(40) NOT NULL,
    text CHARACTER VARYING(40) NOT NULL,
    created_At date NOT NULL,
	last_updated date)