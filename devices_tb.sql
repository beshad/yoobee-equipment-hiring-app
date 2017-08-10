-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 10, 2016 at 09:10 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `devicebooking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices_tb`
--

CREATE TABLE `devices_tb` (
  `device_id` int(11) NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices_tb`
--

INSERT INTO `devices_tb` (`device_id`, `device_name`, `description`, `category_id`, `image_url`) VALUES
(1, 'Nikon Coolpix S97000', 'The Nikon Coolpix S9700 camera packs a 30x zoom lens into a compact body with Wi-Fi. And its images, even at high ISOs, are impressive.', 2, '12441-3.png'),
(2, 'Sony Cyber-shot DSC-RX10', 'The Sony Cyber-shot DSC-RX10 is a bridge-style, long-zoom camera that gets just about everything right, and its steep asking price reflects its impeccable quality.', 2, 'ba940-1.png'),
(3, 'Nikon Coolpix S9700', 'The Nikon Coolpix S9700 camera packs a 30x zoom lens into a compact body with Wi-Fi. And its images, even at high ISOs, are impressive.', 5, '810d2-8.png'),
(4, 'Sony Cyber-shot DSC-RX10', 'The Sony Cyber-shot DSC-RX10 is a bridge-style, long-zoom camera that gets just about everything right, and its steep asking price reflects its impeccable quality.', 2, 'a6f1d-9.png'),
(5, 'Sony Alpha 6000', 'The Sony Alpha 6000 focuses instantly and shoots at 11.1fps. Its image quality matches its speed, making it our top pick for entry-level mirrorless cameras.', 4, '773be-2.png'),
(6, 'Olympus OM-D E-M1', 'With gorgeous images—even in low light, incredible speed, and a wealth of high-end features, the Olympus OM-D E-M1 is the best Micro Four Thirds camera that money can buy.', 5, 'd9603-7.png'),
(7, 'Sony Alpha 6000', 'The Sony Alpha 6000 focuses instantly and shoots at 11.1fps. Its image quality matches its speed, making it our top pick for entry-level mirrorless cameras.', 1, '9b0a4-10.png'),
(8, 'Olympus OM-D E-M1', 'With gorgeous images—even in low light, incredible speed, and a wealth of high-end features, the Olympus OM-D E-M1 is the best Micro Four Thirds camera that money can buy.', 3, '56b85-5.png'),
(9, 'Nikon D5300', 'The Wi-Fi- and GPS-equipped Nikon D5300 D-SLR is a modest upgrade from the previous model, but it''s just as worthy', 1, 'de009-6.png'),
(10, 'Pentax K-3', 'The Pentax K-3 is the most refined K-mount SLR to date, offering fast autofocus and superb image quality. Its video autofocus implementation isn''t the best, but it still manages to snag our Editors'' Choice award.', 4, '44b38-1.png'),
(11, 'Canon EOS 6D', 'The Canon EOS 6D is a top-notch full-frame camera in a compact body. With a relatively affordable price, enthusiast-friendly features, and spectacular image quality, it''s an easy Editors'' Choice.', 4, 'c52c2-8.png'),
(12, 'Canon PowerShot Elph 330 HS ', 'One of the best cameras you can buy for less than $250, the svelte, 10x-zoom Canon PowerShot Elph 330 HS takes beautiful pictures and lets you send them instantaneously with integrated Wi-Fi.', 1, '704b6-3.png'),
(13, 'Sony Cyber-shot DSC-RX100 II', 'The Sony Cyber-shot DSC-RX100 II packs a huge 1-inch image sensor into a point-and-shoot body, delivering close-to-SLR-quality images from a camera you can fit in your back pocket.', 2, '1dcc9-10.png'),
(14, 'Olympus Tough TG-2 iHS', 'The Olympus Tough TG-2 iHS rugged camera is a very minor upgrade to the excellent TG-1. ', 1, '24126-9.png'),
(15, 'Samsung Galaxy S7 Edge', 'The gorgeous Galaxy S7 Edge makes the best Android phone that much better.', 2, '67c0d-10.png'),
(16, 'Apple iPhone 6s Plus', 'The iPhone 6S Plus has a few key advantages that give it an edge for serious iPhone users, but its big body still may not fit for a lot of people.', 5, '99063-5.png'),
(17, 'Samsung Galaxy Note 5', 'Samsung''s Galaxy Note 5 is excellent overall, and the only phone to buy if you want to write by hand. However, you''ll pay a huge premium for a modest upgrade from last year''s model, and less pricey competitors will satisfy many.', 2, 'd75e1-9.png'),
(18, 'LG V10', 'Packed to the brim with features, the V10 is LG''s best smartphone yet. But if you don''t need two front cameras and dual displays, look elsewhere for something less expensive.', 4, '109b2-3.png'),
(19, 'Nikon D5300', 'The Wi-Fi- and GPS-equipped Nikon D5300 D-SLR is a modest upgrade from the previous model, but it''s just as worthy', 3, '29242-10.png'),
(20, 'Pentax K-3', 'The Pentax K-3 is the most refined K-mount SLR to date, offering fast autofocus and superb image quality. Its video autofocus implementation isn''t the best, but it still manages to snag our Editors'' Choice award.', 4, '34a20-1.png'),
(21, 'Canon EOS 6D', 'The Canon EOS 6D is a top-notch full-frame camera in a compact body. With a relatively affordable price, enthusiast-friendly features, and spectacular image quality, it''s an easy Editors'' Choice.', 5, '6f1bb-6.png'),
(22, 'Canon PowerShot Elph 330 HS ', 'One of the best cameras you can buy for less than $250, the svelte, 10x-zoom Canon PowerShot Elph 330 HS takes beautiful pictures and lets you send them instantaneously with integrated Wi-Fi.', 1, '7d78f-7.png'),
(23, 'Sony Cyber-shot DSC-RX100 II', 'The Sony Cyber-shot DSC-RX100 II packs a huge 1-inch image sensor into a point-and-shoot body, delivering close-to-SLR-quality images from a camera you can fit in your back pocket.', 2, '58f3f-10.png'),
(24, 'Olympus Tough TG-2 iHS', 'The Olympus Tough TG-2 iHS rugged camera is a very minor upgrade to the excellent TG-1. ', 3, '4dfb0-9.png'),
(25, 'Samsung Galaxy S7 Edge', 'The gorgeous Galaxy S7 Edge makes the best Android phone that much better.', 4, 'e6ef5-3.png'),
(26, 'Apple iPhone 6s Plus', 'The iPhone 6S Plus has a few key advantages that give it an edge for serious iPhone users, but its big body still may not fit for a lot of people.', 5, '518ea-4.png'),
(27, 'Samsung Galaxy Note 5', 'Samsung''s Galaxy Note 5 is excellent overall, and the only phone to buy if you want to write by hand. However, you''ll pay a huge premium for a modest upgrade from last year''s model, and less pricey competitors will satisfy many.', 3, '0a936-10.png'),
(28, 'LG V10', 'Packed to the brim with features, the V10 is LG''s best smartphone yet. But if you don''t need two front cameras and dual displays, look elsewhere for something less expensive.', 4, '8bd1d-6.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices_tb`
--
ALTER TABLE `devices_tb`
  ADD PRIMARY KEY (`device_id`),
  ADD UNIQUE KEY `device_id` (`device_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices_tb`
--
ALTER TABLE `devices_tb`
  MODIFY `device_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;