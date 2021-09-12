CREATE VIEW customer_products as
SELECT orders.info -> 'customer' AS customer,
       product,
       qty 
FROM orders,
     JSON_TO_RECORDSET(
         orders.info -> 'items'
     ) AS products(
         "product" text,
         "qty" numeric
     )
;