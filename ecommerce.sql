-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2022 at 10:47 PM
-- Server version: 8.0.27
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `url_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_order` int NOT NULL,
  `parent_category` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `url_key`, `title`, `description`, `image`, `category_order`, `parent_category`) VALUES
(1, 'sand', 'Sand, Gravel, and Decorative Aggregates', '<p>The key to landscaping in California is to maximize water efficiency, and strategically use decorative rocks and fillers in places where plants can’t grow. Designing your exteriors to be functional, efficient, and aesthetically appealing is a great way to increase your enjoyment and the value of your home. To improve your landscape\'s function, choose from a wide variety of filler materials, such as our sands, pea gravels, and crushed grain rock, as well as base rock materials. To increase aesthetic beauty, we offer a large variety of crushed rock, as well as decorative, polished, and premium pebbles. See for a guide to all<a style=\"color: #aa081e\" target=\"_blank\" href=\"#\"> our landscaping sands, gravels, and rocks.</a></p>\r\n\r\n<p style=\"font-size:12px;text-align:center;margin-bottom:15px\">Disclaimer: Product pictures of natural stone are not an exact representation of the product hues seen in natural light. There are natural color variations in stone and exact color match is not guaranteed. We recommend verifying the product color at our location before placing your order online.</p>', 'sand-grave-decorative-rocks.jpg', 1, NULL),
(2, 'stone', 'Natural Stone', NULL, 'natural-stone.jpg', 4, NULL),
(3, 'mulch', 'Composts, Mulches, Soils and Amendments', NULL, 'compost-mulch.jpg', 2, NULL),
(4, 'biologicals', 'Biologicals, Fertilizers and Bagged Soils', NULL, 'fertilizers-amendments.jpg', 3, NULL),
(5, 'pottery', 'Pottery and Garden Ornaments', 'We carry an extensive line of pottery and statues. \r\nVisit our location in San Carlos for our new and ever evolving inventory.', 'pottery-garden-ornements.jpg', 5, NULL),
(6, 'water-features', 'Water Features', NULL, 'water-features.jpg', 6, NULL),
(7, 'tools', 'Building Materials and Tools', NULL, 'tools.jpg', 7, NULL),
(8, 'precast', 'Precast Concrete Products', 'Please refer to our vendor websites for your paver selections, you\'ll be redirected by clicking on the picture below. \r\n\r\nFor more information and to place your order, call us at (650) 364 1730.', 'precast-concrete.jpg', 8, NULL),
(11, NULL, 'Boulders', 'Boulders are a timeless natural resource that enhances the beauty of any landscaped area. Use them as a focal point in your garden or as a complimentary element. Boulders could also be enjoyed as a natural seating in an outdoor space. Our boulders are sold by weight of the individual piece. We carry a wide variety of natural boulders from granite to quartzite to basalt and more! With natural variations between each boulder, no two are alike. \r\n\r\nVisit our yard to handpick your unique boulders!\r\n\r\nDisclaimer: Many stone types may have concentrations of iron, and with the exposure to moisture, rust stains may be bleeding to the surface of the stone. For many stone types there is no way of knowing prior to installation if this will be an issue.', 'boulders.jpg', 10, 2),
(13, NULL, 'Dimensional Stones', 'Dimensional Stones are cut stones with rectilinear edges, making installation of natural stone quite easy. Create your own desired pattern with various sizes. Most dimensional stones are offered from 12\" X 12\" size. Custom sizes are made to order.', 'dimensional-stone.jpg', 11, 2),
(14, NULL, 'Driveway Cubes, Cobbles & Pavers', NULL, 'driveway-cubes-cobbles-pavers.jpg', 12, 2),
(15, NULL, 'Drystack and Wall Rocks\r\n', NULL, 'drystack-wall-rocks.jpg', 13, 2),
(16, NULL, 'Irregular Flagstones', 'Irregular Flagstones are available as stand-up select on a pallet. Due to the variations between each pallets, we recommend that our customers visit our yard to select the exact pallet before setting up a delivery. For smaller quantities, we offer an open bin option to hand select your flagstones from.', 'irregular-flagstone.jpg', 14, 2),
(17, NULL, 'Ledgestones', NULL, 'ledgerstones.jpg', 15, 2),
(18, NULL, 'Veneer Panels', NULL, 'veneer-panels.jpg', 16, 2),
(19, NULL, 'Sand', NULL, 'sand.jpg', 17, 1),
(20, NULL, 'Gravel', NULL, 'gravel.jpg', 18, 1),
(21, NULL, 'Base Rock', NULL, 'base-rock.jpg', 19, 1),
(22, NULL, 'Path Fines', NULL, 'path-fines.jpg', 20, 1),
(23, NULL, 'Crushed Rock', NULL, 'crushed-rock.jpg', 21, 1),
(24, NULL, 'Decorative Pebbles', NULL, 'decorative-pebbles.jpg', 22, 1),
(25, NULL, 'Polished Pebbles', NULL, 'polished-pebbles.jpg', 23, 1),
(26, NULL, 'Premium Pebbles', NULL, 'premium-pebbles.jpg', 24, 1),
(27, NULL, 'Bocce Ball Court Materials', '<h1>Bocce Court Surface Materials</h1>\r\n\r\nWhen building a backyard bocce court, be sure to choose lasting materials that are low maintenance and that facilitate fast play while offering minimal bounce. Choose from our bocce court materials below, or see our guide to building a backyard bocce court for more tips and advice.', 'bocce-ball-court-materials.jpg', 25, 1),
(28, NULL, 'Amendments', '<h1>Organic Soil Amendments</h1>\r\n\r\nThe ideal soil consists of a balance of sand, loam, clay, organic matter, minerals, water, and air, but rarely do we get to start with the perfect combination. That\'s why we offer a number of soil amendments that are perfect for California\'s main soil types: sandy, loamy, and clay. For tips on how to amend, see our <a href=\"https://www.lyngsogarden.com/community-resources/the-best-soils-for-vegetables-fruit-flowers-and-other-landscaping-needs/\">guide to amendments for California soils</a>.', 'amendments.jpg', 26, 3),
(29, NULL, 'Compost', '<h1>Organic Garden Composts</h1>\r\n\r\nCompost is decomposed organic matter that is rich in nutrients and often a course, dark brown, peat-like material. Adding compost to your soil improves the overall structure and texture. It increases the capacity to hold water in sandy soils, and enhances drainage in heavy clay soils. It also attracts earthworms that help aerate the soil and beneficial microbiology that helps convert material into molecules and elements that plants can more easily absorb.\r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'compost.jpg', 27, 3),
(31, NULL, 'Mulches', 'Mulch is a generic term for a ground cover that protects the soil. Organic and natural mulch helps with moisture retention, weed prevention and water loss due to surface evaporation. Covering your landscape with at least 1\" of mulch helps provide the soil with the much needed protection from the natural weathering elements. The mulch will decompose over time, providing carbon matter and feeding your soil. Choose from a variety of mulch to match your garden aesthetics.\r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'mulches.jpg', 29, 3),
(32, NULL, 'Soils', '<h1>SOIL IS LIFE!</h1>\r\n\r\nThe ideal soil is made up of a balance between clay, sand, loam, organic matter, minerals, water and air. At Lyngso, we believe in the soil food web with a healthy balance of microorganisms that help the soil be alive, organic, and full of life. We pride ourselves in our extensive knowledge of soil biology and are happy to recommend the right kind of soil for your garden to thrive! \r\n\r\nSee our how to guide on improving your soil\'s structure, feeding your soil, and protecting your soil.  \r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'soils.jpg', 30, 3),
(33, NULL, 'Biologicals, Minerals and Liquid Fertilizers', NULL, 'biological-minerals-liquid-fertilizers.jpg', 31, 4),
(34, NULL, 'Down To Earth Single and Blended Fertilizers', NULL, 'down-to-earth.jpg', 32, 4),
(35, NULL, 'Pre-bagged Soils and Composts', NULL, 'pre-bagged-soils-composts.jpg', 33, 4),
(36, NULL, 'Sheet Mulching Supplies', NULL, 'sheet-mulching-supplies.jpg', 34, 4),
(40, NULL, 'Pottery', NULL, 'pottery.jpg', 35, 5),
(41, NULL, 'Earthenware Planters', NULL, 'earthenware-planters.jpg', 36, 40),
(43, NULL, 'Statuary', NULL, 'statuary.jpg', 37, 5),
(44, NULL, 'Columns', NULL, 'columns.jpg', 38, 6),
(45, NULL, 'Basins', NULL, 'basins.jpg', 39, 6),
(46, NULL, 'Pumps', NULL, 'basins.jpg', 40, 6),
(47, NULL, 'Plumbing', NULL, 'plumbing.jpg', 41, 6),
(48, NULL, 'Lighting', NULL, 'lighting.jpg', 42, 6),
(49, NULL, 'Installation Parts', NULL, 'installation-parts.jpg', 43, 6),
(50, NULL, 'Water Treatments', NULL, 'installation-parts.jpg', 44, 6),
(51, NULL, 'Cement, Grout and Quikrete', NULL, 'cement-grout-quikrete.jpg', 45, 7),
(52, NULL, 'Sand(Pre-Bagged)', NULL, 'pre-bagged-sand.jpg', 46, 7),
(53, NULL, 'Stains, Sealers and Cleaners', NULL, 'stains-sealers-cleaners.jpg', 47, 7),
(54, NULL, 'Structural and Edging', NULL, 'structural-and-edging.jpg', 48, 7),
(55, NULL, 'tools', NULL, 'construction-tools.jpg', 49, 7),
(56, NULL, 'Blads', NULL, 'blades.jpg', 50, 7),
(57, NULL, 'Calstone', NULL, 'calstone.jpg', 51, 8),
(58, NULL, 'Step Stone', NULL, 'step-stone.jpg', 52, 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` binary(36) NOT NULL,
  `taxRate` decimal(8,0) NOT NULL,
  `totalPrice` decimal(10,0) NOT NULL,
  `isPaid` tinyint(1) NOT NULL DEFAULT '0',
  `isDelieverd` tinyint(1) NOT NULL DEFAULT '0',
  `shippingAddress` json NOT NULL,
  `paymentMethod` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int NOT NULL,
  `sku` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `units` text NOT NULL,
  `coverage` varchar(20) DEFAULT NULL,
  `coverage_value` decimal(10,2) DEFAULT NULL,
  `product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `sku`, `title`, `description`, `price`, `size`, `units`, `coverage`, `coverage_value`, `product`) VALUES
(1, 'C2BR', 'Class 2 Base Rock U-sack', 'Per U-sack', '2.25', NULL, 'sk', 'Ton/Yard', '1.35', 1),
(2, 'C2BR', 'Class 2 Base Rock', 'Per Ton', '31.50', NULL, 'ton', 'Ton/Yard', '1.35', 1),
(3, '34C2P', 'Class 2 Base Rock Permeable U-sack', 'Per U-Sack', '5.25', NULL, 'sk', 'Ton/Yard', '1.25', 2),
(4, '34C2P', 'Class 2 Base Rock Permeable', 'Per Ton', '77.50', NULL, 'ton', 'Ton/Yard', '1.25', 2),
(5, '14PG', '1/4&quot; Pea Gravel U-sack', 'Per U-Sack', '5.50', NULL, 'sk', 'Ton/Yard', '1.25', 3),
(6, '14PG', '1/4&quot; Pea Gravel ', 'Per Ton', '70.95', NULL, 'ton', 'Ton/Yard', '1.25', 3),
(7, 'AFBF', 'Arizona Flagstone - Buckskin', 'Per Lb', '0.23', 'Per Lb', 'lbs', NULL, NULL, 4),
(8, 'AFBF', 'Arizona Flagstone - Buckskin', 'Per Ton', '450.00', 'Per ton', 'ton', NULL, NULL, 4),
(9, '14-FB', '1/4&quot; Minus Fir Bark U-sack', 'Per U-Sack ', '4.50', NULL, 'sk', 'Ton/Yard', '0.16', 5),
(10, '14-FB', '1/4&quot; Minus Fir Bark ', 'Per Yard', '75.50', NULL, 'yd', 'Ton/Yard', '0.16', 5),
(11, '1OS', '#1 Olympia Sand Sack U-sack', 'Per U-Sack', '7.50', NULL, 'sk', 'Ton/Yard', '1.25', 6),
(12, '1OS', '#1 Olympia Sand', 'Per Ton', '103.95', 'Ton', 'ton', 'Ton/Yard', '1.25', 6),
(13, '2OS', '#2 Olympia Sand U-sack', 'Per U-Sack', '7.50', NULL, 'sk', 'Ton/Yard', '1.25', 7),
(14, '2OS', '#2 Olympia Sand', 'Per Ton', '103.95', 'Ton', 'ton', 'Ton/Yard', '1.25', 7),
(15, 'CS', 'Concrete Sand U-sack', 'Per U-Sack', '5.00', NULL, 'sk', 'Ton/Yard', '1.25', 8),
(16, 'CS', 'Concrete Sand Per Ton ', 'Per Ton', '99.50', NULL, 'ton', 'Ton/Yard', '1.25', 8),
(17, 'CBSB', 'Connecticut Bluestone, True Blue full Pallet Only', 'Full Pallet', '950.00', 'pallet', 'pallet', '100-100 / Ton', NULL, 9),
(18, 'AL', 'Azure Limestone', 'Per Lb', '0.60', 'lbs', 'lbs', '75 sqf / ton', NULL, 10),
(19, 'AL', 'Azure Limestone', 'Per Ton', '1195.00', 'ton', 'ton', '75 sqf / ton', NULL, 10),
(20, 'GBLT', 'Galaxy Black Limestone', 'Per Lb', '0.60', 'lbs', 'lbs', '75 sqf / ton', NULL, 11),
(21, 'GBLT', 'Galaxy Black Limestone', 'Per Ton', '1195.00', 'ton', 'ton', '75 sqf / ton', NULL, 11),
(22, 'LGS', 'Luna Grey Sandstone', 'Per Lb', '0.60', 'lbs', 'lbs', '75 sqf / ton', NULL, 12),
(23, 'LGS', 'Luna Grey Sandstone', 'Per Ton', '1195.00', 'ton', 'ton', '75 sqf / ton', NULL, 12),
(24, '516RL', '5/16&quot; Lava Sack', 'Per U-Sack', '6.50', NULL, 'sk', 'Lb/yd', '0.65', 13),
(25, '14PG', '5/16&quot; Lava Aprox.1350 Lb/yd ', 'Per Yard', '109.95', NULL, 'yd', 'Lb/yd', '0.65', 13),
(26, 'LIGNA PEAT', 'U-sack Ligna Peat', 'Per U-Sack', '3.95', NULL, 'sk', 'Lb/yd', '0.15', 14),
(27, 'LIGNA PEAT', 'Ligna Peat Amendment', 'Per U-Sack', '57.95', NULL, 'yd', 'Lb/yd', '0.15', 14),
(28, 'ORGANIC-AMENDMENT', 'U-sack Amendment Mix', 'Per U-Sack', '3.25', NULL, 'sk', 'Lb/yd', '0.65', 15),
(29, 'ORGANIC-AMENDMENT', 'Amendment Mix', 'Per Yard', '41.50', NULL, 'yd', 'Lb/yd', '0.15', 15),
(30, 'RS', 'U Sack Redwood Sawdust', 'Per U-Sack', '3.50', NULL, 'sk', 'Lb/yd', '0.29', 16),
(31, 'RS', 'Redwood Sawdust ', 'Per Yard', '42.50', NULL, 'yd', 'Lb/yd', '0.15', 16),
(32, 'COMPOST-MULCH', 'Composted Mulch - Limited Quantity', 'Per U-Sack', '3.00', NULL, 'sk', 'Lb/yd', '0.29', 17),
(33, 'COMPOST-MULCH', 'Composted Mulch', 'Per Yard', '78.00', NULL, 'yd', 'Lb/yd', '0.15', 17),
(34, 'GRB', 'Ground Redwood Bark Sack', 'Per U-Sack', '3.75', NULL, 'sk', 'Lb/yd', '0.16', 18),
(35, 'GRB', 'Ground Redwood Bark Double Grind ', 'Per Yard', '51.00', NULL, 'yd', 'Lb/yd', '0.15', 18),
(36, 'MA CHIP', 'U-sack Mahogany Chip', 'Per U-Sack', '4.35', NULL, 'sk', 'Lb/yd', '0.16', 19),
(37, 'MA CHIP', 'Mahogany Chip', 'Per Yard', '71.50', NULL, 'yd', 'Lb/yd', '0.16', 19),
(38, 'MMFB', 'Mini Mulch Fir Bark Sack', 'Per U-Sack', '4.95', NULL, 'sk', 'Lb/yd', '0.25', 20),
(39, 'MMFB', 'Mini Mulch Fir Bark', 'Per Yard', '87.50', NULL, 'yd', 'Lb/yd', '0.25', 20),
(40, 'MOCHA CHIP', 'U-sack Mocha Chip 1cf Bag ', 'Per U-Sack', '4.20', NULL, 'sk', 'Lb/yd', '0.16', 21),
(41, 'MOCHA CHIP', 'Mocha Chip', 'Per Yard', '59.50', NULL, 'yd', 'Lb/yd', '0.16', 21),
(42, 'PF', 'U-sack Playground Fibe', 'Per U-Sack', '4.25', NULL, 'sk', 'Lb/yd', '0.16', 22),
(43, 'PF', 'Playground Fiber', 'Per Yard', '73.75', NULL, 'yd', 'Lb/yd', '0.16', 22),
(44, 'PAM', 'U-sack Premium Arbor Mulch', 'Per U-Sack', '2.75', NULL, 'sk', 'Lb/yd', '0.16', 23),
(45, 'PAM', 'Premium Arbor Mulch', 'Per Yard', '36.00', NULL, 'yd', 'Lb/yd', '0.16', 23),
(46, 'SCB', 'Shredded Cedar Bark', 'Per U-Sack', '3.85', NULL, 'sk', 'Lb/yd', '0.16', 24),
(47, 'SCB', 'Shredded Cedar Bark', 'Per Yard', '55.50', NULL, 'yd', 'Lb/yd', '0.16', 24),
(48, 'SFB', 'Small Fir Bark Sack', 'Per U-Sack', '4.95', NULL, 'sk', 'Lb/yd', '0.26', 25),
(49, 'SFB', 'Small Fir Bark 3/4\"-1-1/2\"', 'Per Yard', '87.50', NULL, 'yd', 'Lb/yd', '0.16', 25),
(50, 'WOB', 'U-sack Walk On Bark', 'Per U-Sack', '4.45', NULL, 'sk', 'Lb/yd', '0.25', 26),
(51, 'WOB', 'Walk On Bark', 'Per Yard', '71.00', NULL, 'yd', 'Lb/yd', '0.25', 26),
(52, 'TWC', 'U-sack Wood Chips', 'Per U-Sack', '3.45', NULL, 'sk', 'Lb/yd', '0.16', 27),
(53, 'TWC', 'Wood Chips ', 'Per Yard', '42.75', NULL, 'yd', 'Lb/yd', '0.16', 27),
(54, 'AACT', 'Actively Aerated Compost Tea', 'Per GL', '12.00', NULL, 'gl', 'gl', NULL, 28),
(55, 'BBBC', 'Bu\'s Blend Compost Pre Bag 1 Cf', 'Per Cubic Foot', '19.99', NULL, 'Cubic Foot', 'cf', NULL, 29),
(56, 'DDOC', 'Double Doody Organic Compost', 'EA', '13.50', NULL, 'EA', 'cf', NULL, 30),
(57, 'HOWC', 'Heritage Organics Worm Castings', 'EA', '24.00', NULL, 'EA', 'cf', NULL, 31),
(58, 'SCCOB', 'Seacoast Biodynamic Compost ', 'EA', '26.50', NULL, 'EA', 'cf', NULL, 32),
(59, 'OBULL', 'Oregon Bull Organic Aged Humus ', 'Per U-Sack', '12.50', NULL, 'sk', 'Lb/yd', '0.75', 33),
(60, 'OBULL', 'Oregon Bull Organic Aged Humus', 'Per Yard', '255.00', NULL, 'yd', 'Lb/yd', '0.75', 33),
(61, 'OAM', 'U-sack Amendment Mix', 'Per U-Sack', '3.25', NULL, 'sk', 'Lb/yd', '0.16', 34),
(62, 'OAM', 'Amendment Mix', 'Per Yard', '41.00', NULL, 'yd', 'Lb/yd', '0.75', 34),
(63, 'DIESTEL', 'Diestel Structured Compost U-sk', 'Per U-Sack', '7.95', NULL, 'sk', 'Lb/yd', '0.50', 35),
(64, 'DIESTEL', 'Diestel Structured Compost', 'Per Yard', '162.95', NULL, 'yd', 'Lb/yd', '0.50', 35),
(65, 'OC', 'U-sk Garden Compost /green Waste', 'Per U-Sack', '3.50', NULL, 'sk', 'Lb/yd', '0.50', 36),
(66, 'OC', 'Garden Compost / Green Waste', 'Per Yard', '40.50', NULL, 'yd', 'Lb/yd', '0.50', 36),
(67, 'WEBB', 'U-sack Webb Ranch Compost ', 'Per U-Sack', '6.95', NULL, 'sk', 'Lb/yd', '0.50', 37),
(68, 'WEBB', 'Webb Ranch Organic Compost ', 'Per Yard', '140.95', NULL, 'yd', 'Lb/yd', '0.50', 37),
(69, 'BIOSWALE', 'Biotreatment Soil Mix', 'Per Yard', '72.00', NULL, 'yd', 'Lb/yd', '0.50', 38),
(70, 'BBBPS', 'Baby Bu Potting Mix 1 1/2 Cu Ft', 'Cubic Foot', '72.00', NULL, 'cu ft', 'cu ft', '0.50', 39);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `sku` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `title`, `description`, `image`, `status`) VALUES
(1, 'C2BR', 'Class 2 Base Rock', '<p>Class 2 Base Rock is a recycled product composed of fines and 3/4\" crushed concrete. It is used underneath foundations, pathways, patios, and driveways. It is also used as a base underneath concrete and asphalt. Class 2 Base Rock meets the Cal Trans spec.</p>\r\n<p>We sell the Class 2 Base Rock in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your Bay Area location. For orders over 20 tons, please call us for direct pricing.</p>\r\n<p>Class 2 Base Rock may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'class2baserock.jpg', 'Active'),
(2, '34C2P', 'Class 2 Permeable Base Rock', '<p>Class 2 Base Rock is a recycled permeable product composed of 3/4\" crushed concrete and minimal fine stones allowing it to be water permeable. It is used underneath foundations, pathways, patios, and driveways or wherever permeability and stability are desired. Class 2 Permeable Base Rock meets the Cal Trans spec.</p>\r\n<p>We sell the Class 2 Permeable Base Rock in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck, or for a fee, have us deliver the base rock to your location in the Bay Area. For orders over 20 tons, please call us for direct pricing.</p>\r\n<p>Class 2 Permeable Base Rock may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'class2permeableBaserock.jpg', 'Active'),
(3, '14PG', '1/4&quot; Pea Gravel ', '<p>1/4&quot; Pea Gravel is commonly used for pathways, driveways, dog runs, playgrounds, patios, and as ground cover. The smaller gravels are often used on roofs over tar.  Underground applications include drainage and pipe bedding materials for stable support.</p>\r\n<p>Please note: 1/4&quot; Pea Gravel vendor source is currently different than our previous source. Therefore, the gravel may vary in appearance. </p>\r\n<p>We sell the 1/4\" Pea Gravel in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your own truck,  or for a fee, have us deliver to your Bay Area location. For orders over 20 tons please call us for direct pricing.</p>\r\n<p>1/4&quot; Pea Gravel may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'oneQuarterInchPeaGravel.jpg', 'Active'),
(4, 'AFBF', 'Arizona Flagstone - Buckskin', '<ul class=\"product-details\">\r\n<li class=\"item-details\">Origin: North America</li>\r\n<li class=\"item-details\">Classification Sandstone</li>\r\n<li class=\"item-details\">Color Range: Warm Tones</li>\r\n<li class=\"item-details\">Finish: Natural Cleft</li>\r\n<li class=\"item-details\">Applications: Walkways, Pathways, Patios, Accents</li>\r\n</ul> \r\n\r\n\r\n<p>Arizona Flagstone is a standup select grade flagstone that is available in large sheets of random shapes. It can be used for patios, stepping stones or any flat surface that you want to cover with flagstone. Due to the natural cleft and the porosity, this natural paving stone spalls, meaning, the top layer of the stone peels off with wear. In a shady damp area, particularly in winter months, algae and moss growth which can permanently stain the stone. Some landscapes desire this look but to deter algae and moss growth, use a stone sealer.</p><p>This sedimentary sandstone is available in a variety of southwest colors: Sedona Red, Rosa, Peach, Buckskin, Buff, Classic Oak, and variations in between.</p>\r\n<p>Available in two thickness: 1&quote;-1  3/4 &quote; and thinner 1&quote; minus.</p>\r\n<p>For sand setting application, use the thicker 1&quote; - 1  3/4 &quote; flagstone.\r\nFor the 1&quote; minus flagstone, special care needs to be taken since the stone is very fragile and brittle. It is intended to be set in mortar on a concrete base to protect it from cracking</p>', 'arizona-flagstone-buckskin.jpg', 'Active'),
(5, '14-FB', '1/4&quot; - Fir Bark', '<p>1/4 &quot; Fir Bark is the smallest remaining particles from sifting the fir barks. Mix in with clay soil to loosen and aerate as an organic amendment. Provides moisture retention and aeration. Due to the small size of the bark, breaks down faster than Fine Redwood Amendment.</p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site.</p>', '14-fur-bark.jpg', 'Active'),
(6, '1OS', '#1 Olympia Sand', '<p>Olympia Sands is used primarily for making mortar or stucco. However, Olympia Sand #1 is screened and washed. It is highly desirable for children\'s sandboxes, playgrounds, and the sand used for volleyball courts.</p><p>Lyngso Garden Materials sell #1 Olympia Sand in one cubic foot bags.  We supply the bags and you fill them! For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your jobsite. For orders over 20 tons please call us for direct pricing.</p><p>#1 Olympia Sand may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly.</p>', '1-olympia-sand.jpg', 'Active'),
(7, '2OS', '#2 Olympia Sand', '<p>Olympia Sand #2 is used for making plaster, mortar or stucco and can also be used for sandboxes.  It is a more coarse material than Olympia Sand #1, which provides it with better construction properties.</p><p>We sell both Olympia Sand #1 and Olympia Sand #2 in one cubic foot bags.  Lyngso will supply the bags and you can fill as many as you need. For larger areas, you\'ll want to purchase Olympia Sand by the ton. We can load your truck for you, or for a fee, you can use our rental truck and load the sand on your own, or have us deliver to you. For orders over 20 tons please call us for direct pricing.</p><p>#2 Olympia Sand may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly.</p>', '2-olympia-sand.jpg', 'Active'),
(8, 'CS', 'Concrete Sand', '<p>Concrete sand, also known as top sand, is a coarse washed and screened sand. It is used as a base for setting stones, pavers, and bricks. Concrete Sand packs together well and will not wash out as easily as finer sands.</p><p>We sell the Concrete Sand in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your jobsite. For orders over 20 tons please call us for direct pricing.</p>', 'concrete-sand.jpg', 'Active'),
(9, 'CBSB', 'Connecticut Bluestone, True Blue', '<ul>\r\n<li>Origin: North America</li>\r\n<li>Classification: Metamorphic Sandstone</li>\r\n<li>Color Range: Greys, Blues, Greens</li>\r\n<li>Finish: Natural Cleft</li>\r\nApplications: Walkways, Pathways, Patios, Accents</li>\r\n</ul>\r\n\r\n<p>Connecticut Bluestone is a classic East Coast paving stone that\'s been used for centuries, dating back to the 1800s. Denser sandstone that has been tested through the times.  A metamorphic sandstone with consistent blue-grey colors. Thickness ranges from 1 inch to 2 inches. Full pallet can weigh between 1.25 tons to 2.25 tons. This bluestone is standup select with sizes that vary from 1.5 sq. ft. to upwards of 20 sq. ft.</p>', 'connecticut-blue-stone.jpg', 'Active'),
(10, 'AL', 'Azure Limestone', '<ul>\r\n<li>Origin: North America</li>\r\n<li>Classification: Limestone</li>\r\n<li>Color Range: Blues, Grays</li>\r\n<li>Finishes: Natural Cleft</li>\r\n<li>Applications: Walkways, Pathways, Patios, Accents</li>\r\n</ul>\r\n\r\n<p>Azure Limestone is a great alternative for Connecticut Bluestone True Blue. 2\" thickness.</p>', 'azure-limestone.jpg', 'Active'),
(11, 'GBLT', 'Galaxy Black Limestone', '<ul>\r\n<li>Origin: Asia</li>\r\n<li>Classification: Limestone</li>\r\n<li>Color Range: Blacks</li>\r\n<li>Finishes: Tumbled Natural Cleft</li>\r\n<li>Applications: Walkways, Pathways, Patios, Veneers, Accents</li>\r\n</ul>\r\n\r\n<p>Galaxy Black Tumbled flagstone are limestone with striking matte black hues. The flagstones are tumbled to soften the edges. Nominal 2\" thickness.</p>', 'galaxy-black-limestone.jpeg', 'Active'),
(12, 'LGS', 'Luna Grey Sandstone', '<ul>\r\n<li>Origin: Asia</li>\r\n<li>Classification: Sandstone</li>\r\n<li>Color Range: Grays</li>\r\n<li>Finishes: Natural Cleft</li>\r\n<li>Application: Walkways, Pathways, Pavers, Veneers, Patios, Accents</li>\r\n</ul>\r\n\r\n<p>Luna Grey Flagstone are a light grey colored sandstone. 2” thickness.<p>', 'luna-gray-sandstone.jpg', 'Active'),
(13, '516RL', '5/16&quot; Horticulture Lava', '<p>Light weight horticultural lava. Use as an amendment to aerate soil mixes. Great for creating custom potting mixes for succulents, cacti, orchids, and plants that require ample drainage.</p><p>We sell the lava in one cubic foot bags, we supply the bags and you fill them. For large areas you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site.</p>', '5-16-horticultureLava.jpg', 'Active'),
(14, 'LIGNA PEAT', 'Ligna Peat', '<p>Ligna Peat is 100% pure, organic, and sustainably harvest redwood fiber. A sustainable alternative to Peat Moss. Ligna Peat provides beneficial organic matter for a sustained period of time without rapid decomposition. Commonly used for aeration and water retention within the soil. </p><p>We sell Ligna Peat in one cubic foot bags, we supply the bags and you fill them. For large areas you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site.</p><p>Ligna Peat is CDFA OIM listed for organic use and is a FSC certified product.</p>', 'lingaPeat.jpg', 'Active'),
(15, 'ORGANIC-AMENDMENT', 'Organic Amendment Mix', '<p>Organic Amendment Mix is a blend of Organic Green Waste Garden Compost, Redwood Sawdust, and Organic Feather Meal. This mix is generally used for improving most soils in water retention and aeration. Amendment Mix helps to open up clay for rainwater to be held and to be moved through the soil. Excellent for new sod installations and for generic all-purpose soil amending. </p><p>For additional organic fertilizer and microbiology, mix in Bio-Live 5-4-2 while amending. </p><p>Lyngso\'s Organic Amendment Mix is an organic substitute for Nitrolized Redwood Amendment. </p><p>CDFA OIM LISTED FOR ORGANIC USE</p><p>We sell the Organic Amendment Mix in one cubic foot bag, we supply the bags and you fill them. For large areas, you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site. For orders over 20 cubic yards, please call us for direct pricing.</p>', 'organicAmendmentMix.jpg', 'Active'),
(16, 'RS', 'Redwood Sawdust', '<p>Redwood Sawdust is an all-natural redwood byproduct of the lumber mills. Not treated with any chemicals.  It is typically used as a soil amendment to help break up clay and aerate compacted soil.</p><p>For additional organic fertilizer and microbiology, mix in Bio-Live 5-4-2 while amending. </p><p>We sell the Redwood Sawdust in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site</p>', 'redwoodSawdust.jpg', 'Active'),
(17, 'COMPOST-MULCH', 'Composted Mulch - Limited Quantity', '<p>Composted Mulch is derived from composted wood from composting green waste facility. This material has been through a 9–20-week composting process. During the composting period, accepted thermophilic composting procedures are performed to accomplish pathogen reduction through time and temperature (130-170 degrees (F) throughout the composting period). This ensures a thoroughly composted, weed and pathogen free product. </p><p>Composted Mulch is screened to 1”-3’’ in size and contains fines. Although Composted Mulch is listed as OMRI organic, it is still a recycled product so it may occasionally contain small inert debris such as plastic or glass.</p><p>Compost Mulch is an excellent ground cover that greatly enhances the aesthetic appearance of landscapes. Composted Mulch can help retain moisture, control weeds, and help prevent erosion. In addition, this Composted Mulch has demonstrated to be less combustible and less floatable compared to other wood mulches. </p><p>Composted Mulch is also considered as a no-float mulch and is highly recommended for use in Bioretention areas. Composted Mulch is OMRI listed organic as a soil amendment and a weed and disease control product. </p> <p>Composted Mulch complies with SB 1383 requirements and is produced in a fully permitted composting facility conforming to the State of California regulations set forth by the California Integrated Waste Management Board (CIWMB) Title 14, Division 7 California Code of Regulations governing composting operations. </p> <p>Limited quantity available. </p>', 'compostMulch.png', 'Active'),
(18, 'GRB', 'Ground Redwood Bark ', '<p>Ground Redwood Bark is the bark from redwood trees that have been double ground. It is a stringy, fluffy, and fibrous bark that ranges in size around 1-2 inches and less. Often referred to as \"Gorilla Hair\" or \"Monkey Fur\". However, our Ground Redwood Bark is double ground and has finer texture. It does hold onto water and is lightweight. Not recommended for windy areas or steep slopes. Depending on the grade, holds well in moderately sloped areas. Great for indoor or outdoor potted plants. </p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase the bark by the cubic yard. We can load your truck or for a fee you can use our rental dump truck or have us deliver the bark to you. For large orders over 60 yards please call for a direct price.</p><p><a href=\"https://www.youtube.com/watch?v=W_xlAV7gKjI\" target=\"blank\">Information Link</a></p>', 'groundRedwoodBark.jpg', 'Active'),
(19, 'MA CHIP', 'Mahogany Chip', '<p>Mahogany Chip is an attractive processed wood product that\'s dyed with a natural UV protectant color, ferric oxide. Clean byproduct from sawmills, no post consumer wood is used. Therefore, no paints or toxins in the mulch. Great for commercial applications or wherever longevity of the vibrant color is desired. Mahogany Chip varies in size quite drastically, from 2\" to 6\" but typically stays towards the smaller size. Our batches vary from day to day, so it\'s best to check with us directly if you need to match a specific size. If you are trying to match your exiting Mahogany Chip, consider taking a trip to our yard to verify the size before your purchase.  Although Mahogany Chip will retain its color longer than most non-colored chips, in rainy season however, the color could wash away when it is exposed to water or sits in water for an extended period of time. It is advisable to install the chips once the rains have passed.</p><p>We sell the mulch in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the mulch by the cubic yard. We can load your truck or for a fee, have us deliver the mulch to your home or jobsite. For orders over 50 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=D8gjB759-hQ\" target=\"blank\">Information Link</a></p>', 'mahoganyChip.jpg', 'Active'),
(20, 'MMFB', 'Mini Mulch Fir Bark', '<p>Mini Mulch Fir Bark is 1/4-3/8 inch in size. The sun fades the natural red bark to a weathered grey over time. Often mistaken for redwood, it is indeed the bark of fir trees. Very attractive and popular mulch for vegetable garden beds. The Mini Mulch will decompose faster than larger mulch and will eventually turn into organic soil amendment.</p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the bark by the cubic yard. We can load your truck or for a fee, have us deliver the bark to you. For orders over 45 yards please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=aBKZYxsMf90\" target=\"blank\">Information Link</a></p>', 'miniMulchFirBark.jpg', 'Active'),
(21, 'MOCHA CHIP', 'Mocha Chip', '<p>Mocha Chip is an attractive processed redwood that\'s dyed with a natural UV protectant color, ferric oxide. It\'s a clean byproduct from sawmills, no post-consumer wood is used. Therefore, no paints or toxins in the mulch. Great for commercial applications or wherever longevity of the vibrant color is desired. Mocha Chip varies in size quite drastically, from 2\" to 6\" but typically stays towards the smaller size. </p><p>Our shipment varies from day to day, so it\'s best to check with us directly if you need to match a specific size. If you are trying to match your exiting Mocha Chip, consider taking a trip to our yard to verify the size before your purchase.  Although Mocha Chip will retain its color longer than most non-colored chips, in the rainy season, however, the color could wash away when it is exposed to water or sits in water for an extended period of time. It is advisable to install the chips once the rains have passed.</p><p>Freshly produced Mocha Chips may be subject to colorant wash off and can stain driveways. Therefore, it is recommended that the mulch is dumped on a tarp. The colorant can also stain clothing or be tracked onto carpet or furniture by pets. </p><p>We sell the mulch in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the mulch by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 50 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=I1ZOsWuYzzs\" target=\"blank\">Information Link</a></p>', 'mochaChip.jpg', 'Active'),
(22, 'PF', 'Playground Fiber', '<p>Playground Fiber is engineered natural wood that is 1/2\" - 1\" in size. Made out of California white conifers, the fiber is processed to have elongated blunt or soft chopped ends, therefore, more resistant to splintering. Chips do not contains any toxins or chemical additives. No recycled by-products, processed woods or fillers are used. Meets ADA, ASTM and CPSC playground surfacing standards for impact absorption, accessibility and safety. Approved for use in public playgrounds, parks or pathways. </p><p>We sell the Playground Fiber in one cubic foot bags, we supply the bags you fill them. For larger areas, you\'ll want to purchase the Playground Fiber by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 45 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=EJ1EtKcxSno\" target=\"blank\">Information Link</a></p>', 'playgroundFiber.jpg', 'Active'),
(23, 'PAM', 'Premium Arbor Mulch', '<p>Premium Arbor Mulch is 100% clean tree trimming from local urban forests. The tree trimmers and arborists dropping off the trimmings and wood are monitored closely for quality. Mulch contains a conglomerate of bark, wood chips, and some leaves. Provides protection and food for the life in your soil. Mulch will eventually decompose and will turn into organic soil amendment over time. Depending on the grade, holds well in moderately sloped areas. Excellent for Sheet Mulching applications! Click on the Information Link below to learn more about Sheet Mulching!</p><p>We sell the mulch in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the mulch by the cubic yard. We can load your truck or for a fee, have us deliver the mulch to your home or jobsite. For orders over 50 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.lyngsogarden.com/community-resources/sheet-mulching/\" target=\"blank\">Information Link</a></p>', 'premiumArborMulch.jpg', 'Active'),
(24, 'SCB', 'Shredded Cedar Bark', '<p>Shredded Cedar Bark is a stringy, and fibrous bark that ranges in size around 1-3 inches and less. Bark originates from lumber from cedar trees. Practical and attractive mulch for most applications in your landscape. </p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase the bark by the cubic yard. We can load your truck or for a fee, have us deliver the bark to your home or jobsite. For large orders over 60 cubic yards, please call for a direct price.</p><p><a href=\"https://www.youtube.com/watch?v=z3OEKGpTf-4\" target=\"blank\">Information Link</a></p>', 'shreddedCedarBark.png', 'Active'),
(25, 'SFB', 'Small Fir Bark', '<p>Small Fir Bark is often mistaken for redwood, it is indeed the bark of fir trees. An attractive and popular mulch for most landscapes. The sun fades the natural red fir bark to a weathered grey over time. Mulch will eventually decompose and will turn into an organic soil amendment over time.  </p><p>Small Fir Bark is 1/2\"-2\" in size and has some variation. Please check the physical inventory in our yard before ordering. </p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the bark by the cubic yard. We can load your truck or for a fee, have us deliver the bark to you. For orders over 45 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=i3Dd3WTvRjY\" target=\"blank\">Information Link</a></p>', 'smallFirBark.jpg', 'Active'),
(26, 'WOB', 'Walk On Bark ', '<p>Walk on Bark is mostly a mixture of 1\"-3\" red/brown fir bark nuggets and cambium. There could be some much larger pieces of material mixed in, from time to time and the consistency of the Walk on Bark varies from batch to batch.  Clean byproduct from sawmills, no post consumer wood is used. When Fir Bark is the desired visual effect, Walk on Fir Bark is a beautiful and economical alternative to Small Fir Bark and Mini Mulch Fir Bark, to mulch your landscape project. Great for pathways and walkways. </p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase the bark by the cubic yard. We can load your truck or for a fee, have us deliver the bark to your home or jobsite. For large orders over 60 cubic yards, please call for a direct price.</p>', 'walkOnBark.jpg', 'Active'),
(27, 'TWC', 'Wood Chips', '<p>Wood Chips are primarily redwood and may contain a small amount of fir that are 1/2\"-1\" in size. Lighter colored mulch that will darken with age and has a sheen. Great for pathways, walkways, and larger landscaped areas. Wood Chips take longer to decompose than other mulch so can be used in areas where mulch needs to last for a while. </p><p>We sell the Wood Chips in one cubic foot bags, we supply the bags and you fill them. For larger areas, you\'ll want to purchase the wood chips by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 45 cubic yards, please call us for direct pricing.</p><p><a href=\"https://www.youtube.com/watch?v=a1zr7dEPtM0\" target=\"blank\"></a></p>', 'woodChips.jpg', 'Active'),
(28, 'AACT', 'Actively Aerated Compost Tea', '<p>Actively Aerated Compost Tea (AACT) is a liquid concentrate containing all the beneficial microbial components that compost is famous for.  These living beneficial microbes are the biology that drives the soil food web in a healthy functioning soil.  The soil food web is responsible for:</p>\r\n<ul>\r\n<li>Nutrient cycling break-down and reuse of organic sources of plant nutrition, and their holding capacity in the soil.</li><li>Improved soil structure - through the formation of soil aggregates.</li><li>Increased porosity - resulting in better aeration and water retention.</li><li>The degradation of soil pollutants and pH buffering.</li>\r\n<ul>\r\n\r\n<p>Inorganic (chemical) fertilizers, pesticides, herbicides, and mechanical compaction damage these beneficial soil microbes and reduce or delete the benefits of a healthy soil food web.  This breakdown of microbial functioning can be the cause of poor plant growth and color, low resistance to garden pests and pathogens, and decreased fruit and vegetable production. Without the re-introduction of the beneficial microbes found in well-made compost, garden maintenance becomes a dependent cycle of chemical inputs and controls, spreading pesticide pollution by air and leaching through the soil to pollute our groundwater, creeks, and bay waters.</p><p>The tea made here at Lyngso Garden Materials, Inc is specifically called Actively Aerated Compost Tea (AACT) in reference to the careful brewing process that maintains oxygen levels necessary for aerobic functioning.</p><p>AACT is composed of living biology and is therefore very sensitive to heat, sunlight, and oxygen loss and should be protected until applied; no more than a few hours at the most, from purchase.  If you detect \"bad\" or rotten smells, do not use the tea, as the biology has been damaged and will contain harmful by-products of anaerobic reproduction.</p><p>AACT can be used full strength or diluted up to 1:4. If chloramine-treated city water is used for dilution the water must be pre-treated using Amquel or another aquarium product that breaks down the chloramine.  Another treatment to neutralize the chloramine is by mixing a small amount of liquid humates (Humic Acid) into the city water before putting the AACT in. Application can be made manually with a watering can to the soil.  Rinse out the container and let it air dry.</p><p>It is important to provide food for the biology if you use AACT as a soil drench.  A liquid fertilizer such as Native Nutrients Fish Hydrolysate or Native Nutrients Kelp may be added to the AACT before applying.   A 1\" layer of compost and mulch will provide additional food for the organisms.</p><p>Tea brewing & compost production are under the direction of Alane Weber, Certified Adviser for the Soil Food Web, Inc (www.soilfoodweb.com) and are regularly tested for microbial health and diversity.  Test results are available upon request.</p>\r\n<ul><li>AACT is not for human or animal consumption.</li><li>Do not apply AACT directly onto food crops.</li><li>Wash your hands with soap and water after applying AACT.</li></ul><p></p>\r\n<p>Actively Aerated Compost Tea (AACT) Pricing:</p><ul><li>$12.00 per gallon (if less than 18 gallons)</li><li>$10.00 per gallon (if 18 gallons or more in your own bulk container. No one-gallon containers please.)</li></ul><p>One gallon and three-gallon containers are available for purchase and if cleaned, can be reused.</p><ul><li>1-gallon containers $3.00</li><li>2.5-gallon containers $8.00</li></ul><p></p><p>Actively Aerated Compost Tea (AACT) is available on a first-come-first-served basis. To ensure we have the quantity you need, we suggest you place your bulk orders before Tuesday at noon for our Wednesday and Thursday brew. </p><p>If you would like to be on our weekly email notification schedule for our Actively Aerated Compost Tea (AACT) please subscribe to our AACT Email list under the Community Resources tab and find the AACT article. Or click the link below.</p><p><a href=\"https://www.lyngsogarden.com/community-resources/actively-aerated-compost-tea-aact/\" target=\"blank\"></a></p>', 'activelyAeratedCompostTea.jpg', 'Inactive'),
(29, 'BBBC', 'Bu’s Blend Biodynamic Compost ', '<p>A Demeter(R) USA certified biodynamic compost. Contains no GMOs, pesticides, sewage sludge, growth hormones or synthetic chemicals. Acts as an alternative to chemical, synthetic, and \"faux\" organic soil amendments. Excellent compost to feed your soil.</p><p>Ingredients: Dairy cow manure, straw, wood chips, and concentrations of yarrow, chamomile, valerian, stinging nettle, dandelion, and oak bark.</p><p>For good soil & seasonal care: Spread 1/2\" to 1\" of Bu\'s Blend over planting area (for edibles and grass), watering well (for roses and other bushes), or drip line (for larger trees). Water in (or let the rain do it for you) and let the microbes do the work. Repeat every 3-4 months.</p><p>For poor soil: Break up the soil and apply up to 2\" of Bu\'s Blend on top. Water deeply & repeat every 2 weeks or so until soil improves. The water will draw beneficial microbes deep into the soil, where they will work to improve soil structure and vitality.</p>', 'busBlendBiodynamicCompost.jpg', 'Active'),
(30, 'DDOC', 'Double Doody Organic Compost', '<p>Double Doody Compost is an earthy blend of nutrient-rich horse and cow manure.</p><p>Adds vigor to plants, promotes root growth, aids water penetration, and improves the structure and quality of the soil.</p><p>Perfect for veggies, shrubs, trees, plants, and gardens, Point Reyes Double Doody is an excellent top dressing to help protect roots and soil from temperature damage. Lab-tested for the highest nutrient value, Double Doody has an excellent carbon to nitrogen ratio and iron reserve, and can assist in correcting any degree of deficiency of phosphorous, potassium and sulfate. Its stability and maturity means the rich nutrients are readily available – little of this stout stuff goes a long, long way.</p><p>Nutrient-wise, it offers three basic elements critical to plant health: nitrogen, phosphorus, and potassium. Nitrogen allows plants to produce the proteins needed to build living tissue for green stems, strong roots, and lots of leaves. Phosphorus helps move energy throughout the plant, especially important in maturing plants. Potassium aids plants in adapting sugars needed in growth and is especially helpful in root crops.</p><p>Double Doody Compost is CDFA OIM listed for organic use. </p>', 'doubleDoodyOrganicCompost.png', 'Active'),
(31, 'HOWC', 'Heritage Organics Worm Castings', '<p>Heritage Organics® Premium Quality Organic Worm Castings are an all-in-one Soil Amendment that is safe for the environment, children and pets. For millions of years earthworms have continued the “Cycle of Fertility” by converting organic matter into vermicompost. Odorless. Great for indoor/outdoor use. CDFA & OMRI listed for organic use.</p>\r\n<p>APPLICATION RATES:</p><ul><li>Vegetable Gardens – Till in 1/2\" of worm castings or top dress with 1\" of worm castings around plants. Re-apply every 3 to 6 month with 1/2\" of worm castings.</li><li>Potting Mix – Mix in 1 part of worm castings to every 4 parts of potting soil</li><li> House Plants & Flower Beds – Apply 1/2\" of worm castings at the beginning of spring, summer & fall. Till in worm castings if possible.</li><li>New & Established Lawns – Apply 10 pounds per 100 square feet. Water lawns as usual.</li><li>Fruit Trees – Apply 1/2\" – 1\" of worm castings under half the diameter oft he trees canopy. Till in if possible.</li><li>Worm Castings are perfect for a plant tea. Mix 2 cups castings with 5 gallons of water. Let steep for 1 hour and feed plants.</li></ul><br /><p>INGREDIENTS: Worm Castings</p>', 'heritageOrganics.png', 'Active'),
(32, 'SCCOB', 'Seacoast Biodynamic Compost ', '<p>SeaCoast Compost is a premium, Biodynamic® compost crafted from the finest combination of sea and land ingredients. We gather the “waste” from three iconic Oregon coast industries and use these high-quality inputs to create nutrient-rich compost. The mixture includes fish, shrimp and crab leftovers from seafood processing, alder hardwood from the lumber industry, and cow manure and bedding from organic dairies. They add homeopathic preparations to enliven the compost and stimulate plants to maximize their effectiveness in their environments. The resulting compost offers a feast for your soil and plants.</p><p>SeaCoast Biodynamic Compost is available in 1 cubic foot bags.</p>', 'seaCoastCompost.jpg', 'Active'),
(33, 'OBULL', 'Oregon Bull Organic Aged Humus - Special Order', '<p>AVAILABLE BY SPECIAL ORDER ONLY. Order minimum is 12 cubic yards. </p><p>Oregon Bull Organic Aged Humus is not compost but rather humus - it is the manure of cattle that have been left to decompose over time. The manure comes from an old feed yard where animals were grass-fed and barley finished. This was before the days of GMOs, hormones, and antibiotics. The process of humification is much slower than composting and involves a greater diversity of microbes including fungi. You will notice on the Soil Food Web Report that the Oregon Bull Organic Aged Humus has a higher fungal count than compost, it has a more diverse soil food web and will benefit a wide range of plants.</p><p>The Oregon Bull Organic Aged Humus can be used for food crops including vegetable gardens, fruit trees, berries and as well as roses and perennials. As with all composts and worm castings, you can apply the Humus as a top dressing but then do apply mulch on top to protect it from the sun, wind, and rain.</p><p>Due to the fine nature of the humus, you will find that it may shed water if it is dry. If you incorporate it into the soil lightly that will help to remoisten it.  If you are side dressing then wet the soil, apply the Oregon Bull, then apply a 2-3\" layer of mulch, and then water the mulch. It will supply soluble nutrients and lots of life. A 3/8\"-1/2\" layer on top of the soil followed by mulch is all you need for most plants. If incorporating it into the soil 1/2\" - 1\" of Oregon Bull to a depth of 6-8\" soil is sufficient from a wide range of plants. If planting vegetables, go with a higher rate of 1\" and incorporate to a depth of 6-8\" of soil.</p><p>We sell the Oregon Bull Organic Aged Humus in one cubic foot bag, we supply the bags, you fill them. For larger areas, you will want to purchase the Humus by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 40 cubic yards, please call us for direct pricing.</p><p>Oregon Bull Organic Aged Humus is OMRI and CDFA OIM listed for organic use.</p>', 'oregonBullOrganicAgedHumus.jpg', 'Active'),
(34, 'OAM', 'Organic Amendment Mix', '<p>Organic Amendment Mix is a blend of Organic Green Waste Garden Compost, Redwood Sawdust, and Organic Feather Meal. This mix is generally used for improving most soils in water retention and aeration. Amendment Mix helps to open up clay for rainwater to be held and to be moved through the soil. Excellent for new sod installations and for generic all-purpose soil amending. </p><p>For additional organic fertilizer and microbiology, mix in Bio-Live 5-4-2 while amending. </p><p>Lyngso\'s Organic Amendment Mix is an organic substitute for Nitrolized Redwood Amendment. </p><p>CDFA OIM LISTED FOR ORGANIC USE</p><p>We sell the Organic Amendment Mix in one cubic foot bag, we supply the bags and you fill them. For large areas, you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site. For orders over 20 cubic yards, please call us for direct pricing.</p>', 'organicAmendmentMix.jpg', 'Active'),
(35, 'DIESTEL', 'Organic Diestel Structured Compost ', '<p>Diestel Structured Compost delivers vitality to the soil. Diestel Structured Compost is completely finished and is not a hot compost. The ingredients are sourced directly from the Diestel family turkey ranch where turkeys are allowed to develop at a natural growth rate. The carbon used to make the Diestel Structured Compost comes from forest trimmings from the Sierra Nevada Foothills. The compost is given time and consistent attention to develop into a dark brown, fresh-smelling, living compost ready to add life and feed your plants. </p><p>For additional organic fertilizer and microbiology, mix in We sell the Diestel Structured Compost in one cubic foot bag, we supply the bags, you fill them. For larger areas, you will want to purchase the Garden Compost by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 40 cubic yards, please call us for direct pricing.\r\n</p><p>Diestel Structured Compost is CDFA OIM listed for organic use.</p>', 'organicAmendmentMix.jpg', 'Active'),
(36, 'OC', 'Organic Green Waste Garden Compost', '<p>Garden Compost is composted green waste and is OMRI and CDFA listed as organic. It is a rich amendment that is especially good for improving soils that are too sandy and drain too fast as well as to amend clay soil. Garden Compost is still warm, so spread it out on the surface or mix into your existing soil.  Spread the Garden Compost to a depth of 2 inches and mix in with your soil. </p><p>Although the Garden Compost is listed as CDFA OIM, it is still a recycled product so it may occasionally contain small inert debris such as plastic or glass. Therefore, we don\'t recommend it for organic food production. If you are looking for compost to grow organic vegetable, please consider using our Organic Diestel Structured Compost. </p><p>We sell the Garden Compost in one cubic foot bags, we supply the bags, you fill them. For larger areas, you will want to purchase the Garden Compost by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 40 cubic yards, please call us for direct pricing.</p><p>Garden Compost is OMRI and CDFA listed for organic use.\r\n</p><p>Organic Green Waste Garden Compost complies with SB 1383 requirements and is produced in a fully permitted composting facility conforming to the State of California regulations set forth by the California Integrated Waste Management Board (CIWMB) Title 14, Division 7 California Code of Regulations governing composting operations.</p>', 'organicGreenWasteGardenCompost.jpg', 'Active'),
(37, 'WEBB', 'Webb Ranch Premium Organic Compost ', '<p>Webb Ranch Premium Organic Compost is screened and aged over 6 months. Compost is weed-free, smells earthy, and is an invaluable addition to any garden because it improves soil structure. The primary soil food is organic matter and compost is the best way to provide it— making Webb Ranch Compost a key component of successful gardens.  \r\nWebb Ranch Premium Organic Compost is made from fine wood shavings, horse manure, hay, and green waste from Webb Ranch’s organic farm.  It is ideal for use in vegetable gardens, flower beds, around trees and shrubs, and on lawns.  Add it to the soil at the time of planting, side-dress your existing plants, or use it as a surface mulch and watch your garden thrive!\r\n</p><p>Although the Garden Compost is listed as CDFA OIM, it is still a recycled product so it may occasionally contain small inert debris such as plastic or glass. Therefore, we don\'t recommend it for organic food production. If you are looking for compost to grow organic vegetable, please consider using our Organic Diestel Structured Compost. </p><p>How to Use: </p><p>Amending Soil: Work 1-2 inches of compost into the top 3-5 inches of soil.</p><p>Growing Fruit and Vegetables- Spread 1-2 inches of compost on top of the garden bed in the Fall.  Till it into the soil in the Springtime.  Add ½ inch of compost monthly as plants begin to grow quickly.</p><p>Lawn: For new lawns, add up to 3 inches of compost into the soil and till to a depth of 5-7 inches.  For existing lawns, incorporate 1 inch of compost into the bald spots before reseeding.  You can also topdress lawns with ¼ inch of finely screened compost.  Rake the compost evenly throughout the grass area.  Over time the compost will improve the soil, reducing the need for other products.</p><p>New and Existing Plants: When planting, work 1 inch of compost into the top 2 inches of soil in and around the planting hole.  Apply 1-2 inches of compost as a mulch around new and existing plants in early Spring or Fall to improve the soil, prevent weeds, and help retain moisture.  You can also gently till compost into the soil once or twice a year.  Do not place compost directly against the stem or trunk of a plant, which could cause rot or invite pests.</p><p>Compost Coverage: 2 cubic feet of compost will cover approximately 24 square feet at a depth of 1 inch.</p><p>We sell the Webb Ranch Premium Organic Compost in one cubic foot bag, we supply the bags, you fill them. For larger areas, you will want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or jobsite. For orders over 40 cubic yards, please call us for direct pricing.</p><p>Webb Ranch Premium Organic Compost is CDFA OIM listed for organic use. </p>', 'webRanchPremiumCompost.png', 'Active'),
(38, 'BIOSWALE', 'Biotreatment Soil Mix', '<p>Biotreatment Soil Mix is very effective at filtering stormwater runoff before it enters our storm drains and waterways. The process of running the storm or runoff water through the Biotreatment Soil Mix allows the water to be cleaned up by the biology and filtered so pollutants and sediments are much reduced. The Biotreatment Soil Mix will support many vernal and riparian plant communities, the roots of the plants will also help clean up the stormwater runoff. The quality of water going into our streams, creeks, bay and ocean will be much improved creating a much healthier habitat for our native amphibians and fish.</p><p>Our Biotreatment Mix meets the “Soil Specifications: criteria approved by the Executive Officer of the San Francisco Bay Regional Water Quality Control Board on April 18, 2016, in accordance with Provision C.3.c.i.(2)(c)(ii) of the Municipal Regional Stormwater Permit (MRP). Meets BASMAA and SFPUC specifications. </p>', 'biotreatmentSoilMix.jpg', 'Active'),
(39, 'BBBPS', 'Baby Bu\'s Biodynamic Potting Mix', '<p>Baby Bu bursts with premium materials specially blended with Bu\'s Blend(TM) Biodynamic(R) Compost to Support plant & soil life in your raised beds, pots, container gardens, hanging baskets, and houseplants.</p><p>Baby Bu\'s(TM) Biodynamic(R) Blend Potting Soil:</p><ul><li>Contains no GMOs, pesticides, sewage sludge, growth hormones, or synthetic chemicals</li><li>Acts as an alternative to chemical, synthetic, and \"faux\" soil amendments</li><li>Aids in the proliferation of beneficial soil microbes</li><li> Is ideal for seeds, seedlings, & transplants</li><li>aves water through proper moisture absorption at the surface and dissipation at the root levels</li><li>Is safe and non-toxic for your kids, your pets, and our planet.</li></ul><br/><p>Ingredients:</p><p>Coir, compost (composted organic dairy cow manure, wood chips, straw, concentrations of yarrow, chamomile, valerian, stinging nettle, dandelion, & oak bark), fir bark, perlite, worm castings, soybean meal, fish meal, fish bone meal, langbeinite, alfalfa meal, crab meal, green sand, neem seed meal, volcanic ash, biochar & kelp meal. </p><p>Baby Bu\'s Biodynamic Potting Mix is available pre-bagged in 1.5 cubic foot.</p>', 'babyBuBiodynamicPottingSoil.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `sku` varchar(30) DEFAULT NULL,
  `product_order` int DEFAULT NULL,
  `category` int NOT NULL,
  `product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `sku`, `product_order`, `category`, `product`) VALUES
(1, 'C2BR', 1, 21, 1),
(2, '34C2', 2, 21, 2),
(3, '14-FB', 1, 28, 5),
(4, 'AFBF', 1, 16, 4),
(5, '14PG', 2, 20, 3),
(6, '1OS', 1, 19, 6),
(7, '2OS', 2, 19, 7),
(8, 'CS', 3, 19, 8),
(9, 'CBSB', 2, 16, 9),
(10, 'AL', 3, 16, 10),
(11, 'GBLT', 5, 16, 11),
(12, 'LGS', 6, 16, 12),
(13, '516RL', 2, 28, 13),
(14, 'LIGNA PEAT', 3, 28, 14),
(15, 'ORGANIC-AMENDMENT', 4, 28, 15),
(16, 'RS', 4, 28, 16),
(17, 'COMPOST-MULCH', 4, 31, 17),
(18, 'GRB', 5, 31, 18),
(19, 'MA CHIP', 6, 31, 19),
(20, 'MMFB', 7, 31, 20),
(21, 'MOCHA CHIP', 8, 31, 21),
(22, 'PF', 8, 31, 22),
(23, 'PAM', 9, 31, 23),
(24, 'SCB', 10, 31, 24),
(25, 'SFB', 10, 31, 25),
(26, 'WOB', 10, 31, 26),
(27, 'TWC', 11, 31, 27),
(28, 'AACT', 10, 29, 28),
(29, 'BBBC', 10, 29, 29),
(30, 'DDOC', 11, 29, 30),
(31, 'HOWC', 12, 29, 31),
(32, 'SCCOB', 13, 29, 32),
(33, 'OBULL', 14, 29, 33),
(34, 'OAM', 15, 29, 34),
(35, 'DIESTEL', 16, 29, 35),
(36, 'OC', 17, 29, 36),
(37, 'WEBB', 18, 29, 37),
(38, 'BIOSWALE', 19, 32, 38),
(39, 'BBBPS', 19, 32, 39);

-- --------------------------------------------------------

--
-- Table structure for table `units_of_measure`
--

CREATE TABLE `units_of_measure` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `units_of_measure`
--

INSERT INTO `units_of_measure` (`id`, `title`, `description`) VALUES
(1, 'ton', 'Tons'),
(2, 'u-sack', 'U-Sack');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state_province` varchar(20) DEFAULT NULL,
  `postal_code` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `phone`, `address`, `city`, `country`, `state_province`, `postal_code`, `company`, `isAdmin`, `createdAt`, `updatedAt`) VALUES
('9b092928-22a5-4dc7-b572-7115bdb2841e', 'cameronM', 'Cameron', 'McClintock', 'test@tess.com', '$2a$12$DSgKVuCjg39SrkKzh8VNuO.K861o8S6XIKnsLzh5EIJjyR2GIo4zO', '6507033736', '201 Burns Valley Road', 'Loma Mar', 'US', 'CA', '94021', '', 0, '2022-05-03 09:26:38', NULL),
('b6a19327-e5d5-4b06-aba6-3607d81671a6', 'jmcclint', 'Joseph', 'McClintock', 'joseph@nativemeadow.com', '$2a$12$QeqKI6Irxp4Ju7jEMCwx3OFEoB.zRL8hdB/KXulVdbtngYRfyxQKq', '6507033736', '201 Burns Valley Road', 'Loma Mar', 'US', 'CA', '94021', '', 0, '2022-04-30 18:52:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category-key` (`url_key`),
  ADD KEY `parent_category` (`parent_category`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent-product` (`product`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`) USING BTREE,
  ADD KEY `product` (`product`);

--
-- Indexes for table `units_of_measure`
--
ALTER TABLE `units_of_measure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `units_of_measure`
--
ALTER TABLE `units_of_measure`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `parent-product` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
