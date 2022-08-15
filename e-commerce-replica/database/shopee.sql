-- table structure for table `product`

    CREATE TABLE `product` (
        `item_id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
        `item_brand` varchar(200) NOT NULL,
        `item_name` varchar(255) NOT NULL,
        `item_price` double(10,2) NOT NULL,
        `item_image` varchar(255) NOT NULL,
        `item_register` datetime DEFAULT NULL
   )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- dumping data into table `product`
INSERT INTO `product`(`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`)
VALUES (1,'Samsung','Samsung Galaxy 10',152.00,'./assets/product/1.png','2020-03-28 11:08:57'),
       (2, 'Redmi', 'Redmi Note 7', 122.00, './assets/products/2.png', '2020-03-28 11:08:57'),
       (3, 'Redmi', 'Redmi Note 6', 122.00, './assets/products/3.png', '2020-03-28 11:08:57'),
       (4, 'Redmi', 'Redmi Note 5', 122.00, './assets/products/4.png', '2020-03-28 11:08:57'),
       (5, 'Redmi', 'Redmi Note 4', 122.00, './assets/products/5.png', '2020-03-28 11:08:57'),
       (6, 'Redmi', 'Redmi Note 8', 122.00, './assets/products/6.png', '2020-03-28 11:08:57'),
       (7, 'Redmi', 'Redmi Note 9', 122.00, './assets/products/8.png', '2020-03-28 11:08:57'),
       (8, 'Redmi', 'Redmi Note', 122.00, './assets/products/10.png', '2020-03-28 11:08:57'),
       (9, 'Samsung', 'Samsung Galaxy S6', 152.00, './assets/products/11.png', '2020-03-28 11:08:57'),
       (10, 'Samsung', 'Samsung Galaxy S7', 152.00, './assets/products/12.png', '2020-03-28 11:08:57'),
       (11, 'Apple', 'Apple iPhone 5', 152.00, './assets/products/13.png', '2020-03-28 11:08:57'),
       (12, 'Apple', 'Apple iPhone 6', 152.00, './assets/products/14.png', '2020-03-28 11:08:57'),
       (13, 'Apple', 'Apple iPhone 7', 152.00, './assets/products/15.png', '2020-03-28 11:08:57');

-- table structure for table `cart`
CREATE TABLE `cart`(
    `cart_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL
)Engine=InnoDB DEFAULT CHARSET= utf8mb4;

-- table structure for table `user`
CREATE TABLE `user` (
        `user_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
        `first_name` varchar(100) NOT NULL,
        `last_name` varchar(100) NOT NULL,
        `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `user`

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
        (1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
        (2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- Dumping data for table `wishlist`

CREATE TABLE `wishlist` (
                            `cart_id` int(11) NOT NULL,
                            `user_id` int(11) NOT NULL,
                            `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;