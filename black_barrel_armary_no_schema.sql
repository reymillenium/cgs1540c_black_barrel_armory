-- -----------------------------------------------------
-- Table `countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `countries`
(
    `id`         INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each country.',
    `name`       VARCHAR(255) NOT NULL COMMENT 'Full name of the country (e.g., \"United States\").',
    `code`       VARCHAR(3)   NOT NULL COMMENT 'SO 3166-1 alpha-3 code (e.g., \"USA\").',
    `created_at` TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at` TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC)
);


-- -----------------------------------------------------
-- Table `states`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `states`
(
    `id`         INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `name`       VARCHAR(255) NOT NULL COMMENT 'Full name of the state (e.g., \"Florida\").',
    `code`       VARCHAR(2)   NOT NULL COMMENT 'Two-letter postal abbreviation (e.g., \"FL\").',
    `country_id` INT          NOT NULL COMMENT 'Foreign key referencing countries.id',
    `created_at` TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at` TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_states_countries_idx` (`country_id` ASC),
    CONSTRAINT `fk_states_countries`
        FOREIGN KEY (`country_id`)
            REFERENCES `countries` (`id`)
            ON DELETE NO ACTION
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `ffl_dealers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ffl_dealers`
(
    `id`            INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the FFL dealer.',
    `name`          VARCHAR(255) NOT NULL COMMENT 'Name of the FFL dealer.',
    `phone`         VARCHAR(16)  NOT NULL COMMENT 'Contact number of the FFL dealer.',
    `address_line1` VARCHAR(255) NOT NULL COMMENT 'First line of the FFL dealer’s address.',
    `address_line2` VARCHAR(255) NULL COMMENT 'Optional second line of the FFL address.',
    `city`          VARCHAR(255) NOT NULL COMMENT 'City name.',
    `state_id`      INT          NOT NULL COMMENT 'The State\'s ID of the FFL Dealer. Foreign key referencing states.id',
    `postal_code`   VARCHAR(9)   NOT NULL COMMENT 'ZIP or postal code.',
    `created_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_ffl_dealers_states1_idx` (`state_id` ASC),
    CONSTRAINT `fk_ffl_dealers_states1`
        FOREIGN KEY (`state_id`)
            REFERENCES `states` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customers`
(
    `id`                      INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `email`                   VARCHAR(255) NOT NULL COMMENT 'Customer\'s email address.',
    `password`                VARCHAR(255) NOT NULL COMMENT 'Customer\'s password',
    `first_name`              VARCHAR(255) NOT NULL COMMENT 'Customer\'s first name.',
    `middle_name`             VARCHAR(255) NULL COMMENT 'Customer\'s middle name.',
    `last_name`               VARCHAR(255) NOT NULL COMMENT 'Customer\'s last name.',
    `phone`                   VARCHAR(16)  NOT NULL COMMENT 'Customer\'s phone number.',
    `date_of_birth`           DATE         NOT NULL COMMENT 'Customer\'s date of birth.',
    `preferred_ffl_dealer_id` INT          NULL COMMENT 'Foreign key referencing ffl_dealers.id',
    `created_at`              TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`              TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    UNIQUE INDEX `email_UNIQUE` (`email` ASC),
    INDEX `fk_customers_ffl_dealers1_idx` (`preferred_ffl_dealer_id` ASC),
    CONSTRAINT `fk_customers_ffl_dealers1`
        FOREIGN KEY (`preferred_ffl_dealer_id`)
            REFERENCES `ffl_dealers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `addresses`
(
    `id`            INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `customer_id`   INT          NOT NULL,
    `address_line1` VARCHAR(255) NOT NULL COMMENT 'First line of the address.',
    `address_line2` VARCHAR(255) NULL COMMENT 'Optional second line of the address.',
    `city`          VARCHAR(255) NOT NULL COMMENT 'City name.',
    `state_id`      INT          NOT NULL COMMENT 'State or province. Foreign key referencing states.id',
    `postal_code`   VARCHAR(9)   NOT NULL COMMENT 'ZIP or postal code.',
    `is_default`    TINYINT      NULL DEFAULT 0 COMMENT 'Indicates if this is the default address.',
    `created_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_addresses_states1_idx` (`state_id` ASC),
    INDEX `fk_addresses_customers1_idx` (`customer_id` ASC),
    CONSTRAINT `fk_addresses_states1`
        FOREIGN KEY (`state_id`)
            REFERENCES `states` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_addresses_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `payment_methods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_methods`
(
    `id`                 INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the payment method.',
    `customer_id`        INT          NOT NULL COMMENT 'Foreign key referencing customers.id',
    `cardholder_name`    VARCHAR(255) NOT NULL COMMENT 'Name on the card.',
    `card_number`        VARCHAR(19)  NOT NULL COMMENT 'Card number',
    `expiration_date`    DATE         NOT NULL COMMENT 'Expiration date of the card.',
    `card_type_id`       INT          NOT NULL COMMENT 'Type of card (e.g., Visa, MasterCard). Foreign key referencing card_types.id',
    `cvv`                VARCHAR(4)   NOT NULL COMMENT 'Card Verification Value. Is a 3 or 4 digit number printed on a credit or debit card that helps to prevent fraud.',
    `billing_address_id` INT          NOT NULL COMMENT 'Links to the addresses table for billing. Foreign key referencing addresses.id',
    `created_at`         TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`         TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    UNIQUE INDEX `email_UNIQUE` (`card_number` ASC),
    INDEX `fk_payment_methods_customers1_idx` (`customer_id` ASC),
    INDEX `fk_payment_methods_addresses1_idx` (`billing_address_id` ASC),
    CONSTRAINT `fk_payment_methods_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_payment_methods_addresses1`
        FOREIGN KEY (`billing_address_id`)
            REFERENCES `addresses` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `product_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `product_categories`
(
    `id`          INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the product category.',
    `name`        VARCHAR(255) NOT NULL COMMENT 'Name of the category (e.g., \"Firearms\").',
    `description` TEXT         NULL COMMENT 'Description of the category.',
    `created_at`  TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`  TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC)
);


-- -----------------------------------------------------
-- Table `product_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `product_types`
(
    `id`          INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the product type.',
    `category_id` INT          NOT NULL COMMENT 'Foreign key referencing product_categories.id',
    `name`        VARCHAR(255) NOT NULL COMMENT 'Name of the product type (e.g., \"Pistols\").',
    `description` TEXT         NULL COMMENT 'Description of the type.',
    `created_at`  TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`  TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_product_types_product_categories1_idx` (`category_id` ASC),
    CONSTRAINT `fk_product_types_product_categories1`
        FOREIGN KEY (`category_id`)
            REFERENCES `product_categories` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `products`
(
    `id`                   INT            NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the product.',
    `product_type_id`      INT            NOT NULL COMMENT 'Foreign key referencing product_types.id',
    `name`                 VARCHAR(255)   NOT NULL COMMENT 'Name of the product (e.g., \"Glock 19\")',
    `description`          TEXT           NULL COMMENT 'Detailed description of the product.',
    `sku`                  VARCHAR(50)    NULL COMMENT 'Stock Keeping Unit, a unique identifier for inventory.',
    `price`                DECIMAL(10, 2) NOT NULL COMMENT 'Price of the product.',
    `stock_quantity`       INT            NOT NULL DEFAULT 0 COMMENT 'Number of items available in stock.',
    `weight`               DECIMAL(10, 2) NULL COMMENT 'Weight of the product in pounds.',
    `dimensions`           VARCHAR(50)    NULL COMMENT 'Dimensions of the product (e.g., \"10x5x3 inches\").',
    `manufacturer_id`      INT            NULL COMMENT 'Manufacturer\'s id of the product. Optional Foreign key referencing manufacturers.id ',
    `country_of_origin_id` INT            NULL COMMENT 'Country\'s ID where the product was made. Optional Foreign key referencing countries.id ',
    `created_at`           TIMESTAMP      NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`           TIMESTAMP      NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_products_product_types1_idx` (`product_type_id` ASC),
    CONSTRAINT `fk_products_product_types1`
        FOREIGN KEY (`product_type_id`)
            REFERENCES `product_types` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `desired_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `desired_products`
(
    `id`          INT       NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the wishlist entry.',
    `product_id`  INT       NOT NULL COMMENT 'Foreign key referencing products.id',
    `customer_id` INT       NOT NULL COMMENT 'Foreign key referencing customers.id',
    `created_at`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_desired_products_products1_idx` (`product_id` ASC),
    INDEX `fk_desired_products_customers1_idx` (`customer_id` ASC),
    CONSTRAINT `fk_desired_products_products1`
        FOREIGN KEY (`product_id`)
            REFERENCES `products` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_desired_products_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `saved_for_later_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `saved_for_later_products`
(
    `id`          INT       NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `product_id`  INT       NOT NULL COMMENT 'Links to the products table. Foreign key referencing products.id',
    `customer_id` INT       NOT NULL COMMENT 'Links to the customers table. Foreign key referencing customers.id',
    `created_at`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_saved_for_later_products_products1_idx` (`product_id` ASC),
    INDEX `fk_saved_for_later_products_customers1_idx` (`customer_id` ASC),
    CONSTRAINT `fk_saved_for_later_products_products1`
        FOREIGN KEY (`product_id`)
            REFERENCES `products` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_saved_for_later_products_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `cart_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cart_items`
(
    `id`          INT       NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `product_id`  INT       NOT NULL COMMENT 'Links to the products table. Foreign key referencing products.id',
    `customer_id` INT       NOT NULL COMMENT 'Links to the customers table. Foreign key referencing customers.id',
    `quantity`    INT       NOT NULL DEFAULT 0 COMMENT 'The amount of the related Product, included in the shopping cart, that was selected to be purchased soon.',
    `created_at`  TIMESTAMP NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`  TIMESTAMP NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_saved_for_later_products_products1_idx` (`product_id` ASC),
    INDEX `fk_saved_for_later_products_customers1_idx` (`customer_id` ASC),
    CONSTRAINT `fk_cart_items_products1`
        FOREIGN KEY (`product_id`)
            REFERENCES `products` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_cart_items_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`
(
    `id`                           INT                                          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `customer_id`                  INT                                          NULL COMMENT 'Optional Foreign key referencing customers.id.\n',
    `subtotal_amount`              DECIMAL(10, 2)                               NOT NULL COMMENT 'The sub total amount of the order, in dollars, before taxes',
    `taxes_amount`                 DECIMAL(10, 2)                               NOT NULL DEFAULT 0 COMMENT 'The amount charged by concept of taxes, in dollars',
    `shipping_and_handling_amount` DECIMAL(10, 2)                               NOT NULL DEFAULT 0 COMMENT 'The amount charged by concept of shipping and handling, in dollars',
    `address_line1`                VARCHAR(255)                                 NOT NULL COMMENT 'First line of the address. Denormalization for historical purposes, in case the address entity instance is destroyed.',
    `address_line2`                VARCHAR(255)                                 NULL COMMENT 'Optional second line of the address. Denormalization for historical purposes, in case the address entity instance is destroyed.',
    `city`                         VARCHAR(255)                                 NOT NULL COMMENT 'City name. Denormalization for historical purposes, in case the address entity instance is destroyed.',
    `state_id`                     INT                                          NOT NULL COMMENT 'State or province. Foreign key referencing states.id',
    `postal_code`                  VARCHAR(9)                                   NOT NULL COMMENT 'ZIP or postal code. Denormalization for historical purposes, in case the address entity instance is destroyed.',
    `payment_method_masked_number` VARCHAR(45)                                  NULL COMMENT 'Denormalized payment method masked number',
    `status`                       ENUM ('processing', 'completed', 'canceled') NOT NULL DEFAULT 'processing' COMMENT 'Status of the order (e.g., \"Processing\", \"Completed\", \"Canceled\").',
    `shipping_status`              ENUM ('pending', 'shipped', 'delivered')     NOT NULL DEFAULT 'pending' COMMENT 'Status of the shipping (e.g., \"Pending\", \"Shipped\", \"Delivered\").',
    `created_at`                   TIMESTAMP                                    NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`                   TIMESTAMP                                    NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_orders_customers1_idx` (`customer_id` ASC),
    INDEX `fk_orders_states1_idx` (`state_id` ASC),
    CONSTRAINT `fk_orders_customers1`
        FOREIGN KEY (`customer_id`)
            REFERENCES `customers` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE,
    CONSTRAINT `fk_orders_states1`
        FOREIGN KEY (`state_id`)
            REFERENCES `states` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `order_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `order_items`
(
    `id`                  INT            NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `order_id`            INT            NOT NULL COMMENT 'Foreign key referencing orders.id.\n',
    `quantity`            INT            NOT NULL DEFAULT 1 COMMENT 'The amount of items purchased of the same product',
    `unitary_cost`        DECIMAL(10, 2) NOT NULL COMMENT 'The cost of one single product, in dollars',
    `product_name`        VARCHAR(45)    NOT NULL COMMENT 'Denormalized field for future control, in case the related Product Entity instance is destroyed',
    `order_thumbnail_url` TEXT           NOT NULL COMMENT 'Amazon S3 url with one of the product\'s images, selected as thumbnail',
    `created_at`          TIMESTAMP      NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    `updated_at`          TIMESTAMP      NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_order_items_orders1_idx` (`order_id` ASC),
    CONSTRAINT `fk_order_items_orders1`
        FOREIGN KEY (`order_id`)
            REFERENCES `orders` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `product_images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `product_images`
(
    `id`            INT          NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `product_id`    INT          NOT NULL COMMENT 'Foreign key referencing products.id',
    `s3_url`        VARCHAR(255) NOT NULL COMMENT 'URL of the image at Amazon S3 (e.g., https://example.com/images/product1.jpg).',
    `description`   VARCHAR(45)  NULL COMMENT 'Optional description or alternative text for the image.',
    `is_main_image` TINYINT      NULL DEFAULT 0 COMMENT 'Flag indicating if the image is the Product\'s main image (1 = yes, 0 = no).',
    `updated_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the last update.',
    `created_at`    TIMESTAMP    NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created.',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `fk_desired_products_products1_idx` (`product_id` ASC),
    CONSTRAINT `fk_product_images_products1`
        FOREIGN KEY (`product_id`)
            REFERENCES `products` (`id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);
