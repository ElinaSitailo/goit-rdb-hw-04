USE `lesson_3_db`;

-- Optional: disable checks while constraints are being added
SET FOREIGN_KEY_CHECKS = 0;

-- Primary keys
ALTER TABLE `categories`
    ADD CONSTRAINT `pk_categories` PRIMARY KEY (`id`);

ALTER TABLE `customers`
    ADD CONSTRAINT `pk_customers` PRIMARY KEY (`id`);

ALTER TABLE `employees`
    ADD CONSTRAINT `pk_employees` PRIMARY KEY (`employee_id`);

ALTER TABLE `shippers`
    ADD CONSTRAINT `pk_shippers` PRIMARY KEY (`id`);

ALTER TABLE `suppliers`
    ADD CONSTRAINT `pk_suppliers` PRIMARY KEY (`id`);

ALTER TABLE `products`
    ADD CONSTRAINT `pk_products` PRIMARY KEY (`id`);

ALTER TABLE `orders`
    ADD CONSTRAINT `pk_orders` PRIMARY KEY (`id`);

ALTER TABLE `order_details`
    ADD CONSTRAINT `pk_order_details` PRIMARY KEY (`id`);

-- Foreign keys
ALTER TABLE `products`
    ADD CONSTRAINT `fk_products_suppliers`
        FOREIGN KEY (`supplier_id`) REFERENCES `suppliers`(`id`),
    ADD CONSTRAINT `fk_products_categories`
        FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`);

ALTER TABLE `orders`
    ADD CONSTRAINT `fk_orders_customers`
        FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`),
    ADD CONSTRAINT `fk_orders_employees`
        FOREIGN KEY (`employee_id`) REFERENCES `employees`(`employee_id`),
    ADD CONSTRAINT `fk_orders_shippers`
        FOREIGN KEY (`shipper_id`) REFERENCES `shippers`(`id`);

ALTER TABLE `order_details`
    ADD CONSTRAINT `fk_order_details_orders`
        FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`),
    ADD CONSTRAINT `fk_order_details_products`
        FOREIGN KEY (`product_id`) REFERENCES `products`(`id`);

SET FOREIGN_KEY_CHECKS = 1;