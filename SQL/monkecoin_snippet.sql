DROP TABLE IF EXISTS `metacoin_item_purchases`;
CREATE TABLE IF NOT EXISTS `metacoin_item_purchases` (
    `ckey` varchar(32) NOT NULL,
    `purchase_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `item_id` varchar(50) NOT NULL,
    `amount` tinyint(4) unsigned NOT NULL,
    PRIMARY KEY (`ckey`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;