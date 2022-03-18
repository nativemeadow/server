-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2022 at 04:09 PM
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
(1, 'sand', 'Sand, Gravel, &amp; Decorative Aggregates', '<p>The key to landscaping in California is to maximize water efficiency, and strategically use decorative rocks and fillers in places where plants can’t grow. Designing your exteriors to be functional, efficient, and aesthetically appealing is a great way to increase your enjoyment and the value of your home. To improve your landscape\'s function, choose from a wide variety of filler materials, such as our sands, pea gravels, and crushed grain rock, as well as base rock materials. To increase aesthetic beauty, we offer a large variety of crushed rock, as well as decorative, polished, and premium pebbles. See for a guide to all<a style=\"color: #aa081e\" target=\"_blank\" href=\"#\"> our landscaping sands, gravels, and rocks.</a></p>\r\n\r\n<p style=\"font-size:12px;text-align:center;margin-bottom:15px\">Disclaimer: Product pictures of natural stone are not an exact representation of the product hues seen in natural light. There are natural color variations in stone and exact color match is not guaranteed. We recommend verifying the product color at our location before placing your order online.</p>', 'sand-grave-decorative-rocks.jpg', 1, NULL),
(2, 'stone', 'Natural Stone', NULL, 'natural-stone.jpg', 4, NULL),
(3, 'mulch', 'Composts, Mulches, Soils & Amendments', NULL, 'compost-mulch.jpg', 2, NULL),
(4, 'biologicals', 'Biologicals, Fertilizers & Bagged Soils', NULL, 'fertilizers-amendments.jpg', 3, NULL),
(5, 'pottery', 'Pottery & Garden Ornaments', 'We carry an extensive line of pottery and statues. \r\nVisit our location in San Carlos for our new and ever evolving inventory.', 'pottery-garden-ornements.jpg', 5, NULL),
(6, 'water-features', 'Water Features', NULL, 'water-features.jpg', 6, NULL),
(7, 'tools', 'Building Materials & Tools', NULL, 'tools.jpg', 7, NULL),
(8, 'precast', 'Precast Concrete Products', 'Please refer to our vendor websites for your paver selections, you\'ll be redirected by clicking on the picture below. \r\n\r\nFor more information and to place your order, call us at (650) 364 1730.', 'precast-concrete.jpg', 8, NULL),
(11, NULL, 'Boulders', 'Boulders are a timeless natural resource that enhances the beauty of any landscaped area. Use them as a focal point in your garden or as a complimentary element. Boulders could also be enjoyed as a natural seating in an outdoor space. Our boulders are sold by weight of the individual piece. We carry a wide variety of natural boulders from granite to quartzite to basalt and more! With natural variations between each boulder, no two are alike. \r\n\r\nVisit our yard to handpick your unique boulders!\r\n\r\nDisclaimer: Many stone types may have concentrations of iron, and with the exposure to moisture, rust stains may be bleeding to the surface of the stone. For many stone types there is no way of knowing prior to installation if this will be an issue.', 'boulders.jpg', 10, 2),
(13, NULL, 'Dimensional Stones', 'Dimensional Stones are cut stones with rectilinear edges, making installation of natural stone quite easy. Create your own desired pattern with various sizes. Most dimensional stones are offered from 12\" X 12\" size. Custom sizes are made to order.', 'dimensional-stone.jpg', 11, 2),
(14, NULL, 'Driveway Cubes, Cobbles & Pavers', NULL, 'driveway-cubes-cobbles-pavers.jpg', 12, 2),
(15, NULL, 'Drystack & Wall Rocks\r\n', NULL, 'drystack-wall-rocks.jpg', 13, 2),
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
(28, NULL, 'Amendments', '<h1>Organic Soil Amendments</h1>\r\n\r\nThe ideal soil consists of a balance of sand, loam, clay, organic matter, minerals, water, and air, but rarely do we get to start with the perfect combination. That\'s why we offer a number of soil amendments that are perfect for California\'s main soil types: sandy, loamy, and clay. For tips on how to amend, see our guide to amendments for California soils.', 'amendments.jpg', 26, 3),
(29, NULL, 'Compost', '<h1>Organic Garden Composts</h1>\r\n\r\nCompost is decomposed organic matter that is rich in nutrients and often a course, dark brown, peat-like material. Adding compost to your soil improves the overall structure and texture. It increases the capacity to hold water in sandy soils, and enhances drainage in heavy clay soils. It also attracts earthworms that help aerate the soil and beneficial microbiology that helps convert material into molecules and elements that plants can more easily absorb.\r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'compost.jpg', 27, 3),
(31, NULL, 'Mulches', 'Mulch is a generic term for a ground cover that protects the soil. Organic and natural mulch helps with moisture retention, weed prevention and water loss due to surface evaporation. Covering your landscape with at least 1\" of mulch helps provide the soil with the much needed protection from the natural weathering elements. The mulch will decompose over time, providing carbon matter and feeding your soil. Choose from a variety of mulch to match your garden aesthetics.\r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'mulches.jpg', 29, 3),
(32, NULL, 'Soils', '<h1>SOIL IS LIFE!</h1>\r\n\r\nThe ideal soil is made up of a balance between clay, sand, loam, organic matter, minerals, water and air. At Lyngso, we believe in the soil food web with a healthy balance of microorganisms that help the soil be alive, organic, and full of life. We pride ourselves in our extensive knowledge of soil biology and are happy to recommend the right kind of soil for your garden to thrive! \r\n\r\nSee our how to guide on improving your soil\'s structure, feeding your soil, and protecting your soil.  \r\n\r\nNot sure which compost is best for your needs? Check out our guide to choosing the right compost for your flower or vegetable garden.', 'soils.jpg', 30, 3),
(33, NULL, 'Biologicals, Minerals & Liquid Fertilizers', NULL, 'biological-minerals-liquid-fertilizers.jpg', 31, 4),
(34, NULL, 'Down To Earth Single & Blended Fertilizers', NULL, 'down-to-earth.jpg', 32, 4),
(35, NULL, 'Pre-bagged Soils & Composts', NULL, 'pre-bagged-soils-composts.jpg', 33, 4),
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
(51, NULL, 'Cement, Grout & Quikrete', NULL, 'cement-grout-quikrete.jpg', 45, 7),
(52, NULL, 'Sand(Pre-Bagged)', NULL, 'pre-bagged-sand.jpg', 46, 7),
(53, NULL, 'Stains, Sealers & Cleaners', NULL, 'stains-sealers-cleaners.jpg', 47, 7),
(54, NULL, 'Structural & Edging', NULL, 'structural-and-edging.jpg', 48, 7),
(55, NULL, 'tools', NULL, 'construction-tools.jpg', 49, 7),
(56, NULL, 'Blads', NULL, 'blades.jpg', 50, 7),
(57, NULL, 'Calstone', NULL, 'calstone.jpg', 51, 8),
(58, NULL, 'Step Stone', NULL, 'step-stone.jpg', 52, 8);

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
(1, 'C2BR', 'Class 2 Base Rock Sack', 'Per U-sack', '2.25', NULL, 'sk', 'Ton/Yard', '1.35', 1),
(2, 'C2BR', 'Class 2 Base Rock', 'Per Ton', '31.50', NULL, 'ton', 'Ton/Yard', '1.35', 1),
(3, '34C2P', 'Class 2 Base Rock Permeable Sack', 'Per U-Sack', '5.25', NULL, 'sk', 'Ton/Yard', '1.25', 2),
(4, '34C2P', 'Class 2 Base Rock Permeable', 'Per Ton', '77.50', NULL, 'ton', 'Ton/Yard', '1.25', 2),
(5, '14PG', '1/4&quot; Pea Gravel Sack', 'Per U-Sack', '5.50', NULL, 'sk', 'Ton/Yard', '1.25', 3),
(6, '14PG', '1/4&quot; Pea Gravel ', 'Per Ton', '70.95', NULL, 'ton', 'Ton/Yard', '1.25', 3),
(7, 'AFBF', 'Arizona Flagstone - Buckskin', 'Per Lb', '0.23', 'Per Lb', 'lbs', NULL, NULL, 4),
(8, 'AFBF', 'Arizona Flagstone - Buckskin', 'Per Ton', '450.00', 'Per ton', 'ton', NULL, NULL, 4),
(9, '14-FB', '1/4&quot; Minus Fir Bark', 'Per U-Sack ', '4.50', NULL, 'sk', 'Ton/Yard', '0.16', 5),
(10, '14-FB', '1/4&quot; Minus Fir Bark ', 'Per Yard', '75.50', NULL, 'ton', 'Ton/Yard', '0.16', 5),
(11, '1OS', '#1 Olympia Sand Sack', 'Per U-Sack', '6.95', NULL, 'sk', 'Ton/Yard', '1.25', 6),
(12, '1OS', '#1 Olympia Sand', 'Per Ton', '99.50', 'Ton', 'ton', 'Ton/Yard', '1.25', 6),
(13, '2OS', '#2 Olympia Sand Sack', 'Per U-Sack', '6.95', NULL, 'sk', 'Ton/Yard', '1.25', 7),
(14, '2OS', '#2 Olympia Sand', 'Per Ton', '99.50', 'Ton', 'ton', 'Ton/Yard', '1.25', 7),
(15, 'CS', 'Concrete Sand / U Sack', 'Per U-Sack', '5.00', NULL, 'sk', 'Ton/Yard', '1.25', 8),
(16, 'CS', 'Concrete Sand Per Ton ', 'Per Ton', '99.50', NULL, 'Ton', 'Ton/Yard', '1.25', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `sku` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `title`, `description`, `image`) VALUES
(1, 'C2BR', 'Class 2 Base Rock', '<p>Class 2 Base Rock is a recycled product composed of fines and 3/4\" crushed concrete. It is used underneath foundations, pathways, patios, and driveways. It is also used as a base underneath concrete and asphalt. Class 2 Base Rock meets the Cal Trans spec.</p>\r\n<p>We sell the Class 2 Base Rock in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your Bay Area location. For orders over 20 tons, please call us for direct pricing.</p>\r\n<p>Class 2 Base Rock may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'class2baserock.jpg'),
(2, '34C2P', 'Class 2 Permeable Base Rock', '<p>Class 2 Base Rock is a recycled permeable product composed of 3/4\" crushed concrete and minimal fine stones allowing it to be water permeable. It is used underneath foundations, pathways, patios, and driveways or wherever permeability and stability are desired. Class 2 Permeable Base Rock meets the Cal Trans spec.</p>\r\n<p>We sell the Class 2 Permeable Base Rock in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck, or for a fee, have us deliver the base rock to your location in the Bay Area. For orders over 20 tons, please call us for direct pricing.</p>\r\n<p>Class 2 Permeable Base Rock may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'class2permeableBaserock.jpg'),
(3, '14PG', '1/4&quot; Pea Gravel ', '<p>1/4&quot; Pea Gravel is commonly used for pathways, driveways, dog runs, playgrounds, patios, and as ground cover. The smaller gravels are often used on roofs over tar.  Underground applications include drainage and pipe bedding materials for stable support.</p>\r\n<p>Please note: 1/4&quot; Pea Gravel vendor source is currently different than our previous source. Therefore, the gravel may vary in appearance. </p>\r\n<p>We sell the 1/4\" Pea Gravel in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your own truck,  or for a fee, have us deliver to your Bay Area location. For orders over 20 tons please call us for direct pricing.</p>\r\n<p>1/4&quot; Pea Gravel may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly. </p>', 'oneQuarterInchPeaGravel.jpg'),
(4, 'AFBF', 'Arizona Flagstone - Buckskin', '<ul class=\"product-details\">\r\n<li class=\"item-details\">Origin: North America</li>\r\n<li class=\"item-details\">Classification Sandstone</li>\r\n<li class=\"item-details\">Color Range: Warm Tones</li>\r\n<li class=\"item-details\">Finish: Natural Cleft</li>\r\n<li class=\"item-details\">Applications: Walkways, Pathways, Patios, Accents</li>\r\n</ul> \r\n\r\n\r\n<p>Arizona Flagstone is a standup select grade flagstone that is available in large sheets of random shapes. It can be used for patios, stepping stones or any flat surface that you want to cover with flagstone. Due to the natural cleft and the porosity, this natural paving stone spalls, meaning, the top layer of the stone peels off with wear. In a shady damp area, particularly in winter months, algae and moss growth which can permanently stain the stone. Some landscapes desire this look but to deter algae and moss growth, use a stone sealer.</p><p>This sedimentary sandstone is available in a variety of southwest colors: Sedona Red, Rosa, Peach, Buckskin, Buff, Classic Oak, and variations in between.</p>\r\n<p>Available in two thickness: 1&quote;-1  3/4 &quote; and thinner 1&quote; minus.</p>\r\n<p>For sand setting application, use the thicker 1&quote; - 1  3/4 &quote; flagstone.\r\nFor the 1&quote; minus flagstone, special care needs to be taken since the stone is very fragile and brittle. It is intended to be set in mortar on a concrete base to protect it from cracking</p>', 'arizona-flagstone-buckskin.jpg'),
(5, '14-FB', '1/4&quot; - Fir Bark', '<p>1/4 &quot; Fir Bark is the smallest remaining particles from sifting the fir barks. Mix in with clay soil to loosen and aerate as an organic amendment. Provides moisture retention and aeration. Due to the small size of the bark, breaks down faster than Fine Redwood Amendment.</p><p>We sell the bark in one cubic foot bags, we supply the bags and you fill them. For large areas, you\'ll want to purchase by the cubic yard. We can load your truck or for a fee, have us deliver to your home or job site.</p>', '14-fur-bark.jpg'),
(6, '1OS', '#1 Olympia Sand', '<p>Olympia Sands is used primarily for making mortar or stucco. However, Olympia Sand #1 is screened and washed. It is highly desirable for children\'s sandboxes, playgrounds, and the sand used for volleyball courts.</p><p>Lyngso Garden Materials sell #1 Olympia Sand in one cubic foot bags.  We supply the bags and you fill them! For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your jobsite. For orders over 20 tons please call us for direct pricing.</p><p>#1 Olympia Sand may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly.</p>', '1-olympia-sand.jpg'),
(7, '2OS', '#2 Olympia Sand', '<p>Olympia Sand #2 is used for making plaster, mortar or stucco and can also be used for sandboxes.  It is a more coarse material than Olympia Sand #1, which provides it with better construction properties.</p><p>We sell both Olympia Sand #1 and Olympia Sand #2 in one cubic foot bags.  Lyngso will supply the bags and you can fill as many as you need. For larger areas, you\'ll want to purchase Olympia Sand by the ton. We can load your truck for you, or for a fee, you can use our rental truck and load the sand on your own, or have us deliver to you. For orders over 20 tons please call us for direct pricing.</p><p>#2 Olympia Sand may qualify for LEED Local/Regional Materials credit. Distances vary for each project location. Please verify the materials accordingly.</p>', '2-olympia-sand.jpg'),
(8, 'CS', 'Concrete Sand', '<p>Concrete sand, also known as top sand, is a coarse washed and screened sand. It is used as a base for setting stones, pavers, and bricks. Concrete Sand packs together well and will not wash out as easily as finer sands.</p><p>We sell the Concrete Sand in one cubic foot bag, we supply the bags and you fill them. For larger areas, you\'ll want to purchase by the ton. We can load your truck or for a fee, have us deliver to your jobsite. For orders over 20 tons please call us for direct pricing.</p>', 'concrete-sand.jpg');

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
(8, 'CS', 3, 19, 8);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
