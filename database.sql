-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql205.byetcluster.com
-- Generation Time: Jun 25, 2017 at 11:10 AM
-- Server version: 5.6.35-81.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_19621311_database`
--


-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `Email_id` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  PRIMARY KEY (`Email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Email_id`, `Password`) VALUES
('admin@gmail.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart1`
--

CREATE TABLE IF NOT EXISTS `cart1` (
  `Cart_id` int(5) NOT NULL AUTO_INCREMENT,
  `Order_id` int(10) NOT NULL,
  `Product_id` int(5) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `Imagepath` varchar(500) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Total_price` bigint(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `temp` varchar(40) NOT NULL,
  PRIMARY KEY (`Cart_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cart1`
--

INSERT INTO `cart1` (`Cart_id`, `Order_id`, `Product_id`, `productname`, `brand`, `description`, `Imagepath`, `price`, `quantity`, `Total_price`, `email`, `temp`) VALUES
(6, 1002, 4, 'Formal shirts', 'Peter England', 'peter-england-royal-blue-formal-shirt', '/project/Collection/Men/Formal shirts/peter-england-royal-blue-formal-shirt.jpg', 1449, 1, 1449, 'machhigaurav@gmail.com', ''),
(7, 1003, 95, 'Slogan T-shirts', 'Peter England', 'rootstock-yellow-round-neck-t-shirt', '/project/Collection/Men/slogan/rootstock-yellow-round-neck-t-shirt.jpg', 499, 1, 499, 'machhigaurav@gmail.com', ''),
(8, 1004, 99, 'Slogan T-shirts', 'Lotto', 'beer-studio-white-round-neck-t-shirt', '/project/Collection/Men/slogan/beer-studio-white-round-neck-t-shirt.jpg', 499, 1, 499, 'machhigaurav@gmail.com', ''),
(9, 1005, 84, 'V-neck T-shirts', 'LondonBridge', 'slingshot-red-v-neck-t-shirt', '/project/Collection/Men/Vneck/slingshot-red-v-neck-t-shirt.jpg', 599, 1, 599, 'temporily@gmail.com', ''),
(10, 1006, 30, 'Formal shirts', 'LondonBridge', 'londonbridge-light-green-formal-shirt', '/project/Collection/Men/Formal shirts/londonbridge-light-green-formal-shirt.jpg', 799, 1, 799, 'machhigaurav@gmail.com', '');

--
-- Table structure for table `Food_products`
--

CREATE TABLE IF NOT EXISTS `Food_products` (
  `Product_id` int(5) NOT NULL AUTO_INCREMENT,
  `Category` varchar(6) DEFAULT 'Food_products',
  `ProductType` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Brand` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Price` int(10) NOT NULL,
  `Imagepath` varchar(500) NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `stock` int(5) DEFAULT NULL,
  PRIMARY KEY (`Product_id`),
  KEY `Pid` (`ProductType`,`Brand`,`Price`,`Imagepath`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `men`
--

INSERT INTO `Food_products` (`Product_id`, `Category`, `ProductType`, `Brand`, `Price`, `Imagepath`, `Description`, `stock`) VALUES
(27, 'Food_products', 'Coffee', 'Hawaiin Isles', 5.99, 'https://siphawaii.com/ic/Hawaiian-Isles-Classic-Kona-Coffee-Regular-and-Tropical-Flavored-blends-Nav-Hor-SIPhawaii.png', '10% kona Regular and flavoured blends', 0),
(12,'Food_products','Coffee','Royal Kona',5.99,'https://siphawaii.com/ic/Royal-Kona-Coffee-Regular-and-Tropical-Flavored-blends-Nav-Hor-SIPhawaii.png','10% kona Regular and flavoured blends',0),
(13,'Food_products','Coffee','Lion of Hawaii',5.99,'https://siphawaii.com/ic/Lion-Coffee-Hawaii-International-Coffee-blends-Nav-Hor-SIPhawaii.png','10% kona Regular and flavoured blends',0),
(14,'Food_products','Coffee','Hawaiin Tradition',5.99,'https://siphawaii.com/ip/Hawaiian_Tradition_Coffee_Longs_CVS_Regular_Tropical_Flavored_blends_Nav_Hor_SIPhawaii.png','10% kona Regular and flavoured blends',0),
(15,'Food_products','Coffee','HUALALAI',8.49,'https://siphawaii.com/ip/Kona-Grown-Hualalai-Estate-Hawaiian-Coffee-Nav-Hor-SIPhawaii.png','kona grown',0),
(16,'Food_products','Coffee','Big Island of Hawaii',10.99,'https://siphawaii.com/ip/Mulvadi_Kona_Coffee_Nav_Hor_SIPhawaii.png','Mulvadi medium to dark roast',0),
(17,'Food_products','Coffee','Molokai Coffee',18.88,'https://siphawaii.com/ic/Molokai-Coffee-Malulani-Estate-Kosher-Nav-Hor-SIPhawaii.png','100% Hawaiian Malulai estate',0),
(18,'Food_products','Coffee','Dole Coffee',13.33,'https://siphawaii.com/ip/Dole-Coffee-Waialua-Estate-Ohau-North-Short-Nav-Hor-SIPhawaii.png','100% Hawaiian Waialua Estate',0),
(19,'Food_products','Coffee','Maui Coffee',7.77,'https://siphawaii.com/ip/Maui-Coffee-Kaanapali-Estate-Nav-Hor-SIPhawaii.png','100% Hawaiian Kaanapali Estate',0),
(20,'Food_products','Coffee','Kauai Coffee',9.99,'https://siphawaii.com/ip/Kauai-Coffee-Koloa-Estate-Nav-Hor-SIPhawaii.png','100% Hawaiian Koloa Estate',0),
(21,'Food_products','Coffee','Light Dole Coffee',8.49,'https://siphawaii.com/ip/Dole-Coffee-Waialua-Estate-Ohau-North-Short-Nav-Hor-SIPhawaii.png','100% Hawaiian Waialua Estate',0),
(22,'Food_products','Coffee','24 karat 100% Kona',16.95,'https://siphawaii.com/ic/Lion-Coffee-Hawaii-24-Karat-Nav-Hor-SIPhawaii.png','100% kona medium roast',0),
(23,'Food_products','Coffee','Royal Kona',16.95,'https://siphawaii.com/ip/Roya-Kona-Coffee-100-percent-Pure-Nav-Hor-SIPhawaii.png','Private reserve medium roast',0),
(24,'Food_products','Coffee','Medium to dark Mulvadi',10.99,'https://siphawaii.com/ip/Mulvadi_Kona_Coffee_Nav_Hor_SIPhawaii.png','medium to dark roast',0),
(25,'Food_products','Coffee','Medium Dark HUALALAI',8.49,'https://siphawaii.com/ip/Kona-Grown-Hualalai-Estate-Hawaiian-Coffee-Nav-Hor-SIPhawaii.png','kona grown',0),
(26,'Food_products','Coffee','Dark Mule Skinner',18.88,'https://siphawaii.com/ic/Molokai-MuleSkinner-Coffee-Nav-Hor-SIPhawaii.png','100% Hawaiin',0),

(41,'Food_products','Tea','Mango Peach',3.99,'https://siphawaii.com/ip/Hawaiian_Natural_Tea_Mango_Peach_USDA_Organic_Green_and_Black_Tea_bags_200.png','Organic Green and Black Tea',0),
(42,'Food_products','Tea','Fruit Orange',3.99,'https://siphawaii.com/ip/Hawaiian_Natural_Tea_Passionfruit_Orange_USDA_Organic_Green_and_Black_Tea_bags_200.png','Organic Green and Black Tea',0),
(43,'Food_products','Tea','Strawberry Pineapple',3.99,'https://siphawaii.com/ip/Hawaiian_Natural_Tea_Strawberry_Pineapple_USDA_Organic_Green_and_White_Tea_bags_200.png','Organic Green and White Tea',0),
(44,'Food_products','Tea','Lemon Chamoile Tea',3.99,'https://siphawaii.com/ip/Hawaiian_Natural_Tea_Lemon_Chamomile_Caffeine_Free_Herbal_Tea_bags_USDA_Organic_200.png','Rejuvenating herbal tea',0),
(45,'Food_products','Tea','Hawaiian Natural Tea collection gift set',3.99,'https://siphawaii.com/ip/Hawaiian_Natural_Tea_The_Tea_Chest_Assorted_Medley_USDA_Organic_Green_Tea_bags_Gift_Pack_Set_200.png','Medly of fine aromas',0),
(46,'Food_products','Tea','Green Tea Hawaii drink mix Single serve',14.99,'https://siphawaii.com/ip/Organic_Green_Tea_USDA_Organic_GOCA_certified_Hawaiian_Islands_Amber_Jade_color_200.png','Box 6 Count Sachets',0),
(47,'Food_products','Tea','Organic Green Tea of Amber',5.49,'https://siphawaii.com/ip/Organic_Green_Tea_USDA_Organic_GOCA_certified_Hawaiian_Islands_Amber_Jade_color_200.png','20 bags of tea',0),
(48,'Food_products','Tea','Organic Green Tea Bulk Bag',22.99,'https://siphawaii.com/ip/Guava_Ginseng_Herbal_Green_Tea_Bags_Tropical_Flavored_Hawaiian_Islands_200.png','100 bags of Tea',0),
(49,'Food_products','Tea','Guaua Ginseng Tropical Herbal Green Tea',3.99,'https://siphawaii.com/ip/Hibiscus_Honey_Lemon_Green_Tea_Bags_Tropical_Flavored_Hawaiian_Islands_200.png','20 bags of tea',0),
(50,'Food_products','Tea','Cocodomia Macadamia Tropical Herbal Tea',5.49,'https://siphawaii.com/ip/Coconut_Macadamia_Nut_Herbal_Rooibos_Blend_Tea_Hawaiian_Islands_200.png','20 bags box',0),
(51,'Food_products','Tea','Hibiscus HoneyLemon Green Tea',5.49,'https://siphawaii.com/ip/Hibiscus_Honey_Lemon_Green_Tea_Bags_Tropical_Flavored_Hawaiian_Islands_200.png','20 bags box',0),
(52,'Food_products','Tea','Assorted 5 pack green tea',24.99,'https://siphawaii.com/ip/Hawaiian_Islands_Tea_Variety_Tropical_Flavors_5_Pack_200.png','100 pack of 5 bags Green Tea',0),
(53,'Food_products','Tea','Mamaki Black Tea leaves ',24.99,'https://siphawaii.com/ip/Mamaki_Tea_Hawaii_Herbal_Organic_Caffeine_Free_whole_leaves_SIPhawaii_200.png','28g whole leaf pack ',0),
(54,'Food_products','Tea','Guava Nectar',3.49,'https://siphawaii.com/ip/Hawaiian_Sun_Powder_Drink_Mix_Guava_Nectar_200.png','1 quart exotic inflavour ',0),
(55,'Food_products','Tea','Iced Tea',3.49,'https://siphawaii.com/ip/Hawaiian_Sun_Powder_Drink_Mix_Iced_Tea_200.png','141 gms sun iced tea ',0),
(56,'Food_products','Tea','Lilikoi Passion Fruit',3.49,'https://siphawaii.com/ip/Hawaiian_Sun_Powder_Drink_Mix_Lilikoi_Passionfruit_200.png','141 gms quart exotic inflavour ',0),
(57,'Food_products','Tea','Lilikoi Passion Orange',3.49,'https://siphawaii.com/ip/Hawaiian_Sun_Powder_Drink_Mix_Passion_Orange_200.png','141 gms orange flavour',0),
(58,'Food_products','Tea','Mango Madness flavoured tea',8.99,'https://siphawaii.com/ip/Tea_Sticks_Hawaii_Plantation_Tea_Mango_Madness_Single_Serve_Black_Bistro_Tea_Wand_200.png','39 gms of tea sticks',0),
(59,'Food_products','Tea','Passion Fruit',8.99,'https://siphawaii.com/ip/Tea_Sticks_Hawaii_Plantation_Black_Tea_Passion_Fruit_Single_Serve_Bistro_Tea_Wand_200.png','39 gms tea sticks',0),
(60,'Food_products','Tea','Pineapple Paradise',8.99,'https://siphawaii.com/ip/Tea_Sticks_Hawaii_Plantation_Tea_Pineapple_Paradise_Single_Serve_Black_Bistro_Tea_Wand_200.png','39 gms of tea wands',0),


(71,'Food_products','Macadamia Nuts','Hawaiian host dry roasted',6.49,'https://siphawaii.com/ic/Hawaiian-Host-Dry-Roasted-Macadamia-Nuts-Pouch-200.png','4.5 OZ dry roasted sea salts',0),
(72,'Food_products','Macadamia Nuts','Hawaiian dry roasted Mauna Loa',6.49,'https://siphawaii.com/ic/Mauna-Loa-Macadamia-Nuts-Unsalted-Salt-Free-Dry-Roasted-200.png','Dry roasted unsalted macadamias',0),
(73,'Food_products','Macadamia Nuts','Hawaiian host dry roasted',6.49,'https://siphawaii.com/ic/Hawaiian-Host-Honey-Glazed-Macadamia-Nuts-Pouch-200.png','Dry roasted unsalted macadamias',0),
(74,'Food_products','Macadamia Nuts','Island princess',7.99,'https://siphawaii.com/ip/Island-Princess-Macadamia-Nuts-Chocolate-Covered.png','Premium macademia nuts covered with chocolate',0),
(75,'Food_products','Macadamia Nuts','Hawaiian host ',8.99,'https://siphawaii.com/ip/Hawaiian-Host-AlohaMacs-Premium-Milk-Chocolate-Covered-Macadamia-Nuts.png','Aloha Macs Premium milk chocolate',0),
(76,'Food_products','Macadamia Nuts','Taste of Hawai',9.99,'https://siphawaii.com/ip/Macadamia_nut_Chocolate_70percent_Cacao_Hawaii_SIPhawaii.com.jpg','70% Cocoa dark chocolate macadamia nuts',0),
(77,'Food_products','Macadamia Nuts','Hawaiian sun',7.99,'https://siphawaii.com/ip/Macadamia_nuts_chocolate_covered_Sugar_Free_Hawaii_SIPhawaii.com.jpg','sugar free chocolate covered macadamia nuts',0),



(81,'Food_products','Pancakes','Banana macademia nut',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Banana-Macadamia-Nut-Natural-Flavored-200.png','Hawaiin sun pancake mix-Banana macademia nut',0),
(82,'Food_products','Pancakes','Blueberry Acai',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Blueberry-Acai-Natural-Flavored-200.png','Hawaiin sun pancake mix-Blueberry Acai',0),
(83,'Food_products','Pancakes','Passion fruit lillikoi',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Lilikoi-Passion-Fruit-Natural-Flavored-200.png','Hawaiin sun pancake mix-Passion fruit lillikoi',0),
(84,'Food_products','Pancakes','Strawberry-guava',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Strawberry-Guava-Natural-Flavored-200.png','Hawaiin sun pancake mix-Strawberry-guava',0),
(85,'Food_products','Pancakes','chocolate macademia nut',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Chocolate-Macadamia-Nut-Natural-Flavored-200.png','Hawaiin sun pancake mix-chocolate macademia nut',0),
(86,'Food_products','Pancakes','Pineapple coconut',3.89,'https://siphawaii.com/ic/Hawaiian-Sun-Pancake-Mix-Pineapple-Coconut-Natural-Flavored-200.png','Hawaiin sun pancake mix-Pineapple coconut',0),
(87,'Food_products','Pancakes','Gourmatt Buttermilk pancake mix Banana',5.99,'https://siphawaii.com/ip/Mulvadi_Pancake_Mix_Unflavored_Regular_Gourmet_Hawaiian_Complete_Buttermilk_200.png','Gourmatt Buttermilk pancake mix Banana',0),
(88,'Food_products','Pancakes','Buttermilk unflavoured',5.99,'https://siphawaii.com/ip/Mulvadi_Pancake_Mix_Unflavored_Regular_Gourmet_Hawaiian_Complete_Buttermilk_200.png','Complete pancake mix original Buttermilk unflavoured',0),
(89,'Food_products','Pancakes','Gourmett Buttermilk pancake',5.99,'https://siphawaii.com/ip/Mulvadi_Pancake_Mix_Coconut_Flavor_Gourmet_Buttermilk_Hawaii_200.png','Gourmett buttermilk pancake mix original coconut',0),
(90,'Food_products','Pancakes','Maui breakfast pack',69.98,'https://siphawaii.com/ip/Pancake_Waffle_mix_Maui_Banana_Macadamia_Nut_Hawaii_SIPhawaii_200.png','6 maui pancake mix and maui coffee and sun coconut syrup',0),
(91,'Food_products','Pancakes','Hula foot pancake',8.49,'https://siphawaii.com/ip/Pancake_Waffle_mix_Maui_Pineapple_Coconut_Hawaii_SIPhawaii_200.png','Kona coffee flavour with chocolate chips',0),
(92,'Food_products','Pancakes','Hula waffle mix pancake',8.49,'https://siphawaii.com/ip/Pancake_mix_Hula_Girl_Mango_Macadamia_Nut_SIPhawaii_200.png','Mango macademia nut',0),
(97,'Food_products','Pancakes','Maui Pancake mix',8.99,'https://siphawaii.com/ip/Aloha_Sunset_Pancake_Mix_Banana_Macadamia_Nut_flavor_300_2012.png','Banana macademia nut',0),
(93,'Food_products','Pancakes','Maui Pancake mix',8.99,'https://siphawaii.com/ip/Pancake_Waffle_mix_Maui_Banana_Macadamia_Nut_Hawaii_SIPhawaii_200.png','Pineapple coconut',0),
(94,'Food_products','Pancakes','Maui Pancake waffle mix',74.98,'https://siphawaii.com/ip/Pancake_Waffle_mix_Maui_Variety_9Pack_Hawaii_SIPhawaii.gif','Variety of 9 pack waffle mix',0),
(95,'Food_products','Pancakes','Maui Pancake mix',8.99,'https://siphawaii.com/ip/Pancake_Waffle_mix_Chocolate_Macadamia_NUt_Hawaii_SIPhawaii_200.png','Chocolate macadamia nut',0),
(96,'Food_products','Pancakes','Taro brand Pancake mix',9.98,'https://siphawaii.com/ip/Taro_Pancake_mix_flour_Poi_Taro_brand_Hawaii_SIPhawaii_200.png','Taro pancake with all purpose flour',0),

(101,'Food_products','Pancake syrups','Coconut syrup',8.99,'https://siphawaii.com/ip/Hawaiian_Sun_premium_coconut_syrup_large_200.png','Hawaiin sun the original coconut syrup',0),
(102,'Food_products','Pancake syrups','Guava syrup',8.99,'https://siphawaii.com/ip/Hawaiian_Sun_guava_syrup_large_pancake_mix_200.png','Hawaiin sun guava syrup',0),

(103,'Food_products','By the case','Mulvadi',299.80,'https://siphawaii.com/ip/Mulvadi_Coffee_Beans_Case_20_200.png','Mulvadi-100% kona coffee beans',0),
(104,'Food_products','By the case','Mulvadi',299.80,'https://siphawaii.com/ip/Mulvadi_Coffee_Ground_Case_20_200.png','Mulvadi-100% kona coffee-Ground APG',0),
(105,'Food_products','By the case','Hawaiin Brew',174,'https://siphawaii.com/ip/Hawaiian_Brew_Instant_Kona_Coffee_Case_24_200.png','Hawaiin Brew instant kona coffee in glass jar',0),
(106,'Food_products','By the case','Hula Girl',191.76,'https://siphawaii.com/ip/Hula_Girl_Instant_Kona_Coffee_freeze_dried_Case_24_200.png','Hula girl -100% instant kona coffee',0),
(107,'Food_products','By the case','Coffee sticks',140.40,'https://siphawaii.com/ip/Single_Serve_Packets_Instant_Coffee_Instant_Kona_Coffee_Freeze_Dried_Granulated_Rip_Sticks_Mulvadi_Box_12_Pack.png','24 packets with 12 coffee sticks',0),
(108,'Food_products','By the case','Coffee sticks',206.60,'https://siphawaii.com/ip/Mulvadi_Instant_Kona_Coffee_Rip_Sticks_Box_12_Single_Serve_200.png','36 packets with 12 coffee sticks',0),
(109,'Food_products','By the case','Coffee sticks',232,'https://siphawaii.com/ip/Single_Serve_Packets_Instant_Coffee_Instant_Kona_Coffee_Freeze_Dried_Granulated_Rip_Sticks_Mulvadi_200.png','Resealable bulk with 500 coffee sticks',0),
(110,'Food_products','By the case','Coffee sticks',450,'https://siphawaii.com/ip/Single_Serve_Packets_Instant_Coffee_Instant_Kona_Coffee_Freeze_Dried_Granulated_Rip_Sticks_Mulvadi_200.png','Resealable bulk with 1000 coffee sticks',0),
(111,'Food_products','By the case','100% Oahu Waialua coffee',259.80,'https://siphawaii.com/ip/Dole_Coffee_Waialua_Coffee_Beans_Oahu_North_Shore_Estate_Case_20.gif','Waialua Dole coffee',0),
(112,'Food_products','By the case','100% Oahu Waialua coffee',259.80,'https://siphawaii.com/ip/Dole_Coffee_Waialua_Estate_Roasted_North_Shore_Oahu_Case20.gif','Dole waialua coffee',0),
(113,'Food_products','By the case','Mulvadi 10% Kona coffee blend',79,'https://siphawaii.com/ip/Hula_Girl_Coffee_Case_20.gif','Mulvadi Premium coffee',0),
(114,'Food_products','By the case','Mulvadi 10% Kona coffee blend',79,'https://siphawaii.com/ip/Hula_Girl_Coffee_Vanilla_Macadamia_Nut_Case_20.gif','Vanilla Macadamia Nut',0),
(115,'Food_products','By the case','Mulvadi 10% Kona coffee blend',79,'https://siphawaii.com/ip/Hula_Girl_Coffee_Chocolate_Macadamia_Nut_Case_20.gif','Chocolate Macadamia Nut',0),
(116,'Food_products','By the case','Pancake mix',29.90,'https://siphawaii.com/ip/Aloha_Sunset_Pancake_Mix_By_the_Case_15.gif','Variety 5 of each flavor',0),
(117,'Food_products','By the case','Pancake mix',29.90,'https://siphawaii.com/ip/Aloha_Sunset_Pancake_Mix_By_the_Case_15_Chocolate_Coconut_Mac_Nut.gif','Taro macadamia nut flavour',0),
(118,'Food_products','By the case','Pancake mix',29.90,'https://siphawaii.com/ip/Aloha_Sunset_Pancake_Mix_By_the_Case_15_Banana_Macadamia_Nut.gif','Banana macadamia nut',0),
(119,'Food_products','By the case','Pancake mix',29.90,'https://siphawaii.com/ip/Aloha_Sunset_Pancake_Mix_By_the_Case_15_Chocolate_Coconut_Mac_Nut.gif','Chocolate coconut macnut',0),
(120,'Food_products','By the case','100% Kauai coffee',143.82,'https://siphawaii.com/ip/Hawaiian_Isles_Coffee_by%20the_case.gif','Kauai coffee-Regular medium roast',0),
(121,'Food_products','By the case','100% Kauai coffee',143.82,'https://siphawaii.com/ip/Kauai_Coffee_Case_18_100_percent_Hawaiian.gif','Vanilla macadamia nut',0),
(122,'Food_products','By the case','100% Kauai coffee',143.82,'https://siphawaii.com/ip/Kauai_Coffee_Case_18_100_percent_Hawaiian.gif','Chocolate macadamia nut',0),
(123,'Food_products','By the case','100% Kauai coffee',143.82,'https://siphawaii.com/ip/Kauai_Coffee_Case_18_100_percent_Hawaiian.gif','Coconut caramel crunch',0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `Order_id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(15) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Country` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Zip_code` int(10) NOT NULL,
  `contactNo` varchar(11) DEFAULT NULL,
  `ShippingAddress` varchar(40) DEFAULT NULL,
  `ShippingMethod` varchar(20) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  `TypeOfCreditcard` varchar(25) DEFAULT '                  -',
  `NameOnCC` varchar(30) DEFAULT '                   -',
  `CCNo` bigint(50) DEFAULT NULL,
  `CVV` int(5) DEFAULT NULL,
  `ExpirationDate` varchar(20) DEFAULT NULL,
  `Order_Ammount` bigint(50) NOT NULL,
  `temp` varchar(50) DEFAULT NULL,
  `OrderDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Email_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1007 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `FirstName`, `LastName`, `Email`, `Country`, `State`, `City`, `Zip_code`, `contactNo`, `ShippingAddress`, `ShippingMethod`, `PaymentMethod`, `TypeOfCreditcard`, `NameOnCC`, `CCNo`, `CVV`, `ExpirationDate`, `Order_Ammount`, `temp`, `OrderDateTime`, `Email_id`) VALUES
(1003, 'Gaurav', 'machhi', 'machhigaurav@gmail.com', 'India', 'Gujarat', 'Vadodara', 3900009, '9714576098', '1164, Tarsali, Vishal nagar Vadodara', 'Free Shipping', 'Cash on delivery', '                  -', '                   -', 0, 0, '', 499, '', '2016-07-28 14:24:35', 'machhigaurav@gmail.com'),
(1004, 'Gaurav', 'machhi', 'machhigaurav@gmail.com', 'India', 'Gujarat', 'Vadodara', 3900009, '9714576098', '1164, Tarsali, Vishal nagar Vadodara', 'Standard Shiping', 'Credit Card', 'MasterCard', 'Machhi Gaurav', 7777777777777777, 5465, '02/2020', 508, '', '2016-07-28 14:25:12', 'machhigaurav@gmail.com'),
(1005, 'Gaurav', 'machhi', 'machhigaurav@gmail.com', 'India', 'Gujarat', 'Vadodara', 3900009, '9714576098', '1164, Tarsali, Vishal nagar Vadodara', 'Free Shipping', 'Cash on delivery', '                  -', '                   -', 0, 0, '', 599, '', '2016-09-06 19:48:14', 'temporily@gmail.com'),
(1006, 'Gaurav', 'machhi', 'machhigaurav@gmail.com', 'India', 'Gujarat', 'Vadodara', 3900009, '9714576098', '1164, Tarsali, Vishal nagar Vadodara', 'Free Shipping', 'Cash on delivery', '                  -', '                   -', 0, 0, '', 799, '', '2016-10-01 22:51:15', 'machhigaurav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signuptable`
--

CREATE TABLE IF NOT EXISTS `signuptable` (
  `User_id` int(5) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `ContactNo` bigint(12) NOT NULL,
  `EmailId` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `DateAndTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`EmailId`),
  UNIQUE KEY `User_id` (`User_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `signuptable`
--

INSERT INTO `signuptable` (`User_id`, `FirstName`, `LastName`, `Gender`, `ContactNo`, `EmailId`, `Password`, `DateAndTime`) VALUES
(43, 'Gaurav', 'Machhi', 'male', 9714576098, 'machhigaurav@gmail.com', '12345', '2016-06-22 14:46:06'),
(45, 'gaurav', 'machhi', 'male', 7777777777, 'gaurav@gmail.com', '123456', '2017-02-13 10:21:12'),
(46, 'abc', 'bcd', 'female', 1111111111, 'abcd@gmail.com', '00000', '2017-03-12 05:07:29'),
(47, 'dfbd', 'dfbdfbbf', 'male', 5616156465, 'tfbfgb@gmail.com', 'QWERT', '2017-03-14 17:27:10'),
(48, 'Tino', 'Mwadeyi', 'male', 755174253, 'tinomwadeyi@gmail.com', 'Naruto06', '2017-03-19 15:17:51'),
(49, 'Test', 'Test', 'male', 4353453, 'admin@admin.co.uk', 'password', '2017-05-09 15:47:24'),
(50, 'test', 'subject', 'male', 915419944, 'asdasd@yahoo.com', '12312312', '2017-05-13 04:01:48'),
(51, 'testsubject', 'asss', 'male', 912612121, 'hanswin@yahoo.com', '12312312', '2017-05-13 04:03:04'),
(52, 'azee', 'rox', 'male', 33534545, 'azeebrox@gmail.com', 'aseeb', '2017-05-15 05:36:36'),
(53, '', '', '', 0, '', '', '2017-06-09 08:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `woman`
--

CREATE TABLE IF NOT EXISTS `Other_products` (
  `Product_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(6) DEFAULT 'Other_products',
  `ProductType` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Brand` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Price` int(10) NOT NULL,
  `Imagepath` varchar(500) CHARACTER SET latin1 NOT NULL,
  `Description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `stock` int(5) DEFAULT NULL,
  PRIMARY KEY (`Product_id`),
  KEY `Pid` (`ProductType`,`Brand`,`Price`,`Imagepath`,`Description`),
  KEY `Product_id` (`Product_id`,`ProductType`,`Brand`,`Price`,`Imagepath`,`Description`,`stock`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `woman`
--

INSERT INTO `Other_products` (`Product_id`, `Category`, `ProductType`, `Brand`, `Price`, `Imagepath`, `Description`, `stock`) VALUES
(131, 'Other_Products', 'Bath and body products', 'Fragrance free', 14.99,'https://siphawaii.com/ip/Kukui_Cream_Fragrance_Free_200.png', 'Kukui cream Unscented Moisturizer', 0),
(132,'Other_Products','Bath and body products','Pacific mist',14.99,'https://siphawaii.com/ip/Kukui_Cream_Pacific_Mist_200.png','Refreshing fragrance of citrus orange essential oil',0),
(133,'Other_Products','Bath and body products','Paradise fragrance',14.99,'https://siphawaii.com/ip/Kukui_Cream_Paradise_Fragrance_200.png','A refined aroma with a slightly citrus zest and a hint of a floral blend',0),
(134,'Other_Products','Bath and body products','Kukui moisturizer-fragrance free',14.99,'https://siphawaii.com/ip/Kukui_Lotion_Fragrance_Free_200.png','Enriched creamy lotion unscented',0),(135,'Other_Products','Bath and body products','Dialy hand and body lotion-Pacific mist',14.99,'https://siphawaii.com/ip/Kukui_Lotion_Pacific_Mist_200.png','A Refreshing fragrance of citrus orange essential oil',0),(136,'Other_Products','Bath and body products','Kukui oil-paradise fragrance',14.99,'https://siphawaii.com/ip/Kukui_Lotion_Paradise_Fragrance_200.png','A refined aroma with a slightly citrus zest and a hint of a floral blend',0),
(137,'Other_Products','Bath and body products','Moisturizing oil-Oils of aloha fragrance free',16.99,'https://siphawaii.com/ip/Kukui_Oil_Fragrance_Free_200.png','Perfect makeup remover, Since it is safe for eyes',0),
(138,'Other_Products','Bath and body products','Kukui oils-Tropic breeze',16.99,'https://siphawaii.com/ip/Kukui_Oil_Tropic_Breeze_200.png','A relaxing blend of lavender,chamamile and rosemary essential oils',0),
(139,'Other_Products','Bath and body products','kukui oil-Paradise fragrance',16.99,'https://siphawaii.com/ip/Kukui_Oil_Paradise_Fragrance_200.png','A refined aroma with a slightly citrus zest and a hint of a floral blend',0),
(140,'Other_Products','Bath and body products','Kukui oil-Pacific mist',16.99,'https://siphawaii.com/ip/Kukui_Oil_Pacific_Mist_200.png','A Refreshing fragrance of citrus orange essential oil',0),(141,'Other_Products','Bath and body products','Sunset massage oil with tropic breeze fragrance',9.99,'https://siphawaii.com/ip/Kukui_Oil_Massage_Oil.jpg','Sunset massage oil with tropic breeze fragrance',0),(142,'Other_Products','Bath and body products','Sparkling mango fragrance',14.99,'https://siphawaii.com/ip/Kukui_Oil_Cleanser_Mango_Fragrance_small.jpg','Moisturizing cleanser with sparkling mango fragrance',0),
(143,'Other_Products','Bath and body products','Mixture',28.99,'https://siphawaii.com/ip/Kukui_Sampler_Gift_Set_small.gif','Mixture of moisturizing oil, soap and body lotion',0),
(144,'Other_Products','Bath and body products','Hypoallerginic glycerine kukui soap',19.99,'https://siphawaii.com/ip/Kukui_Soap_Set_Rainbow_small.gif','Moisturizing and Hypoallerginic glycerine kukui soap',0),

(151,'Other_Products','Natural health','Body mint original',15.99,'https://siphawaii.com/ip/Body_Mint_Original_Tablets_Standard_Formula_Deodorant_protection_for_Men_and_Women_Dietary_Supplement_Nutraceuticals_Hawaii_200.png','Body mint original-standard formula of women and men',0),
(152,'Other_Products','Natural health','Body mint Lady',15.99,'https://siphawaii.com/ip/Body_Mint_Lady_Feminine_Deodorant_Protection_for_Women_Dietary_Supplement_Nutraceuticals_hawaii_200.png','Body mint lady for feminine deodrant protection with vitamin D and calcium',0),
(153,'Other_Products','Natural health','Body mint sport',15.99,'https://siphawaii.com/ip/Body_Mint_Sport_Pro_Strength_Formula_Tablets_Deodorant_protection_for_Men_and_Woman_Dietary_Supplement_Nutraceuticals_Hawaii_200.png','Body mint sport for men and wmen dietary supplements',0),
(154,'Other_Products','Natural health','Wai oil',14.99,'https://siphawaii.com/ip/Wai_Ola_Bitter_Melon_Turmeric_Root_Extract_Capsules_Tonic_Diabetes_Natural_Dietary_Supplement_Nutraceuticals_Hawaii_200.png','Wai oil-Bitter melon and turmeric extract bottle(500mg 3 week supply)',0),
(155,'Other_Products','Natural health','Wai oil-3 pack',12.99,'https://siphawaii.com/ip/Wai_Ola_Bitter_Melon_Turmeric_Root_Extract_Capsules_Tonic_Diabetes_Natural_Dietary_Supplement_Nutraceuticals_Hawaii_3pack_200.png','Wai oil-Bitter melon and turmeric extract bottle(500mg 9 week supply)',0),
(156,'Other_Products','Natural health','Wai oil-6 pack',12.49,'https://siphawaii.com/ip/Wai_Ola_Bitter_Melon_Turmeric_Root_Extract_Capsules_Tonic_Diabetes_Natural_Dietary_Supplement_Nutraceuticals_Hawaii_6pack_200.png','Wai oil-Bitter melon and turmeric extract bottle(500mg 19 week supply)',0),
(157,'Other_Products','Natural health','Bioastin',19.99,'https://siphawaii.com/ip/BioAstin_Hawaiian_Astaxanthin_Antioxidant_Free_Radical_Defense_from_Microalgae_by_Nutrex_Kona_Hawaii_200.png','Hawaiian Astaxanthin bottle 60ct gel caps-4mg',0),
(158,'Other_Products','Natural health','BioAstin Antioxidant',18.99,'https://siphawaii.com/ip/Bio_Astin_Hawaiian_Astaxanthin_Natural_Antioxidant_Dietary_supplement_Nutraceuticals_Hawaii_3Pack_200.png','Hawaiian Astaxanthin bottle 3*60ct gel caps-4mg',0),
(159,'Other_Products','Natural health','BioAstin Antioxidant',18.49,'https://siphawaii.com/ip/Bio_Astin_Hawaiian_Astaxanthin_Natural_Antioxidant_Dietary_supplement_Nutraceuticals_Hawaii_6Pack_200.png','Hawaiian Astaxanthin bottle 6*60ct gel caps-4mg',0),

(161,'Other_Products','Music Video','Popular Hawaiin Island Music',16.99,'https://siphawaii.com/ip/Music_from_the_Islands_of_Aloha_SIPhawaii.jpg','Music from the islands of aloha',0),
(162,'Other_Products','Music Video','Popular Hawaiin Island Music',16.99,'https://siphawaii.com/ip/Music_Hawaii_50_album_greatest_vol1_SIPhwaii.jpg','Fifty great hawaiis album of all time',0),
(163,'Other_Products','Music Video','Popular Hawaiin Island Music',16.99,'https://siphawaii.com/ip/Music_Hawaii_Drumbeats_of_the_Pacific_vol2_SIPhawaii.jpg','Drum beats of pacific',0),
(164,'Other_Products','Music Video','Elua Popular Hawaiin Island Music',16.99,'https://siphawaii.com/ip/Music_Hawaii_Elua_Pure_Hawaiian_SIPhawaii.jpg','Pure hawaiin 16 songs',0),
(165,'Other_Products','Music Video','Israel Kamakawiwo Hawaiin Music',16.99,'https://siphawaii.com/ip/Music_Amy_Hanaialii_Gilliom_Aumakua_SIPhawii.jpg','Pure hawaiin 14 songs',0),
(166,'Other_Products','Music Video','Israel Kamakawiwo Hawaiin Music',16.99,'https://siphawaii.com/ip/Music_Amy_Gilliom_Generation_Hawaii_SIPhawii.jpg','Pure hawaiin 14 classic songs',0),
(167,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD_Scenic_Video_postcard_hawaiian_islands.jpg','Pure hawaiin classic songs',0),
(168,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD_Scenic_Video_postcard_the_big_island_hawaii_kona.jpg','Pure hawaiin island classic songs',0),
(169,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD_Scenic_Video_postcard_oahu_hawaii.jpg','Hawaii pearl harbor and arizonawar memorial',0),
(170,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD_Scenic_Video_postcard_kauai_hawaii.jpg','The Garden Island and na pali coast',0),
(171,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD_Scenic_Video_postcard_maui_molokai_lanai_hawaii.jpg','The rainbow Island molakai',0),
(172,'Other_Products','Music Video','Scenic Dvd video',12.49,'https://siphawaii.com/ip/DVD-Scenic_Video_postcard_5_card_all_islands_collection_hawaii.jpg','Complete set of all 5 islands',0),

(181,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-flowers-of-Hawaii-overview.png','Flowers of Hawaii-2018',0),
(182,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-Scenery-of-Hawaii-overview.png','Pictorial scenery of Hawaii-2018',0),
(183,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-big-island-of-Hawaii-overview.png','The big islands of Hawaii-2018',0),
(184,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-Maui-the-valley-island-overview.png','Maui The valley Isle-2018',0),
(185,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-Kauai-the-garden-island-overview.png','Kauai The Garden Isle-2018',0),
(186,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2017-flowers-of-Hawaii-Back.png','Flowers of Hawaii-2017',0),(187,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2017-Scenery-of-Hawaii-Back.png','Pictorial sceneria of Hawaii-2017',0),
(188,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2017-big-island-of-Hawaii-Back.png','The big islands of Hawaii-2017',0),
(189,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2017-Maui-the-valley-island-Back.png','Maui The valley Isle-2017',0),
(190,'Other_Products','A little aloha','Calenders',2.99,'https://siphawaii.com/ic/calendar-2018-Kauai-the-garden-island-overview.png','Kauai The Garden Isle-2017',0),
(191,'Other_Products','A little aloha','Hawaiin coffee mugs',14.99,'https://siphawaii.com/ip/MUG_coffee_duo_Beach_Life_SIPhawaii.jpg','Beach life coffee mugs',0),
(192,'Other_Products','A little aloha','Hawaiin coffee mugs',14.99,'https://siphawaii.com/ip/MUG_coffee_duo_Ilima_Lei_SIPhawaii.jpg','Ilema ley coffee mugs',0),
(193,'Other_Products','A little aloha','Kitchen mit sets',9.95,'https://siphawaii.com/ip/Kitchen-Mitt-Set-Blue-Hawaii-Plumeria.png','Blue hawaii pluremia',0),
(194,'Other_Products','A little aloha','Kitchen mit sets',9.95,'https://siphawaii.com/ip/Kitchen-Mit-Set-Red-Hibiscus-Hawaii-State-Flower.png','Hibiscus hawaii state flower',0),
(195,'Other_Products','A little aloha','Kitchen mit sets',9.95,'https://siphawaii.com/ip/Kitchen_mitt_set_palms_siphawaii.jpg','Palms hawaii pluremia',0),
(196,'Other_Products','A little aloha','Photo albums',3.95,'https://siphawaii.com/ip/KeyRing_Hula_Girl_Honeys_SIPhawaii_small.jpg','Key ring hula honeys',0),
(197,'Other_Products','A little aloha','Magnets',4.95,'https://siphawaii.com/ip/Magnet_Fly_to_South_Seas_SIPhawaii.jpg','Fly to south seals',0),
(198,'Other_Products','A little aloha','Magnets',4.95,'https://siphawaii.com/ip/Magnet_Hula_Girls_Aloha_Hawaii_SIPhawaii.jpg','Aloa by kerne ericson',0),
(199,'Other_Products','A little aloha','Magnets',4.95,'https://siphawaii.com/ip/Magnet_Aloha_Hawaii_SIPhawaii.jpg','Aloha hawaii',0),
(200,'Other_Products','A little aloha','Hawaiin luggage tags',4.95,'https://siphawaii.com/ip/Luggage_Tag_Slippers_SIPhawaii.jpg','Slippers',0),
(201,'Other_Products','A little aloha','Hawaiin luggage tags',4.95,'https://siphawaii.com/ip/Luggage_Tag_Plumeria_SIPhawaii.jpg','Plumeria',0),
(202,'Other_Products','A little aloha','Hawaiin luggage tags',4.95,'https://siphawaii.com/ip/Luggage_Tag_Map_Old_Hawaii_SIPhawaii.jpg','Map of the hawaiin island circa',0),
(203,'Other_Products','A little aloha','Candles',8.95,'https://siphawaii.com/ip/Candle_Jungle_Oval_SIPhawaii.jpg','Tropical jungle scented decal',0),
(204,'Other_Products','A little aloha','Candles',8.95,'https://siphawaii.com/ip/Candle_Hibiscus_Oval_SIPhawaii.jpg','Lovely hibiscus scented decal',0),
(205,'Other_Products','A little aloha','Candles',8.95,'https://siphawaii.com/ip/Candle_Bird_of_Paradise_Oval_SIPhawaii.jpg','Elegant bird of paradise scented decal',0),

(206,'Other_Products','Body_mint_and_emery_boards','Body mint',15.99,'https://siphawaii.com/ip/Body_Mint_Hawaiian_Organics_dietary_supplements.jpg','Body mint-60 ct tablets 1 month supply',0),
(207,'Other_Products','Body_mint_and_emery_boards','Body mint',44.97,'https://siphawaii.com/ip/Body_Mint_Hawaiian_Organics_dietary_supplements.jpg','Body mint-3*60 ct tablets 3 months supply',0),
(208,'Other_Products','Body_mint_and_emery_boards','Body mint',86.94,'https://siphawaii.com/ip/Body_Mint_Hawaiian_Organics_dietary_supplements.jpg','Body mint-6*60 ct tablets 6 months supply',0),
(209,'Other_Products','Body_mint_and_emery_boards','Emery boards',3.49,'https://siphawaii.com/ip/emery_board_Beach_Slippers_SIPhawaii.jpg','Beach slippers',0),
(210,'Other_Products','Body_mint_and_emery_boards','Emery boards',3.49,'https://siphawaii.com/ip/emery_board_spring_plumeria_SIPhawaii.jpg','Spring plumeria',0),
(211,'Other_Products','Body_mint_and_emery_boards','Emery boards',3.49,'https://siphawaii.com/ip/emery_board_hibiscus_dream_SIPhawaii.jpg','Hibiscus dream',0),
(212,'Other_Products','Body_mint_and_emery_boards','Emery boards',3.49,'https://siphawaii.com/ip/emery_board_paradise_hisbiscus_SIPhawaii.jpg','Paradise hibiscus',0),
(213,'Other_Products','Body_mint_and_emery_boards','Emery boards',3.49,'https://siphawaii.com/ip/emery_board_hula_honeys_SIPhawaii.jpg','Hula honeys',0),

(214,'Other_Products','Lip_balm_and_bath_crystals','Lip balms',4.99,'https://siphawaii.com/ip/lip_balm_mango_mania_SIPhawaii.gif','Mango mania',0),
(215,'Other_Products','Lip_balm_and_bath_crystals','Lip balms',4.99,'https://siphawaii.com/ip/lip_balm_passion_plumeria_SIPhawaii.gif','Passion plumeria',0),
(216,'Other_Products','Lip_balm_and_bath_crystals','Lip balms',4.99,'https://siphawaii.com/ip/lip_balm_coco_papaya_SIPhawaii.gif','Coco papaya',0),
(217,'Other_Products','Lip_balm_and_bath_crystals','Lip balms',4.99,'https://siphawaii.com/ip/lip_balm_ginger_guava_SIPhawaii.gif','Ginger guava',0),
(218,'Other_Products','Lip_balm_and_bath_crystals','Bath crystals',2.89,'https://siphawaii.com/ip/bath_crystals_mango_SIPhawaii_small.jpg','Mango',0),
(218,'Other_Products','Lip_balm_and_bath_crystals','Bath crystals',2.89,'https://siphawaii.com/ip/bath_crystals_passion_pineapple_SIPhawaii_small.jpg','Passion pineapple',0),
(218,'Other_Products','Lip_balm_and_bath_crystals','Bath crystals',2.89,'https://siphawaii.com/ip/bath_crystals_plumeria_SIPhawaii_small.jpg','Plumeria',0),
(218,'Other_Products','Lip_balm_and_bath_crystals','Bath crystals',2.89,'https://siphawaii.com/ip/bath_crystals_coco_papaya_SIPhawaii_small.jpg','Coco papaya',0)
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101  COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
