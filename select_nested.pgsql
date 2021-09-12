SELECT orders.info -> 'customer' AS customer,
       product,
       qty 
FROM orders, 
     json_to_recordset(orders.info -> 'items') AS
        products(
            "product" text, 
            "qty" numeric
        )
;
