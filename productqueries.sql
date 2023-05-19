/*Find all the information about each products*/
SELECT * FROM Products;

/*Find the product price which are between 400 to 800*/
SELECT * FROM Products WHERE product_price BETWEEN 400 AND 800;

/*Find the product price which are not between 400 to 600*/
SELECT * FROM Products WHERE product_price NOT BETWEEN 400 AND 600;

/*List the four product which are grater than 500 in price */
SELECT * FROM Products WHERE product_price > 500 LIMIT 4;

/*Find the product name and product material of each products*/
SELECT product_name, product_material FROM Products;

/*Find the product with a row id of 10*/
SELECT * FROM Products WHERE product_id = 10;

/*Find only the product name and product material*/
SELECT product_name, product_material FROM Products;

/*Find all products which contain the value of soft in product material */
SELECT * FROM Products WHERE product_material LIKE '%soft%';

/*Find products which contain product color indigo  and product price 492.00*/
SELECT * FROM Products WHERE product_color = 'indigo' AND product_price = 492.00;

/*Delete the products which product price value are same*/
DELETE FROM Products WHERE product_price IN (
  SELECT product_price FROM (
    SELECT product_price, COUNT(*) as count FROM Products GROUP BY product_price HAVING count > 1
  ) as duplicates
);
