-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 02:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electro_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `title` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `propiter` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `shipping_date` datetime NOT NULL,
  `freight` int(100) NOT NULL,
  `tax` int(100) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `discount` int(3) NOT NULL,
  `status` varchar(100) NOT NULL,
  `shipper_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `dimensions` varchar(100) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `pprice` float(10,2) NOT NULL,
  `sprice` float(10,2) NOT NULL,
  `discount` int(2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `brand_id`, `manufacturer_id`, `user_id`, `title`, `description`, `dimensions`, `weight`, `pprice`, `sprice`, `discount`, `quantity`, `created_at`) VALUES
(1, 0, 0, 0, 1, 'Apple iPad Pro 11 (2022)', 'Apple iPad Pro 11 (2022) Full Specifications\r\nName	Apple iPad Pro 11 (2022)\r\nBrand	Apple\r\nModel	iPad Pro 11 (2022), iPad Pro (11-inch, 6th Generation)\r\nPrice	135,000.00 Taka (approx)\r\nCategory	Tablet\r\nShowroom	Click Here\r\nNetwork\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nNetwork 2G\r\nGSM 850 / 900 / 1800 / 1900\r\nNetwork 3G\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nNetwork 4G\r\nLTE\r\nNetwork 5G\r\nSA/NSA/Sub6/mmWave\r\nSpeed\r\nHSPA, LTE-A, 5G\r\nGPRS\r\nYes\r\nEDGE\r\nYes\r\nLaunch\r\nLaunch Announcement\r\n2022, October\r\nLaunch Date\r\nExp. Release 2022, October\r\nBody\r\nBody Dimensions\r\n247.6 x 178.5 x 5.9 mm (9.75 x 7.03 x 0.23 in)\r\nBody Weight\r\n470 g\r\nBuild\r\nGlass Front, Aluminum Back, Aluminum Frame\r\nNetwork Sim\r\nNano-SIM, eSIM\r\nDisplay\r\nDisplay Type\r\nLiquid Retina IPS LCD, 120Hz, HDR10, Dolby Vision, 600 nits (typ)\r\nDisplay Size\r\n11.0 inches, 366.5 cm2 (~82.9% screen-to-body ratio)\r\nDisplay Resolution\r\n1668 x 2388 pixels\r\nDisplay Multitouch\r\nYes\r\nDisplay Density\r\n265 ppi\r\nDisplay Screen Protection\r\nScratch-Resistant Glass, Oleophobic Coating\r\nPlatform\r\nOperating System\r\niPadOS\r\nOS Version\r\n16\r\nChipset\r\nApple M2\r\nCPU\r\nOcta-core\r\nGPU\r\nApple GPU (10-core graphics)\r\nMemory\r\nMemory Internal\r\n128 GB, 256 GB, 512 GB, 1 TB, 2 TB\r\nMemory External\r\nNo\r\nRam\r\n8 GB, 16 GB\r\nCamera\r\nPrimary Camera\r\nDual: 12 MP, (wide), Dual Pixel PDAF\r\n10 MP, (ultrawide)\r\nTOF 3D LiDAR Scanner (depth)\r\nSecondary Camera\r\n12 MP\r\nCamera Features\r\nQuad-LED Dual-tone Flash, HDR\r\nVideo\r\n4K@24/25/30/60fps, 1080p@25/30/60/120/240fps; gyro-EIS, ProRes, Cinematic mode (4K, 1080p)\r\nSound\r\nAudio\r\nYes\r\nLoudspeaker\r\nYes with Stereo Speakers\r\n3.5mm Jack\r\nNo\r\nConnectivity\r\nWiFi\r\nWi-Fi 802.11 a/b/g/n/ac/6e, dual-band, Hotspot\r\nBluetooth\r\n5.3, A2DP, LE, EDR\r\nUSB\r\nUSB Type-C 4 (Thunderbolt 4), DisplayPort, Magnetic Connector\r\nGPS\r\nYes with A-GPS\r\nFm Radio\r\nNo\r\nFeatures\r\nSensors\r\nFace ID, accelerometer, gyro, barometer\r\nMessaging\r\nYes\r\nBattery\r\nBattery Type\r\nNon-removable Li-Po Battery (28.65 Wh)\r\nBattery Capacity\r\n7538 mAh\r\nCharging\r\nFast Charging 18W\r\nMore\r\nBody Color\r\nSilver, Space Gray', '', '', 135000.00, 0.00, 2025, 8, '2022-12-26 15:01:10'),
(2, 0, 0, 0, 2, 'Apple iPhone 14 Plus', 'Apple iPhone 14 Plus Full Specifications\r\nName	Apple iPhone 14 Plus\r\nBrand	Apple\r\nModel	iPhone 14 Plus, A2886, A2632, A2885, A2896, A2887, iphone14,8\r\nPrice	128,000.00 Taka (approx)\r\nCategory	Smartphone\r\nShowroom	Click Here\r\nNetwork\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nNetwork 2G\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nNetwork 3G\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nNetwork 4G\r\nLTE\r\nNetwork 5G\r\nSA/NSA/Sub6\r\nSpeed\r\nHSPA, LTE-A, 5G\r\nGPRS\r\nYes\r\nEDGE\r\nYes\r\nLaunch\r\nLaunch Announcement\r\n2022, September\r\nLaunch Date\r\nAvailable. Released 2022, October\r\nBody\r\nBody Dimensions\r\n160.8 x 78.1 x 7.8 mm (6.33 x 3.07 x 0.31 in)\r\nBody Weight\r\n203 g\r\nBuild\r\nGlass Front (Gorilla Glass), Glass Back (Gorilla Glass), Aluminum Frame\r\nNetwork Sim\r\nNano-SIM and/or multiple eSIMs or Dual SIM (Nano-SIM, dual stand-by) | eSIM only for USA\r\nDisplay\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak)\r\nDisplay Size\r\n6.7 inches, 109.8 cm2 (~87.4% screen-to-body ratio)\r\nDisplay Resolution\r\n1284 x 2778 pixels, 19.5:9 ratio\r\nDisplay Multitouch\r\nYes\r\nDisplay Density\r\n458 ppi\r\nDisplay Screen Protection\r\nScratch-Resistant Ceramic Glass, Oleophobic Coating\r\nPlatform\r\nOperating System\r\niOS\r\nOS Version\r\n16\r\nChipset\r\nApple A15 Bionic (5 nm)\r\nCPU\r\nHexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)\r\nGPU\r\nApple GPU (5-core graphics)\r\nMemory\r\nMemory Internal\r\n128 GB, 256 GB, 512 GB\r\nMemory External\r\nNo\r\nRam\r\n4 GB\r\nCamera\r\nPrimary Camera\r\nDual: 12 MP, (wide)\r\n12 MP, (ultrawide)\r\nSecondary Camera\r\nDual: 12 MP, (wide)\r\nSL 3D, (Depth/biometrics Sensor)\r\nCamera Features\r\nLED Flash, HDR (photo/panorama)\r\nVideo\r\n4K@24/25/30/60fps, 1080p@25/30/60/120/240fps\r\nSound\r\nAudio\r\nYes\r\nLoudspeaker\r\nYes with Stereo Speakers\r\n3.5mm Jack\r\nNo\r\nConnectivity\r\nWiFi\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, Hotspot\r\nBluetooth\r\n5.3, A2DP, LE\r\nNFC\r\nYes\r\nUSB\r\nLightning, USB 2.0\r\nGPS\r\nYes, with A-GPS\r\nFm Radio\r\nNo\r\nFeatures\r\nSensors\r\nFace ID, accelerometer, gyro, proximity, compass, barometer\r\nMessaging\r\nYes\r\nBattery\r\nBattery Type\r\nNon-removable Li-Ion Battery\r\nCharging\r\nFast Charging, 50% in 30 min (advertised)\r\nMore\r\nBody Color\r\nMidnight, Purple, Starlight, Blue, Red\r\nOther Features\r\nUltra Wideband (UWB) Support.\r\nEmergency SOS via Satellite (SMS sending/receiving).\r\nUSB Power Delivery 2.0.\r\nMagSafe Wireless Charging 15W.\r\nQi magnetic fast Wireless Charging 7.5W.', '', '', 138000.00, 0.00, 3025, 40, '2022-12-26 15:01:38'),
(3, 0, 0, 0, 2, 'clock 1', 'clock 1', '', '', 600.00, 0.00, 10, 12, '2022-12-27 12:36:54'),
(4, 0, 0, 0, 2, 'mobile', 'clock', '', '', 40000.00, 0.00, 10, 50, '2022-12-27 12:40:38'),
(5, 0, 0, 0, 2, 'LLOYD', 'air condiction', '', '', 50000.00, 0.00, 10, 5, '2022-12-27 12:50:42'),
(6, 0, 0, 0, 2, 'WRIDE', 'LAPTOP', '', '', 100000.00, 0.00, 10, 8, '2022-12-27 12:53:45'),
(7, 0, 0, 0, 2, 'poco m2 Pro Max', 'this is shahin user phone.', '', '', 22999.00, 0.00, 10, 1, '2022-12-27 14:26:16'),
(8, 0, 0, 2354, 2, 'iphone 14 promax', 'iphone', '', '', 150000.00, 0.00, 15, 8, '2022-12-27 14:27:32'),
(9, 0, 0, 0, 2, 'Samsung Galaxy A13', 'SAMSUNG GALAXY A13 - USER OPINIONS AND REVIEWS', '', '', 23.00, 0.00, 10, 20, '2022-12-27 14:32:02'),
(10, 0, 0, 0, 2, 'MackBook pro', 'jfkhgu', '', '', 219990.00, 0.00, 10, 2, '2022-12-30 11:47:33'),
(11, 0, 0, 654845, 2, 'Redmi Note8', 'Redmi', '', '', 30000.00, 0.00, 12, 5, '2022-12-30 11:47:49'),
(12, 0, 0, 5458, 2, 'Watch', 'clock', '', '', 200.00, 0.00, 5, 3, '2022-12-30 11:49:50'),
(13, 0, 0, 0, 2, 'Samsung Galaxy Z Fold3 5G', 'htjkghjmg', '', '', 195.00, 0.00, 16, 21, '2022-12-30 11:52:17'),
(14, 0, 0, 0, 2, 'apple', 'asg', '', '', 1000000.00, 0.00, 50, 1, '2022-12-30 11:54:43'),
(15, 0, 0, 0, 2, 'Smart SEL-32L22KS 32\" HD Basic LED Television', 'Resolution: HD (1360x768) Resolution\r\n2x HDMI, 1x USB, Audio Out\r\nMaterial: Plastic Fiber\r\nPicture Modes: Dynamic, Standard,Soft, User', '', '', 14500.00, 0.00, 15, 14, '2022-12-30 11:54:48'),
(16, 0, 0, 0, 2, 'laptop', 'jjyt', '', '', 50000.00, 0.00, 20, 2, '2022-12-30 11:55:30'),
(17, 0, 0, 0, 1, 'Samsung', 'ewsfa', '', '', 200000.00, 0.00, 12, 1, '2022-12-30 11:57:48'),
(18, 0, 0, 0, 2, 'Asus vivobook 15 ', 'Ryzen7. 5700u\r\nRam 8Gb,512 gb ssd', '', '', 82500.00, 0.00, 0, 1, '2022-12-30 12:56:25'),
(19, 0, 0, 0, 0, 'iPhone 14 Pro Max', 'Apple iPhone 14 Pro Max comes with a 6.7 inches LTPO Super Retina XDR OLED 1290 x 2796 pixels screen. It has a double punch-hole design. The back camera is of quad 48+12+12 Megapixel + TOF 3D LiDAR scanner with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 14 Pro Max comes with – mAh battery with – fast charging solution. It has 6 GB RAM, up to 3.46 GHz Hexa-core CPU and Apple GPU. It is powered by a 4 nm Apple A16 Bionic chipset. The device comes with 128, 256, 512 GB or 1 TB internal storage.\r\n\r\nAmong other features, there is Face ID, Apple Pay, Siri, Qi Wireless Charging, Emergency SOS via satellite etc. There is no FM Radio, 3.5mm jack and MicroSD slot in this phone. The device is IP68 certified waterproof and 5G supported.', '', '', 289999.00, 0.00, 10, 4, '0000-00-00 00:00:00'),
(20, 0, 0, 0, 0, 'Apple iPhone 14 Pro Max', 'Apple iPhone 14 Pro Max Full Specifications\r\nName	Apple iPhone 14 Pro Max\r\nBrand	Apple\r\nModel	iPhone 14 Pro Max, A2894, A2651, A2893, A2895, iphone15,3\r\nPrice	201,599.00 Taka (approx)\r\nCategory	Smartphone\r\nShowroom	Click Here\r\nNetwork\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nNetwork 2G\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (Dual-SIM)\r\nNetwork 3G\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nNetwork 4G\r\nLTE\r\nNetwork 5G\r\nSA/NSA/Sub6\r\nSpeed\r\nHSPA, LTE-A, 5G\r\nGPRS\r\nYes\r\nEDGE\r\nYes\r\nLaunch\r\nLaunch Announcement\r\n2022, September\r\nLaunch Date\r\nAvailable. Released 2022, September\r\nBody\r\nBody Dimensions\r\n160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)\r\nBody Weight\r\n240 g\r\nBuild\r\nGlass Front (Gorilla Glass), Glass Back (Gorilla Glass), Stainless Steel Frame\r\nNetwork Sim\r\nNano-SIM and/or multiple eSIMs or Dual SIM (Nano-SIM, Dual stand-by) | eSIM only for USA\r\nDisplay\r\nDisplay Type\r\nLTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM)\r\nDisplay Size\r\n6.7 inches, 110.2 cm2 (~88.3% screen-to-body ratio)\r\nDisplay Resolution\r\n1290 x 2796 pixels, 19.5:9 ratio\r\nDisplay Multitouch\r\nYes\r\nDisplay Density\r\n460 ppi\r\nDisplay Screen Protection\r\nScratch-Resistant Ceramic Glass, Oleophobic Coating\r\nPlatform\r\nOperating System\r\niOS\r\nOS Version\r\n16\r\nChipset\r\nApple A16 Bionic (4 nm)\r\nCPU\r\nHexa-core\r\nGPU\r\nApple GPU (5-core graphics)\r\nMemory\r\nMemory Internal\r\n128 GB, 256 GB, 512 GB, 1 TB\r\nMemory External\r\nNo\r\nRam\r\n6 GB\r\nCamera\r\nPrimary Camera\r\nQuad: 48 MP, (wide)\r\n12 MP, (telephoto), 3X Optical Zoom\r\n12 MP, (ultrawide)\r\nTOF 3D LiDAR Scanner (depth)\r\nSecondary Camera\r\nDual: 12 MP, (wide)\r\nSL 3D, (depth/biometrics sensor)\r\nCamera Features\r\nLED Flash (adaptive), HDR (photo/panorama)\r\nVideo\r\n4K@24/25/30/60fps, 1080p@25/30/60/120/240fps\r\nSound\r\nAudio\r\nYes\r\nLoudspeaker\r\nYes with Stereo Speakers\r\n3.5mm Jack\r\nNo\r\nConnectivity\r\nWiFi\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, Hotspot\r\nBluetooth\r\n5.3, A2DP, LE\r\nNFC\r\nYes\r\nUSB\r\nLightning, USB 2.0\r\nGPS\r\nYes, with Dual Band A-GPS\r\nFm Radio\r\nNo\r\nFeatures\r\nSensors\r\nFace ID, accelerometer, gyro, proximity, compass, barometer\r\nMessaging\r\nYes\r\nBattery\r\nBattery Type\r\nNon-removable Li-Ion Battery (16.68 Wh)\r\nBattery Capacity\r\n4323 mAh\r\nCharging\r\nFast Charging, 50% in 30 min (advertised)\r\nMore\r\nBody Color\r\nSpace Black, Silver, Gold, Deep Purple\r\nOther Features\r\nAlways-On Display.\r\nUltra Wideband (UWB) Support.\r\nEmergency SOS via Satellite (SMS sending/receiving).\r\nUSB Power Delivery 2.0.\r\nMagSafe wireless charging 15W.\r\nQi magnetic fast wireless Charging 7.5W.', '', '', 89444.00, 0.00, 4, 4, '2023-01-21 23:11:50'),
(21, 0, 0, 0, 0, 'Apple iPad (2022)', 'Apple iPad (2022) Full Specifications\r\nName	Apple iPad (2022)\r\nBrand	Apple\r\nModel	iPad (2022), iPad 10.9-inch (10th Generation)\r\nPrice	95,000.00 Taka (approx)\r\nCategory	Tablet\r\nShowroom	Click Here\r\nNetwork\r\nNetwork Type\r\nGSM / HSPA / LTE / 5G\r\nNetwork 2G\r\nGSM 850 / 900 / 1800 / 1900\r\nNetwork 3G\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nNetwork 4G\r\nLTE\r\nNetwork 5G\r\nSA/NSA/Sub6\r\nSpeed\r\nHSPA, LTE-A, 5G\r\nGPRS\r\nYes\r\nEDGE\r\nYes\r\nLaunch\r\nLaunch Announcement\r\n2022, October\r\nLaunch Date\r\nExp. Release 2022, October\r\nBody\r\nBody Dimensions\r\n248.6 x 179.5 x 7 mm (9.79 x 7.07 x 0.28 in)\r\nBody Weight\r\n481 g\r\nBuild\r\nGlass Front, Aluminum Back, Aluminum Frame\r\nNetwork Sim\r\nNano-SIM, eSIM\r\nDisplay\r\nDisplay Type\r\nLiquid Retina IPS LCD, 500 nits (typ)\r\nDisplay Size\r\n10.9 inches, 359.2 cm2 (~80.5% screen-to-body ratio)\r\nDisplay Resolution\r\n1640 x 2360 pixels\r\nDisplay Multitouch\r\nYes\r\nDisplay Density\r\n264 ppi\r\nDisplay Screen Protection\r\nScratch-Resistant Glass, Oleophobic Coating\r\nPlatform\r\nOperating System\r\niPadOS\r\nOS Version\r\n16\r\nChipset\r\nApple A14 Bionic (5 nm)\r\nCPU\r\nHexa-core (2x3.0 GHz Firestorm + 4x1.8 GHz Icestorm)\r\nGPU\r\nApple GPU (4-core Graphics)\r\nMemory\r\nMemory Internal\r\n64 GB, 128 GB, 256 GB\r\nMemory External\r\nNo\r\nCamera\r\nPrimary Camera\r\n12 MP\r\nSecondary Camera\r\n12 MP\r\nCamera Features\r\nPanorama, HDR\r\nVideo\r\n4K@24/25/30/60fps, 1080p@25/30/60/120/240fps\r\nSound\r\nAudio\r\nYes\r\nLoudspeaker\r\nYes with Stereo Speakers\r\n3.5mm Jack\r\nNo\r\nConnectivity\r\nWiFi\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, Hotspot\r\nBluetooth\r\n5.2, A2DP, EDR, LE\r\nUSB\r\nUSB Type-C 2.0, DisplayPort Magnetic Connector\r\nGPS\r\nYes with A-GPS\r\nFm Radio\r\nNo\r\nFeatures\r\nSensors\r\nFingerprint (top-mounted), accelerometer, gyro, compass, barometer\r\nMessaging\r\nYes\r\nBattery\r\nBattery Type\r\nNon-removable Li-Ion Battery (28.6 Wh)\r\nMore\r\nBody Color\r\nSilver, Blue, Pink, Yellow', '', '', 89020.00, 0.00, 200, 4, '2023-01-22 01:07:10'),
(22, 0, 0, 0, 0, 'Microsoft Surface Pro 8', 'Microsoft Surface Pro 8 Core i5 11th Gen 8GB RAM 256GB SSD 13\" MultiTouch 2-in-1 Detachable Laptop (8PQ-00028)\r\nThe Microsoft Surface Pro 8 powered by Intel Core i5-1135G7 Processor (8M Cache,2.40 GHz up to 4.20 GHz) with Intel Iris Xe Graphics, Wi-Fi options with 8GB RAM and 256GB storage, and above built on the Intel Evo platform. This Surface Pro 8 comes with a high-resolution 13â€� PixelSense touch display with up to 120Hz refresh rate is our most advanced Pro display. Touch and pen are more responsive. You can Unlock more value with chip-to-cloud security and modern management. The Surface Pro 8 helps keep you secure from anywhere with an improved Windows Hello camera, removable hard drive, and optional LTE Advanced. This Surface Pro 8 features Accelerometer, Ambient Light Sensor, Gyroscope. It comes with a Camera System of Front 5 MP Sensor, Rear 10 MP Sensor. It supports Video Recording Front 1080p, Rear UHD 4K. This is the first Surface Pro built on the Intel Evo platform. Do it all with the Intel Evo platform that provides great performance, graphics, and battery life in a thin and light PC. The latest Microsoft Surface Pro 8 has a 1-year warranty.', '', '', 135000.00, 0.00, 3025, 7, '2023-01-22 01:35:33'),
(23, 0, 0, 0, 0, 'Asus ZenBook 14 UX435EA Core i5 11th Gen 14\" FHD Laptop', 'Asus ZenBook 14 UX435EA Core i5 11th Gen 14\" FHD Laptop\r\nThe New ZenBook 14 UX435EA is powered by Intel Core i5-1135G7 Processor (8M Cache, 2.40 GHz up to 4.20 GHz) with Intel Iris Xe Graphics. The ZenBook 14 also featured with ultra-fast storage, with up to a 512GB M.2 NVMe PCIe 3.0 G3 SSD accelerated with 8GB LPDDR4X RAM. This Asus ZenBook 14 provides superb all-around performance that makes task easier. This ZenBook combines superb performance and effortless portability with timeless stylish looks. This bright and clear display has a wide, 100% sRGB color gamut to ensure vivid colors. The elegant and lightweight design makes it easy to work efficiently. The new ZenBook 14 UX435EA featured a frameless four-sided NanoEdge wide-view display, with slim bezels that create a 92% screen-to-body ratio for incredibly immersive viewing experiences. The ergonomic keyboard ensures precise feedback and comfortable typing experiences, and convenient function keys give you instant access to common tasks and features. Asus ZenBook 14 comes with a full complement of I/O ports, including full-size 1x HDMI 2.0b and 1x USB 3.2 Gen 1 Type-A. The power of Thunderbolt 4 (2x Thunderbolt 4 supports display/power delivery) is also at your disposal, with two USB-C ports. For easy data transfers from mobile devices, thereâ€™s also a MicroSD card reader.\r\n\r\nThis Asus Zenbook equipped with WiFi 6 (802.11ax) offers wireless connectivity with speeds that are up to 3x faster than WiFi 5. Here also Included ASUS WiFi Master technology, that helps to improves connectivity even further. This ZenBook UX435EA is protected by ASUS BacGuard, a new antibacterial treatment that helps to reduce the spread of harmful bacteria via contact. The new Asus ZenBook 14 UX435EA has 02 years International Limited Warranty (Terms & condition Apply As Per Asus).', '', '', 118000.00, 0.00, 2154, 8, '2023-01-22 01:37:32'),
(24, 0, 0, 0, 0, 'Apple MacBook Air 13.3-Inch', 'Apple MacBook Air 13.3-Inch 10th Gen Core i5-1.1GHz, 8GB RAM, 512GB SSD (MVH22) Space Gray 2020\r\nThe extremely thin and light MacBook Air is now stronger and better than ever. It has an eye-catching Retina display, a new and elegant keyboard, Touch ID, a processor with up to double performance, faster image processing, and double storage capacity. The sleek design of the wedge-shaped side is made of 100% recycled aluminum metal, making it the most environmentally friendly Mac ever.The 2560 x 1600 resolution brings over 4 million pixels, and the results are naturally stunning. The original color technology can automatically adjust the white point of the display to match the color temperature of your environment, so that the web pages and emails you see are as natural as printed products. Thousands of colors are displayed to make everything you see rich and vivid. The display glass extends to the edge of the fuselage, allowing you to focus on the screen content and love what you see. The MacBook Air weighs as little as 1.29 kg, but the inner performance is sufficient to complete the heavy work. The currently available Intel Core i5 1.1GHz Quad-core, Turbo Boost up to 3.5GHz processing faster performance, giving you a powerful boost, whether browsing the web, playing games, or even editing videos, also easy to handle. And equipped with up to 8GB LPDDR4X high-performance memory, even if you run multiple apps at the same time, you can still work smoothly and freely. In addition, it is equipped with 512GB fast SSD storage as standard configuration, double the previous generation, providing a large amount of space to store all your movies, music, photos, files and games. MacBook Air is now equipped with a new and elaborate keyboard that debuted on the 16-inch MacBook Pro. It adopts the scissor structure of excellence, and the 1mm keystroke brings you a sensitive, comfortable and quiet typing experience. The arrow keys arranged in an inverted T shape help you easily control, coding line by line, one by one spreadsheet, and even come and go in various game environments. Coupled with a backlit key with ambient light sensor, you can also type easily in dim environments. No matter where you press the touchpad, it can be precisely controlled and the response is consistent; it also provides more space, using two-finger opening and closing to zoom in and out and other multi-touch gestures, more handy. The advanced security and convenience brought by Touch ID has been built into the MacBook Air. Just place your finger on the Touch ID sensor to unlock your Mac. It â€™s that simple. Using your fingerprint, you can unlock locked files, memos, and system settings without entering a password. Online shopping is also easier than ever. Select Apple Pay at checkout and pay with one touch. MacBook Air is equipped with the Apple T2 security chip, which is the second-generation special Mac chip designed by Apple, which further enhances the security of MacBook Air. Therefore, when you use Touch ID to unlock your Mac, authenticate documents, or pay at online merchants for shopping, your information will remain safe and private. With the real-time data encryption function, all data you store on the SSD will be fully encrypted automatically. In addition, the T2 security chip also brings a familiar sound to the MacBook Air. Just say \"Hello Siri\", Siri will be ready to open apps, find files, play music or answer your questions for you.MacBook Air uses the latest audio processing and tuning technology to present a more pleasant tone. Stereo speakers bring double bass and the volume is increased by as much as 25% 3. Wider stereo, so you can feel the shocking sound when listening to music or watching movies. The FaceTime lens allows one or more relatives and friends to meet you in high definition. Three microphones form an array, which can capture your voice more accurately when you are calling FaceTime, dictating or talking with Siri. Thunderbolt 3 combines ultra-high bandwidth and the extremely diverse USB-C industry standard to become an enhanced universal port. The MacBook Air has two Thunderbolt 3 ports. It integrates data transmission, charging and video output with a single interface, and the bandwidth is twice that of Thunderbolt 2, bringing data traffic as fast as 40Gb / s.\r\n\r\nThis exclusive Apple Macbook Air (MVH22) 2020 comes with no warranty', '', '', 124235.00, 0.00, 3654, 5, '2023-01-22 01:40:56'),
(25, 0, 0, 0, 0, 'Apple MacBook Air', 'Apple MacBook Air 13.3-Inch 10th Gen Core i5-1.1GHz, 8GB RAM, 512GB SSD (MVH22) Space Gray 2020\r\nThe extremely thin and light MacBook Air is now stronger and better than ever. It has an eye-catching Retina display, a new and elegant keyboard, Touch ID, a processor with up to double performance, faster image processing, and double storage capacity. The sleek design of the wedge-shaped side is made of 100% recycled aluminum metal, making it the most environmentally friendly Mac ever.The 2560 x 1600 resolution brings over 4 million pixels, and the results are naturally stunning. The original color technology can automatically adjust the white point of the display to match the color temperature of your environment, so that the web pages and emails you see are as natural as printed products. Thousands of colors are displayed to make everything you see rich and vivid. The display glass extends to the edge of the fuselage, allowing you to focus on the screen content and love what you see. The MacBook Air weighs as little as 1.29 kg, but the inner performance is sufficient to complete the heavy work. The currently available Intel Core i5 1.1GHz Quad-core, Turbo Boost up to 3.5GHz processing faster performance, giving you a powerful boost, whether browsing the web, playing games, or even editing videos, also easy to handle. And equipped with up to 8GB LPDDR4X high-performance memory, even if you run multiple apps at the same time, you can still work smoothly and freely. In addition, it is equipped with 512GB fast SSD storage as standard configuration, double the previous generation, providing a large amount of space to store all your movies, music, photos, files and games. MacBook Air is now equipped with a new and elaborate keyboard that debuted on the 16-inch MacBook Pro. It adopts the scissor structure of excellence, and the 1mm keystroke brings you a sensitive, comfortable and quiet typing experience. The arrow keys arranged in an inverted T shape help you easily control, coding line by line, one by one spreadsheet, and even come and go in various game environments. Coupled with a backlit key with ambient light sensor, you can also type easily in dim environments. No matter where you press the touchpad, it can be precisely controlled and the response is consistent; it also provides more space, using two-finger opening and closing to zoom in and out and other multi-touch gestures, more handy. The advanced security and convenience brought by Touch ID has been built into the MacBook Air. Just place your finger on the Touch ID sensor to unlock your Mac. It â€™s that simple. Using your fingerprint, you can unlock locked files, memos, and system settings without entering a password. Online shopping is also easier than ever. Select Apple Pay at checkout and pay with one touch. MacBook Air is equipped with the Apple T2 security chip, which is the second-generation special Mac chip designed by Apple, which further enhances the security of MacBook Air. Therefore, when you use Touch ID to unlock your Mac, authenticate documents, or pay at online merchants for shopping, your information will remain safe and private. With the real-time data encryption function, all data you store on the SSD will be fully encrypted automatically. In addition, the T2 security chip also brings a familiar sound to the MacBook Air. Just say \"Hello Siri\", Siri will be ready to open apps, find files, play music or answer your questions for you.MacBook Air uses the latest audio processing and tuning technology to present a more pleasant tone. Stereo speakers bring double bass and the volume is increased by as much as 25% 3. Wider stereo, so you can feel the shocking sound when listening to music or watching movies. The FaceTime lens allows one or more relatives and friends to meet you in high definition. Three microphones form an array, which can capture your voice more accurately when you are calling FaceTime, dictating or talking with Siri. Thunderbolt 3 combines ultra-high bandwidth and the extremely diverse USB-C industry standard to become an enhanced universal port. The MacBook Air has two Thunderbolt 3 ports. It integrates data transmission, charging and video output with a single interface, and the bandwidth is twice that of Thunderbolt 2, bringing data traffic as fast as 40Gb / s.\r\n\r\nThis exclusive Apple Macbook Air (MVH22) 2020 comes with no warranty', '', '', 116200.00, 0.00, 3456, 12, '2023-01-22 01:45:24'),
(26, 1, 1, 0, 1, 'Apple MacBook Air (2022) Apple M2', 'Laptop Brand - Apple, Laptop Series - MacBook Air, Laptop Model - Apple MacBook Air (2022), Processor Brand - Apple, Processor Type - Apple M2 Chip, Processor Model - Apple M2 Chip, Processor Core - 8, Display Size - 13.6 Inch, Display Technology - Retina Display, Display Resolution - 2560 x 1664, Display Surface - Glossy, Touch Display - No, Display Features - Brightness: 500 cd/m2, Secondary Screen Size - N/A, Secondary Screen Technology - N/A, Secondary Screen Resolution - N/A, Memory (RAM) - 8GB, Installed Memory Details - 1 x 8GB, Storage - 256GB SSD, Installed SSD Type - NVMe PCIe, Optical Drive - No-ODD, Multimedia Card Slot - None, Supported Multimedia Card - N/A, Graphics Chipset - 8-Core GPU, Graphics Memory Accessibility - Integrated, Graphics Memory - Shared, Graphics Memory Type - N/A, LAN - No, WiFi - Wi-Fi 6 (802.11ax), Bluetooth - Bluetooth 5.0, USB 2 Port - No, USB 3 Port - No, USB C / Thunderbolt Port - 2 x Thunderbolt 3 / USB4 (Supports DisplayPort), HDMI Port - No, Micro HDMI Port - No, Mini HDMI Port - No, DP Port - No, Mini DP Port - No, D-SUB / VGA Port - No, Headphone Port - Combo, Microphone Port - Combo, Audio Properties - 4 Speakers, Speaker - Yes, Microphone - Yes, WebCam - FHD WebCam, Keyboard Layout - Notebook Keyboard, Keyboard Back-lit - Yes, Pointing Device - Force Touch Trackpad, Finger Print Sensor - Yes, Battery Capacity - 52.6 Wh, Battery Type - Lithium-Ion Polymer (LiPo), Battery Backup (Approximate) - Up to 18 Hours, Power Adapter - 30W, Adapter Type - 30W with Magsafe, Operating System - MacOS, Pre-loaded Application - App Store, Books, Calendar, Contacts, FaceTime, Find My, GarageBand, Home, iMovie, Keynote, Mail, Maps, Messages, Music, News, Notes, Numbers, Pages, Photo Booth, Photos, Podcasts, Preview, QuickTime Player, Reminders, Safari, Shortcuts, Siri, Stocks, Time Machine, TV, Voice Memos, Color - Space Gray, Dimension (W x D x H) - 304 x 214.9 x 11.2mm, Weight - 1.24 kg, Best For - Create presentations, and enjoy music, books, movies, and more, Special Feature - The MacBook Air now features the quick-release MagSafe power connector. MagSafe can easily attach and detach with magnets, preventing any unintentional disconnects., Warranty - 1 Year International, Warranty Claim Duration (Approximate) - Estimated Warranty Claim Duration 40 Days. It may take additional time up to 90 days, Part Number - MLXW3LL/A / MLXW3ZP/A, Country of Origin - USA, Disclaimer - Mentioned Battery Backup information is collected from manufacturer. As per manufacturer the backup time may very for different use case, settings, applications and some other factors.', ' 304.1 x 212.4 x 4.1-16.1mm', ' 1.24 kg', 143000.00, 0.00, 2000, 5, '2023-02-02 18:58:04'),
(27, 0, 0, 0, 0, 'A', 'BBB', '', '', 123.00, 0.00, 0, 0, '2023-04-16 16:00:41'),
(28, 0, 0, 0, 0, 'A', 'BBB', '', '', 123.00, 0.00, 0, 0, '2023-04-16 16:01:06'),
(29, 0, 0, 0, 0, 'test option', 'some description', '', '', 777.00, 0.00, 0, 0, '2023-04-16 16:01:48'),
(30, 0, 0, 0, 0, 'tt', 'tt', '', '', 123.00, 0.00, 0, 0, '2023-04-16 16:03:12'),
(31, 0, 0, 0, 0, 'dd', 'dd', '', '', 123.00, 0.00, 0, 0, '2023-04-16 16:06:38'),
(32, 0, 0, 0, 0, 'qq', 'qq', '', '', 111.00, 0.00, 0, 0, '2023-04-16 16:07:54'),
(33, 0, 0, 0, 0, 'SS', 'SS', '', '', 11112222.00, 0.00, 0, 0, '2023-04-16 16:11:00'),
(34, 0, 0, 0, 0, 'ee', 'ee', '', '', 33.00, 0.00, 0, 0, '2023-04-16 16:13:04'),
(35, 0, 0, 0, 0, 'hhhh', 'hhh', '', '', 666.00, 0.00, 0, 0, '2023-04-16 16:13:58'),
(36, 0, 0, 0, 0, 'final product', 'some final product desc', '', '', 999.00, 0.00, 0, 0, '2023-04-17 14:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `recommend` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` set('1','2','3','4','5') NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `create_at`) VALUES
(1, 'Mostak', 'mostak@gmail.com', 'Mostak', '2', '2023-02-04 15:55:20'),
(2, 'Sohan', 'sohan@gmail.com', '$2y$10$gtrAA1FHEus0RQHAATIbouPwYggcAVqZFeqKKqnn2XKQgUfMBTpaq', '', '2023-02-04 16:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `baddress1` varchar(50) NOT NULL,
  `baddress2` varchar(128) NOT NULL,
  `bdivision` varchar(30) NOT NULL,
  `bdistrict` varchar(30) NOT NULL,
  `barea` varchar(30) NOT NULL,
  `bzip` varchar(10) NOT NULL,
  `bphoneno` varchar(20) NOT NULL,
  `saddress1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
