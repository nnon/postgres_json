select orders.info -> 'customer' as customer, product, qty from orders, json_to_recordset(orders.info -> '
items') as products("product" text, "qty" numeric);
