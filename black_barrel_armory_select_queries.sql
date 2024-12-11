USE black_barrel_armory;


-- 1. List all orders with their corresponding customer names and total amounts (subtotal + taxes + shipping).
SELECT o.id                                                                  AS order_id,
       CONCAT(c.first_name, ' ', c.last_name)                                AS customer_name,
       (o.subtotal_amount + o.taxes_amount + o.shipping_and_handling_amount) AS total_amount
FROM orders o
         INNER JOIN
     customers c ON o.customer_id = c.id;

-- 2. Count the number of orders per state.
SELECT s.name      AS state_name,
       COUNT(o.id) AS total_orders
FROM orders o
         INNER JOIN
     states s ON o.state_id = s.id
GROUP BY s.name;

-- 3. Find the top 5 customers who placed the most orders.
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       COUNT(o.id)                            AS total_orders
FROM customers c
         LEFT JOIN
     orders o ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total_orders DESC
LIMIT 5;

-- 4. Retrieve all products along with their categories.
SELECT p.name  AS product_name,
       pc.name AS category_name
FROM products p
         LEFT JOIN
     product_types pt ON p.product_type_id = pt.id
         LEFT JOIN
     product_categories pc ON pt.category_id = pc.id;

-- 5. List all product images for each product, indicating which is the main image.
SELECT p.name                                                        AS product_name,
       pi.s3_url                                                     AS image_url,
       CASE pi.is_main_image WHEN 1 THEN 'Main' ELSE 'Secondary' END AS image_type
FROM products p
         LEFT JOIN
     product_images pi ON p.id = pi.product_id;

-- 6. Calculate the total revenue from all orders.
SELECT SUM(subtotal_amount + taxes_amount + shipping_and_handling_amount) AS total_revenue
FROM orders;

-- 7. Find the average quantity of items purchased per order.
SELECT ROUND(AVG(oi.quantity), 2) AS average_quantity
FROM order_items oi;


-- 8. Get all customers who have not placed an order.
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM customers c
         LEFT JOIN
     orders o ON c.id = o.customer_id
WHERE o.id IS NULL;

-- 9. Find the states and its respective amount of active customers (based on the actual placed orders)
SELECT s.name      AS state_name,
       COUNT(c.id) AS total_customers
FROM customers c
         INNER JOIN
     orders o ON c.id = o.customer_id
         INNER JOIN
     states s ON s.id = o.state_id
GROUP BY s.name
ORDER BY total_customers DESC;


-- 10. List all orders along with the number of items in each order.
SELECT o.id         AS order_id,
       COUNT(oi.id) AS total_items
FROM orders o
         LEFT JOIN
     order_items oi ON o.id = oi.order_id
GROUP BY o.id;

-- 11. Find the top 3 states with the highest order revenue.
SELECT s.name                                                                   AS state_name,
       SUM(o.subtotal_amount + o.taxes_amount + o.shipping_and_handling_amount) AS total_revenue
FROM orders o
         INNER JOIN
     states s ON o.state_id = s.id
GROUP BY s.name
ORDER BY total_revenue DESC
LIMIT 3;


-- 12. Calculates the average subtotal, shipping and handling, taxes, and total cost per order status (processing, completed, or cancelled).
SELECT o.status                                                                           AS order_status,
       ROUND(AVG(o.subtotal_amount), 2)                                                   AS subtotal_amount,
       ROUND(AVG(o.shipping_and_handling_amount), 2)                                      AS average_shipping,
       ROUND(AVG(o.taxes_amount), 2)                                                      AS taxes_amount,
       ROUND(AVG(o.subtotal_amount + o.shipping_and_handling_amount + o.taxes_amount), 2) AS total_amount
FROM orders o
GROUP BY o.status;
