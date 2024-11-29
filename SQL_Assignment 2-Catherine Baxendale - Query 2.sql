/* Query 2 SELECT
PPT Slide 5
Using the SELECT function I am retrieving data from 
particular columns from the customers table and requesting
that the original points column adds 10 points
*/
SELECT last_name, first_name, points, points +10
FROM customers;

/* PPT Slide 6 - Task 1.1
Using the SELECT function I am retrieving data from 
particular columns from the customers table and requesting
that the original points column is now multiplied by 10 points
and adds a further 100 points
*/
SELECT last_name, first_name, points, (points *10) + 100
FROM customers;

/* PPT Slide 6 - Task 1.2
Following from the above query
- Using the ALTER TABLE function to add a column to the customers table
- Using the SELECT function to return particular columns from this table,
- requesting the original points column adds 10 points then multiplies by 
  a further 100 points and shows the result in the newly created column
*/
ALTER TABLE customers
ADD COLUMN discount_factor INT AS ((points + 10) * 100);
SELECT last_name, first_name, points, discount_factor
FROM customers;

/* PPT Slide 7 - Task 2
Using the ALTER TABLE function to add and name a new column on the products table
with a decimal value and assigning an expression
Using the SELECT function to return all products in the database
showing particular columns including the original and new column
*/
ALTER TABLE products
ADD COLUMN new_price DECIMAL (10, 2) AS (unit_price * 1.1);
SELECT name, unit_price, new_price
FROM products;

/* PPT Slide 8 - Task 3
Using the SELECT function to return all customers in the database
with a particular birth date
*/
SELECT customer_id, first_name, last_name, birth_date
FROM customers
WHERE birth_date = 1990-01-01;

/* PPT Slide 9 - Task 4
Changing the database being used
Using SELECT function to return all products and 
quantities in stock in the database
ordering from highest quantity to lowest
then limiting the return to the highest quantity
*/
USE sql_inventory;
SELECT *
FROM products
ORDER BY quantity_in_stock DESC
LIMIT 1;

/* PPT Slide 10 - Task 5
Using the same database as the previous query
Using SELECT function to return all products and 
prices in the database
ordering from highest price to lowest
then limiting the return to the highest price
*/
SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 1;

/* PPT Slide 11 - Task 6
Changing the database being used
Using SELECT function to return all customers, addresses and 
birth dates in the database
ordering from oldest customer to youngest
then limiting the return to the oldest customer
*/
USE sql_store;
SELECT first_name, last_name, address, birth_date
FROM customers
ORDER BY birth_date ASC
LIMIT 1;