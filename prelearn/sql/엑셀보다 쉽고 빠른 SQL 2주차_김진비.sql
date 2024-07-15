SELECT * from food_orders

SELECT * FROM customers

SELECT cuisine_type,
	MAX(if (age between 10 and 19, cnt_order, 0)) "10대",
	MAX(if (age between 20 and 29, cnt_order, 0)) "20대",
	MAX(if (age between 30 and 39, cnt_order, 0)) "30대",
	MAX(if (age between 40 and 49, cnt_order, 0)) "40대",
	MAX(if (age between 50 and 59, cnt_order, 0)) "50대"
FROM (select cuisine_type, age,  count(1) cnt_order
FROM food_orders f left join customers c on f.customer_id=c.customer_id 
where age BETWEEN 10 and 59
group by 1,2
) a
group by 1