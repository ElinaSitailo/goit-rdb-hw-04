SELECT 
    -- od.id AS order_detail_id,
--     o.id AS order_id,
--     o.date,
--     c.name AS customer_name,
--     c.city,
--     c.country,
--     e.employee_id as employee_id,
--     e.first_name,
--     e.last_name,
--     p.name AS product_name,
--     p.price,
    cat.name AS category_name,
--     s.name AS supplier_name,
--     sh.name AS shipper_name,
	count(*),
    avg(od.quantity) as avg_quantity
FROM order_details od
        LEFT JOIN orders o ON od.order_id = o.id
        LEFT JOIN customers c ON o.customer_id = c.id
        LEFT JOIN employees e ON o.employee_id = e.employee_id
        LEFT JOIN shippers sh ON o.shipper_id = sh.id
        LEFT JOIN products p ON od.product_id = p.id
        LEFT JOIN categories cat ON p.category_id = cat.id
--         LEFT JOIN suppliers s ON p.supplier_id = s.id
group by cat.name
having avg_quantity > 21
order by avg_quantity desc
limit 4 offset 1

        