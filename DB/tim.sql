-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2016 at 12:08 AM
-- Server version: 10.0.25-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 5.6.17-3ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim`
--

-- --------------------------------------------------------

--
-- Table structure for table `assist`
--

CREATE TABLE `assist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(1) NOT NULL,
  `highlight` int(1) NOT NULL,
  `description` text NOT NULL,
  `faq` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assist`
--

INSERT INTO `assist` (`id`, `name`, `category`, `highlight`, `description`, `faq`) VALUES
(1, 'TIMgames', 4, 1, '<p>\r\n			TIMgames is TIM edicato gaming service allowing all customers to download on tablet and smartphone with the best games on demand and subscription to the mobile world.<br />\r\n			<br />\r\n			With TIMgames&#39;ll have a library of over 1,500 games, updated every week with new titles and games on offer in the area of ​​the store promotions.<br />\r\n			<br />\r\n			TIMgames &egrave;accessibile both App (available for download from Google Play) that browsers on www.timgames.i t The user can choose the preferred purchase mode between on-demand and subscription.<br />\r\n			<br />\r\n			In particular:<br />\r\n			<br />\r\n			On demand: from &euro; 0.49, buying and downloading a game on their mobile phones;<br />\r\n			<br />\r\n			Subscription: I Love Games Promo, only 2 &euro; a week you can download unlimited all games on TIMgames. The first month is promoting only 1 &euro; per week.</p>\r\n', '<p>\r\n			What are the characteristics of TIMgames?<br />\r\n			<br />\r\n			TIM is an offer that gives you a GPS Tracker with included 12 months TIMTag service. The TIMTag option promo, includes traffic data that is SMSs from the GPS Tracker to the service platform (max 50MB and 100SMS every 30 days) and use the App TIMTag. The Bundle data and SMS provided is calibrated to meet the needs of continuous use of the device.<br />\r\n			The cost of GPS Tracker, TIM Card and the service for the first 12 months is only 129 &euro;! The package contains:<br />\r\n			<br />\r\n			&nbsp;&nbsp;&nbsp; GPS tracker<br />\r\n			&nbsp;&nbsp;&nbsp; 12 months &quot;pre-activated&quot; service included on TIMcard<br />\r\n			&nbsp;&nbsp;&nbsp; 1 TIM Card</p>');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(1) NOT NULL,
  `price` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `features` text NOT NULL,
  `tech` text NOT NULL,
  `promo` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `name`, `category`, `price`, `picture`, `features`, `tech`, `promo`) VALUES
(1, 'LG G5', 1, '699.90', 'lg-g5-titan.png', '<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<span style="color: rgb(0, 73, 144); font-family: inherit; font-size: 15px; line-height: 1.1;">Features:</span></p>\r\n		<div itemprop="description" style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 20px; background-color: rgb(255, 255, 255);">\r\n			<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;">\r\n				<li style="box-sizing: border-box;">\r\n					<font style="box-sizing: border-box;">Operating System Android 5.1</font></li>\r\n				<li style="box-sizing: border-box;">\r\n					<font style="box-sizing: border-box;">Display 5.2 &quot;16 million color touch</font></li>\r\n				<li style="box-sizing: border-box;">\r\n					<font style="box-sizing: border-box;">Processor QuadCore 1.2 GHz</font></li>\r\n			</ul>\r\n		</div>', '<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Technology</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">4G / HSDPA42 / UMTS / EDGE / GPRS Frequencies 850/900/1800/1900/2100</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">connectivity</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Wi-Fi - Bluetooth - Micro USB - NFC</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">GPS</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Integrated GPS receiver</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Display</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Display 5.2 &quot;16 million color touch</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">camera</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">13 Mpixel camera / Flash</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Storage</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">16GB internal memory - Memory Card Slot Micro SD up to 128GB</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Processor</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Processor QuadCore 1.2 GHz</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">SIM format</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Micro SIM</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Video</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Video Recorder &amp; Playback</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Music</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">MP3 Player - FM radio</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Supplied</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">Charger - Data Cable - Headset - Quick Use Guide</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">dimensions</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">145,8x72,3x8,1 mm</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Weight</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">158 gr</font></p>\r\n		</div>\r\n		<p>\r\n			&nbsp;</p>\r\n		<div class="col-sm-3" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 237px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<strong style="box-sizing: border-box;">Notes</strong></p>\r\n		</div>\r\n		<div class="col-sm-9" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 5px; padding-left: 5px; float: left; width: 711px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(255, 255, 255);">\r\n			<p style="box-sizing: border-box; margin: 5px 0px; color: rgb(78, 78, 78);">\r\n				<font style="box-sizing: border-box;">* Battery performance depends on many factors including proximity of the antennas, battery status, geographic location and the type of network used.</font></p>\r\n			<div>\r\n				&nbsp;</div>\r\n		</div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `device_assist`
--

CREATE TABLE `device_assist` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `assist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_assist`
--

INSERT INTO `device_assist` (`id`, `device_id`, `assist_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `device_sl`
--

CREATE TABLE `device_sl` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `sl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_sl`
--

INSERT INTO `device_sl` (`id`, `device_id`, `sl_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`, `body`) VALUES
(1, 'innovation', 'The new symbol of the company renews its identity and confirms TIM’s leading position in the telecommunications sector in this digital age, was today presented in Rome\r\nTim Berners-Lee, Fabio Fazio and Pif, are featured in testimonials that are part of the institutional advertising campaign for the launch of the new logo\r\nThe TIM Towers restructuring project, which in Rome will host the company’s central offices, was also presented'),
(2, 'testimonials', '<p>\r\n			<span style="font-family:arial,helvetica,sans-serif;">&nbsp;<span style="color: rgb(51, 51, 51); font-size: 17px; line-height: 28px; text-indent: -5.1px; background-color: rgb(255, 255, 255);">&ldquo;We have been very impressed by David&rsquo;s ability to literally read our minds and deliver a corporate identity that perfectly symbolizes our vision and conveys the stylish, elegant and modern image we needed to sustain the international development of our company.&rdquo;</span></span></p>\r\n		<br style="color: rgb(51, 51, 51); font-family: GalanoGrotesque-Regular, Helvetica, sans-serif; font-size: 17px; line-height: 28px; text-indent: -5.1px; background-color: rgb(255, 255, 255);" />\r\n		<p>\r\n			<span style="font-family:arial,helvetica,sans-serif;"><big><span class="source" style="border: 0px none; font-size: 16px; margin: 8px 0px 0px; outline: none 0px; padding: 0px 0px 0px 20px; vertical-align: baseline; display: block; text-transform: lowercase; text-indent: 0em; color: rgb(51, 51, 51); line-height: 28px; background-color: rgb(255, 255, 255);">&mdash; david sadigh, founder, dlg</span></big><br />\r\n			<span style="color: rgb(51, 51, 51); font-size: 17px; line-height: 28px; text-indent: -5.1px; background-color: rgb(255, 255, 255);">&ldquo;We were looking for a logo with a touch of modernism. David grasped our needs and produced a stunning design. When feedback was needed, new versions of the logo or any modifications were made very quickly. We really appreciated David&rsquo;s flexibility and efficiency. It&rsquo;s great to work with someone so open-minded and responsive. Thank you!&rdquo;</span><br style="color: rgb(51, 51, 51); font-family: GalanoGrotesque-Regular, Helvetica, sans-serif; font-size: 17px; line-height: 28px; text-indent: -5.1px; background-color: rgb(255, 255, 255);" />\r\n			<span class="source" style="border: 0px; font-size: 16px; margin: 8px 0px 0px; outline: 0px; padding: 0px 0px 0px 20px; vertical-align: baseline; display: block; text-transform: lowercase; text-indent: 0em; color: rgb(51, 51, 51); line-height: 28px; background-color: rgb(255, 255, 255);">&mdash; cyrille ehrhart, henri ehrhart</span><br />\r\n			<br />\r\n			<span style="color: rgb(51, 51, 51); font-size: 17px; line-height: 28px; text-indent: -5.1px; background-color: rgb(255, 255, 255);">&ldquo;Awesome to work with. Incredibly organized, easy to communicate with, responsive with next iterations, and beautiful work.&rdquo;</span></span></p>\r\n		<p>\r\n			<span class="source" style="border: 0px; font-family: GalanoGrotesque-Regular, Helvetica, sans-serif; font-size: 16px; margin: 8px 0px 0px; outline: 0px; padding: 0px 0px 0px 20px; vertical-align: baseline; display: block; text-transform: lowercase; text-indent: 0em; color: rgb(51, 51, 51); line-height: 28px; background-color: rgb(255, 255, 255);"><span style="font-family:arial,helvetica,sans-serif;">&mdash; stuart levinson, co-founder, talkto</span></span></p>'),
(3, 'projects', '<h3 style="font-weight: 400; margin: 0px 0px 5px; font-size: 14px; padding-bottom: 5px; padding-top: 5px; width: 300px; font-family: arial, sans-serif !important;">\r\n			<span class="blu-tit" style="text-decoration: none; outline: none 0px; color: rgb(0, 70, 145) !important; font-family: &quot;TIM Sans&quot;, sans-serif; font-size: 16px; line-height: 15.6px; font-weight: 900; margin: 0px 0px 10px; text-transform: uppercase; background-color: rgb(255, 255, 255);">PROMOTE THE INTEGRATION OF FOREIGN CITIZENS THROUGH THE USE OF TECHNOLOGY PLATFORMS</span></h3>\r\n		<h5 style="font-size: 11px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;TIM Sans&quot;, sans-serif; line-height: 15.6px; background-color: rgb(255, 255, 255);">\r\n			Social</h5>\r\n		<div class="date" style="position: absolute; right: 0px; top: 20px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 15.6px; background-color: rgb(255, 255, 255);">\r\n			&nbsp;</div>\r\n		<p class="rtejustify" style="text-decoration: none; outline: none 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 1.2em; margin: 0px 0px 5px; text-align: justify; height: 47px; overflow: hidden; background-color: rgb(255, 255, 255);">\r\n			<samp><span style="color:#000000;"><span style="font-size:12px;">Dedicated to municipalities with over 50,000 inhabitants (at least 9% of foreigners) with innovative projects to remove the communication barriers that make it difficult to obtain information useful for everyday life</span></span></samp></p>\r\n		<div>\r\n			<h3 style="font-weight: 400; margin: 0px 0px 5px; font-size: 14px; padding-bottom: 5px; padding-top: 5px; width: 300px; font-family: arial, sans-serif !important;">\r\n				<span class="blu-tit" style="text-decoration: none; outline: none 0px; color: rgb(0, 70, 145) !important; font-family: &quot;TIM Sans&quot;, sans-serif; font-size: 16px; line-height: 15.6px; font-weight: 900; margin: 0px 0px 10px; text-transform: uppercase; background-color: rgb(255, 255, 255);">INVISIBLE ASSETS.&nbsp;PLACES AND MASTERY OF CRAFT TRADITIONS</span></h3>\r\n			<h5 style="font-size: 11px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;TIM Sans&quot;, sans-serif; line-height: 15.6px; background-color: rgb(255, 255, 255);">\r\n				historical and artistic heritage</h5>\r\n			<div class="date" style="position: absolute; right: 0px; top: 20px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 15.6px; background-color: rgb(255, 255, 255);">\r\n				&nbsp;</div>\r\n			<p class="rtejustify" style="margin: 0px 0px 5px; text-align: justify; line-height: 1.2em; color: rgb(102, 102, 102); height: 47px; overflow: hidden;">\r\n				<samp><span style="color:#000000;"><span style="font-size:12px;">Dedicated to projects that adopt business models geared to the recovery of &quot;invisible places&quot;, the tradition and the preservation of the &quot;mastery&quot; of Italian craftsmanship</span></span></samp></p>\r\n		</div>'),
(4, 'group', '<h3 style="font-weight: 400; margin: 0px 0px 5px; font-size: 14px; padding-bottom: 5px; padding-top: 5px; font-family: arial, sans-serif !important;">\r\n			<small><font size="3"><small><span style="font-family: Arial;">We develop new generation infrastructures with the goal of ensuring that around 84% of Italian houses have coverage via the new fixed ultra-broadband network and 98% of the population via&nbsp; the new mobile network by the end of 2018. As we believe digital technologies are the basis for a smart, sustainable and inclusive growth. By the end of March 2016, with a total of 11 million km of installed fiber, the fixed network has already reached 45% of the houses and 1,100 municipalities; the mobile network reached 92% of the population and 6,200 municipalities.<br />\r\n			<br />\r\n			To simplify the daily life there are new solutions: electronic payment systems, smart homes, electronic medical records and certified electronic mail in the healthcare and government sectors, for the schools&nbsp; interactive multimedia whiteboards and web-based learning environments. For businesses, advanced platforms for cloud computing for the virtualization of applications and infrastructures, a vast selection of applications for storing and managing data or controlling energy consumption, products and software to enhance the use of digital signatures.<br />\r\n			<br />\r\n			For everyone, digital technology means to be always connected and access services and digital&nbsp; content - games, e-books, music and films, all constantly enriched with premium contents - with ease and safety; all of this seamlessly on smartphones, tablets or other devices. &nbsp;<br />\r\n			<br />\r\n			Through the TIM Foundation we promote a vision of innovation and technology as social enablers, supporting projects in the fields of&nbsp; digital education and cultural innovation. As a result of the company&rsquo;s social and environmental commitment, we have been included among the most important and selective stock market Sustainability indexes worldwide, for the last eleven years.</span></small></font></small></h3>\r\n'),
(5, 'news', '<p>\n			<span style="font-family: Arial;">INWIT Press Release<br />\n			<br />\n			06/23/2016 - 07:25 PM<br />\n			INWIT: financial calendar amended - Board of Directors&rsquo; meeting to approve the half-yearly report brought forward to 25th July<br />\n			<br />\n			TI CORPORATE Press Release<br />\n			<br />\n			06/20/2016 - 10:08 PM<br />\n			Telecom Italia Group: Giorgio Valerio appointed Director of the Nomination and Remuneration Committee<br />\n			<br />\n			TI CORPORATE Press Release<br />\n			<br />\n			06/17/2016 - 07:54 AM<br />\n			Telecom Italia: Financial Calendar Updated - BoD to approve 1H16 results anticipated to 26 July<br />\n			<br />\n			TI CORPORATE Press Release<br />\n			<br />\n			06/16/2016 - 02:35 PM<br />\n			Special Shareholders&#39; meeting held: Dario Trevisan confirmed as Common Representative for Savings Share Shareholders</span></p>'),
(6, 'business', '<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">Our strategic markets are Italy and Brasil. Operations are conducted by dedicate Business Units:&nbsp; the<strong style="box-sizing: inherit !important;">Domestic Business Unit&nbsp;</strong>-&nbsp; it includes fixed and mobile voce and data services for retail customers and wholesale operators, as well as&nbsp; international wholesale services (Telecom Italia Sparkle ) and IT solutions (Olivetti) -&nbsp; and the<strong style="box-sizing: inherit !important;">&nbsp;Brazil Busines Unit</strong>&nbsp;(TIM Brasil). &nbsp; &nbsp; &nbsp;</span></font></p>\r\n		<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">Our organisation, in line with the evolution of the sector business models and market and technological trends, is shifting towards a&nbsp;<strong style="box-sizing: inherit !important;">&ldquo;Digital Telco &amp; Platform Company&rdquo;</strong>&nbsp;model based on innovative infrastructure and an excellent&nbsp; customer service,increasingly aimed at disseminating premium services and digital content within a customisable platform, accessible anywhere and on any device.</span></font></p>\r\n		<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">Commercial management of the retail customers - namely private (individual consumers and families) and business customers - is based on these organizational drivers:</span></font></p>\r\n		<ul style="margin: 0.8125em 0px; padding: 0px 0px 0px 2.5em; font-size: 0.8125em; line-height: 1.25; text-align: justify; overflow: hidden; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<li style="box-sizing: inherit !important; list-style: none; margin-left: -1em; padding-left: 1em; background-image: url(&quot;/etc/designs/ti-rwd/cmn/v4/img/layout/article-list-dot-red.png&quot;); background-position: left 0.4375em; background-repeat: no-repeat;">\r\n				<font size="3"><span style="font-family: Arial;">guaranteeing the end-to-end accountability of the marketing, sales and post-sales processes for each customer segment,</span></font></li>\r\n			<li style="box-sizing: inherit !important; list-style: none; margin-left: -1em; padding-left: 1em; background-image: url(&quot;/etc/designs/ti-rwd/cmn/v4/img/layout/article-list-dot-red.png&quot;); background-position: left 0.4375em; background-repeat: no-repeat;">\r\n				<font size="3"><span style="font-family: Arial;">encouraging the development of integrated &ldquo;customer centric&rdquo; offers and the focus on digital market services</span></font></li>\r\n			<li style="box-sizing: inherit !important; list-style: none; margin-left: -1em; padding-left: 1em; background-image: url(&quot;/etc/designs/ti-rwd/cmn/v4/img/layout/article-list-dot-red.png&quot;); background-position: left 0.4375em; background-repeat: no-repeat;">\r\n				<font size="3"><span style="font-family: Arial;">creating synergies between commercial channels to increase the efficiency and effectiveness of the multichannel model</span></font></li>\r\n			<li style="box-sizing: inherit !important; list-style: none; margin-left: -1em; padding-left: 1em; background-image: url(&quot;/etc/designs/ti-rwd/cmn/v4/img/layout/article-list-dot-red.png&quot;); background-position: left 0.4375em; background-repeat: no-repeat;">\r\n				<font size="3"><span style="font-family: Arial;">encouraging the development of &ldquo;platform based&rdquo; services expanding TIM&#39;s offer portfolio</span></font></li>\r\n			<li style="box-sizing: inherit !important; list-style: none; margin-left: -1em; padding-left: 1em; background-image: url(&quot;/etc/designs/ti-rwd/cmn/v4/img/layout/article-list-dot-red.png&quot;); background-position: left 0.4375em; background-repeat: no-repeat;">\r\n				<font size="3"><span style="font-family: Arial;">paying attention to multinational customers in order to develop international connectivity.</span></font></li>\r\n		</ul>\r\n		<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">For this purpose activities on the domestic market are structured into these main departments.</span></font></p>\r\n		<h5 style="font-size: 1em; margin: 1em 0px 0.8125em; line-height: 1.15em; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">Consumer &amp; Small Enterprise Market</span></font></h5>\r\n		<p style="margin: 0.8125em 0px; font-size: 0.8125em; line-height: 1.25; text-align: justify; color: rgb(34, 34, 34); box-sizing: inherit !important; background-color: rgb(255, 255, 255);">\r\n			<font size="3"><span style="font-family: Arial;">This department is responsible for ensuring the operating margin of the consumer and small business segments, protecting and increasing the value of the customers, maximizing revenues, profitability and market shares through the definition of the offer and marketing plans, commercial communication, the marketing of products/services, caring activities, operating credit and the administrative management of the customers, with the aim of increasing customer satisfaction and optimizing the overall costs of the service. From an organizational perspective, the company&nbsp;<strong style="box-sizing: inherit !important;">Persidera,</strong>&nbsp;created from a merger between Telecom Italia Media Broadcasting and Rete A, reports to this department.</span></font></p>\r\n'),
(7, 'investors', 'In this section: our strategy and targets, information for shareholders and bondholders, investor presentations, annual results and reporting, our  risk management model, dates of  forthcoming events in the financial calendar and other useful tools and material for investors as well as for socially responsible investment.');

-- --------------------------------------------------------

--
-- Table structure for table `sl`
--

CREATE TABLE `sl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `category` int(1) NOT NULL,
  `promo` int(1) NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sl`
--

INSERT INTO `sl` (`id`, `name`, `description`, `picture`, `category`, `promo`, `rules`) VALUES
(1, 'TIM Music', 'Listen to millions of songs streaming, all new releases,\r\nexclusive previews and many playlist of all kinds. On smartphones\r\nwithout consuming GB, PC and tablet. When you want and how much you want.', 'logo_tim_music.jpg', 1, 1, '<p>\r\n			THREE EASY STEPS AND YOU CAN TRACK EVERYTHING YOU LOVE<br />\r\n			1. Buy the Pack TIMTag<br />\r\n			<br />\r\n			Buy now online and receive direct to your door the pack or go to one of TIM stores<br />\r\n			<br />\r\n			2. Enable TIM Card<br />\r\n			<br />\r\n			Record TIM Card, which you can find in the pack on a TIM store (the TIMTag offer will be activated automatically after registration).<br />\r\n			<br />\r\n			3. Download the APP on your Smartphone TIMTag<br />\r\n			<br />\r\n			Install the app on your smartphone and associates the tracking device (Android and iOS).</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assist`
--
ALTER TABLE `assist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_assist`
--
ALTER TABLE `device_assist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_sl`
--
ALTER TABLE `device_sl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `sl`
--
ALTER TABLE `sl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assist`
--
ALTER TABLE `assist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `device_assist`
--
ALTER TABLE `device_assist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `device_sl`
--
ALTER TABLE `device_sl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sl`
--
ALTER TABLE `sl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
