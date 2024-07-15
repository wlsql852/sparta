#SELECT order_id  ord_no, price  "가격", quantity  "수량" FROM food_orders
SELECT restaurant_name,customer_id FROM food_orders WHERE (food_preparation_time BETWEEN 20 and 30) AND cuisine_type = "Korean"
