-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 02:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2017-01-24 16:21:18', '21-03-2022 01:26:43 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Main Cuisine', 'Aberdeen', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Asiatic Dishes', 'Asiatic food', '2017-01-24 19:19:32', ''),
(5, 'Extra Sause', 'Aldi Dishes', '2017-01-24 19:19:54', ''),
(6, 'Vegan Dishes', 'Vegan Food', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productPriceBeforeDiscount` double DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` double DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `calories` int(4) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `calories`) VALUES
(1, 4, 3, 'Dosa', 'the Hylton Cafe', 8.85, 9.85, '<div ><strong><big>Ingredients:</big></strong><br>\r\n<ul>\r\n3/4 cup Parboiled Rice (idli-dosa rice)<br>\r\n3/4 cup Regular Rice<br>\r\n1/2 cup Whole Urad Dal (without skin) <br>or Split Urad Dal (black lentils)<br>\r\n1/4 teaspoon Fenugreek Seeds (methi dana)<br>\r\n1/2 tablespoon Chana Dal (gram lentils), optional<br>\r\nWater, as needed\r\nSalt to taste<br>\r\nOil, for shallow frying\r\n</ul>\r\n <div>', 'fo1.jpg', 'fo2.jpg', 'fo1.jpg', 1.2, 'In Stock', '2017-01-30 16:54:35', '', 0595),
(2, 4, 4, 'Egg Roll', 'Carters of Moseley', 0, 7, '<div>\r\nINGREDIENTS<br>\r\n2 teaspoons vegetable oil<br>\r\n3/4 pound ground pork<br>\r\nsalt and pepper to taste<br>\r\n1 teaspoon minced garlic<br>\r\n1 teaspoon minced ginger<br>\r\n3 cups coleslaw mix<br>\r\n1/4 cup sliced green onions<br>\r\n1 tablespoon soy sauce<br>\r\n1 teaspoon toasted sesame oil<br>\r\n12 egg roll wrappers<br>\r\n1 egg beaten<br>\r\noil for frying<br>\r\n</div>', 'fo2.jpg', 'fo2.jpg', 'fo2.jpg', 0.5, 'In Stock', '2017-01-30 16:59:00', '', 0696),
(3, 4, 4, 'Chowmin', 'the Hylton Cafe', 3.46, 4, '<div>\nINGREDIENTS:<br>\n1/4 cup oyster sauce<br>\n1 tablespoon soy sauce<br>\n3 cloves garlic, minced<br>\n2 teaspoons freshly grated ginger<br>\n1 teaspoon Sriracha<br>\n1 (16-ounce) package Hong Kong-style pan-fried noodles<br>\nKosher salt and freshly ground black pepper, to taste<br>\n2 tablespoons canola oil<br>\n1 (3.5-ounce) package shiitake mushrooms<br>\n4 baby bok choy, coarsely chopped<br>\n1 cup mung bean sprouts, rinsed and drained<br>\n</div>', 'fo3.jpg', 'fo3.jpg', 'fo3.jpg', 1.1, 'In Stock', '2017-02-04 04:03:15', '', 0712),
(4, 4, 4, 'French Fries', 'the Hylton Cafe', 9.66, 9.7, '<div>\nINGREDIENTS:<br>\n? cup white sugar<br>\n2 cups warm water<br>\n2 large russet potatoes - peeled,\n and sliced into 1/4 inch strips<br>\n6 cups vegetable oil for frying<br>\nsalt to taste<br>\n</div>', 'fo4.jpg', 'fo4.jpg', 'fo4.jpg', 1.5, 'In Stock', '2017-02-04 04:04:43', '', 0382),
(5, 4, 4, 'Momos', 'the Hylton Cafe', 2.29, 2.4, NULL, 'fo5.jpg', 'fo5.jpg', 'fo5.jpg', 0.9, 'In Stock', '2017-02-04 04:06:17', '', 0799),
(6, 4, 4, 'Hakka Noodles', 'the Hylton Cafe', 2.84, 3, NULL, 'fo6.jpg', 'fo6.jpg', 'fo6.jpg', 0.6, 'In Stock', '2017-02-04 04:08:07', '', 0384),
(7, 4, 4, 'Briyani\n', 'The Garden House', 5.52, 5.6, NULL, 'fo7.jpg', 'fo7.jpg', 'fo7.jpg', 0.12, 'In Stock', '2017-02-04 04:10:17', '', 0851),
(8, 4, 4, 'Dosa', 'the Hylton Cafe', 7.07, 8, '<div>Ingredients:\n3/4 cup Parboiled Rice (idli-dosa rice)<br>\n3/4 cup Regular Rice<br>\n1/2 cup Whole Urad Dal (without skin) <br>or Split Urad Dal (black lentils)<br>\n1/4 teaspoon Fenugreek Seeds (methi dana)<br>\n1/2 tablespoon Chana Dal (gram lentils), optional<br>\nWater, as needed\nSalt to taste<br>\nOil, for shallow frying <div>', 'fo1.jpg', 'fo1.jpg', 'fo1.jpg', 0.3, '', '2017-02-04 04:11:54', '', 0592),
(9, 4, 5, 'Briyani', 'The Garden House', 2.59, 3, NULL, 'fo7.jpg', 'fo7.jpg', 'fo7.jpg', 0.63, 'In Stock', '2017-02-04 04:17:03', '', 0622),
(11, 4, 6, 'Hakka Noodles', 'ASDA', 2.63, 2.7, NULL, 'fo6.jpg', 'fo6.jpg', 'fo6.jpg', 0.7, 'In Stock', '2017-02-04 04:26:17', '', 0323),
(12, 4, 6, 'Momos', 'Tesco', 5.9, 7.1, NULL, 'fo5.jpg', 'fo5.jpg', 'fo5.jpg', 0.9, 'In Stock', '2017-02-04 04:28:17', '', 0446),
(13, 4, 6, 'French Fries', 'The Garden House', 3.64, 3.9, NULL, 'fo4.jpg', 'fo4.jpg', 'fo4.jpg', 0.23, 'In Stock', '2017-02-04 04:30:24', '', 0279),
(14, 4, 6, 'Dosa', 'Grand Central Kitchen Birmingham', 3.84, 4.05, NULL, 'fo1.jpg', 'fo1.jpg', 'fo1.jpg', 0.56, 'In Stock', '2017-02-04 04:32:15', '', 0433),
(15, 0, 0, '', '', 0, 0, '', 'fo7.jpg', 'fo7.jpg', 'fo7.jpg', 0, '', '2017-02-04 04:35:13', '', 0963),
(16, 3, 8, 'Egg Roll', ' MyLahore British Asian Kitchen', 2.4, 2.7, '<div>\nINGREDIENTS<br>\n2 teaspoons vegetable oil<br>\n3/4 pound ground pork<br>\nsalt and pepper to taste<br>\n1 teaspoon minced garlic<br>\n1 teaspoon minced ginger<br>\n3 cups coleslaw mix<br>\n1/4 cup sliced green onions<br>\n1 tablespoon soy sauce<br>\n1 teaspoon toasted sesame oil<br>\n12 egg roll wrappers<br>\n1 egg beaten<br>\noil for frying<br>\n</div>', 'fo2.jpg', 'fo2.jpg', 'fo2.jpg', 0.3, 'In Stock', '2017-02-04 04:36:23', '', 0169),
(17, 5, 9, 'Hakka Noodles', 'The Vine', 8.45, 8.6, '', 'fo6.jpg', 'fo6.jpg', 'fo6.jpg', 0.53, 'In Stock', '2017-02-04 04:40:37', '', 0893),
(18, 5, 10, 'Chowmin', 'Asiatic Restaurant', 4.51, 4.6, '<div>\nINGREDIENTS:<br>\n1/4 cup oyster sauce<br>\n1 tablespoon soy sauce<br>\n3 cloves garlic, minced<br>\n2 teaspoons freshly grated ginger<br>\n1 teaspoon Sriracha<br>\n1 (16-ounce) package Hong Kong-style pan-fried noodles<br>\nKosher salt and freshly ground black pepper, to taste<br>\n2 tablespoons canola oil<br>\n1 (3.5-ounce) package shiitake mushrooms<br>\n4 baby bok choy, coarsely chopped<br>\n1 cup mung bean sprouts, rinsed and drained<br>\n</div>', 'fo3.jpg', 'fo3.jpg', 'fo3.jpg', 0.48, 'In Stock', '2017-02-04 04:42:27', '', 0549),
(19, 6, 12, 'Egg Roll', 'Grand Central Kitchen Birmingham', 3.79, 4, '<div>\nINGREDIENTS<br>\n2 teaspoons vegetable oil<br>\n3/4 pound ground pork<br>\nsalt and pepper to taste<br>\n1 teaspoon minced garlic<br>\n1 teaspoon minced ginger<br>\n3 cups coleslaw mix<br>\n1/4 cup sliced green onions<br>\n1 tablespoon soy sauce<br>\n1 teaspoon toasted sesame oil<br>\n12 egg roll wrappers<br>\n1 egg beaten<br>\noil for frying<br>\n</div>', 'fo2.jpg', 'fo2.jpg', 'fo2.jpg', 0.45, 'In Stock', '2017-03-10 20:16:03', '', 0635),
(20, 6, 12, 'Chowmin', 'The Garden House', 3.9, 4, '<div>\nINGREDIENTS:<br>\n1/4 cup oyster sauce<br>\n1 tablespoon soy sauce<br>\n3 cloves garlic, minced<br>\n2 teaspoons freshly grated ginger<br>\n1 teaspoon Sriracha<br>\n1 (16-ounce) package Hong Kong-style pan-fried noodles<br>\nKosher salt and freshly ground black pepper, to taste<br>\n2 tablespoons canola oil<br>\n1 (3.5-ounce) package shiitake mushrooms<br>\n4 baby bok choy, coarsely chopped<br>\n1 cup mung bean sprouts, rinsed and drained<br>\n</div>', 'fo3.jpg', 'fo3.jpg', 'fo3.jpg', 0.63, 'In Stock', '2017-03-10 20:19:22', '', 0621);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Ready to eat', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Fries', '2017-01-26 16:29:09', ''),
(4, 4, 'Crispy', '2017-01-30 16:55:48', ''),
(5, 4, 'Fries', '2017-02-04 04:12:40', ''),
(6, 4, 'Carbs & Vegan', '2017-02-04 04:13:00', ''),
(7, 4, 'Vegan', '2017-02-04 04:13:27', ''),
(8, 3, 'Salads', '2017-02-04 04:13:54', ''),
(9, 5, 'Vegan & Protein', '2017-02-04 04:36:45', ''),
(10, 5, 'Salads & Sauce', '2017-02-04 04:37:02', ''),
(11, 5, 'Fries & Sauce', '2017-02-04 04:37:51', ''),
(12, 6, 'Carbs', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--anuj.lpu1@gmail.com

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'testaccount@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-06 21:51:17', '07-03-2022 09:17:00 AM', 1),
(25, 'hello@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-07 03:48:40', NULL, 1),
(26, 'helllo@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:54:26', NULL, 0),
(27, 'hello@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:55:07', '07-03-2022 09:42:02 PM', 1),
(28, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 16:37:26', '07-03-2022 10:10:42 PM', 1),
(29, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 17:32:52', NULL, 1),
(30, 'johndoe@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-09 20:58:32', NULL, 0),
(31, 'johndoe@domain.com', 0x3a3a3100000000000000000000000000, '2022-03-09 20:59:35', '10-03-2022 02:31:53 AM', 1),
(32, 'meonly@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 13:13:14', NULL, 1),
(33, 'admin@delicacies.com', 0x3a3a3100000000000000000000000000, '2022-03-20 19:52:19', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Happie', 'happie@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'NewYork', 'United States', 'NewYork', 110001, 'NewYork', 'United States', 'United State', 111222, '2017-02-04 19:30:50', ''),
(2, 'Friend', 'friend@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(6, 'Hello', 'hello@domain.com', 1234567890, '5d435563cf79cd68ad7438b48d36af29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 03:48:11', NULL),
(7, 'John Doe', 'johndoe@gmail.com', 123456789, '29a1df4646cb3417c19994a59a3e022a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 16:37:03', NULL),
(8, 'John Doe', 'johndoe@domain.com', 1234567890, '367f9b306cd4310c9fba3837574d6ced', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 20:59:15', NULL),
(9, 'Me Only', 'meonly@gmail.com', 1234567890, '9c88cc04818111a955d4c88da57d794d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 13:12:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 15, '2022-03-06 21:54:12'),
(3, 4, 19, '2022-03-06 21:54:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
