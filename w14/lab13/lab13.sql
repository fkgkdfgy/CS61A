.read data.sql


CREATE TABLE average_prices AS
  SELECT category as category, AVG(MSRP) as average_price 
  FROM   products 
  GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store. item, MIN(price) from inventory group by category;

CREATE 

CREATE TABLE shopping_list AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE total_bandwidth AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

