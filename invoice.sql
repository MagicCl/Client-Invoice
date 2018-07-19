-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2018 at 07:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_account`
--

CREATE TABLE IF NOT EXISTS `xvmwb_account` (
  `account_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `retained_earnings` tinyint(1) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_activity`
--

CREATE TABLE IF NOT EXISTS `xvmwb_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `xvmwb_activity`
--

INSERT INTO `xvmwb_activity` (`activity_id`, `message`, `date_added`) VALUES
(29, '[Activity Log] Activity log was cleared by admin.', '2018-07-16 10:36:05'),
(30, '[Admin] admin logged in.', '2018-07-16 10:57:11'),
(31, '[Admin] admin logged in.', '2018-07-16 10:58:02'),
(32, '[Admin] admin logged in.', '2018-07-16 11:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_article`
--

CREATE TABLE IF NOT EXISTS `xvmwb_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `top` tinyint(1) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `xvmwb_article`
--

INSERT INTO `xvmwb_article` (`article_id`, `top`, `parent_id`, `sort_order`, `status`) VALUES
(1, 1, 0, 0, 1),
(3, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_article_description`
--

CREATE TABLE IF NOT EXISTS `xvmwb_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xvmwb_article_description`
--

INSERT INTO `xvmwb_article_description` (`article_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'About Us', '&lt;h2&gt;Experienced design for excellence -Magic Labs&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;blockquote style=&quot;line-height: 1.5; margin-top: 0pt; margin-bottom: 0pt; text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&lt;span style=&quot;font-size: 11pt; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;“Magic Labs” Creative Engine are best team of expert designers, developers and marketing executive with big ideas!Our team put our clients first and this is how we work together successfully. We take great pride in our attention to detail and put a lot of time into getting know our clients.We’re flexible, responsive &amp;nbsp;and adaptive ,so when you work with us - you get a dedicated group of people who are focused on your work.&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Our talented design company offer a range of design services to individuals and business including web design, graphic design, digital marketing, video and search engine optimization.&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Our young an motivated designers create is new,innovative, and unique - just like you.&lt;/span&gt;&lt;/span&gt;&lt;/blockquote&gt;&lt;p style=&quot;line-height: 1.5;&quot;&gt;&lt;span id=&quot;docs-internal-guid-aac82053-8314-9091-f4b5-77bcd40d4d5b&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;'),
(3, 1, 'How to Pay', '&lt;h2&gt;Pay for Magic Labs..&lt;/h2&gt;&lt;h1 dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:20pt;margin-bottom:6pt;text-align: justify;&quot;&gt;&lt;/h1&gt;&lt;h2&gt;&lt;b&gt;&lt;span style=&quot;font-size:14.0pt;\r\nline-height:107%;font-family:&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;,serif&quot;=&quot;&quot;&gt;Get in Touch with Us&lt;/span&gt;&lt;/b&gt;&lt;/h2&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:14.0pt;\r\nline-height:107%;font-family:&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;,serif&quot;=&quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3&gt;&lt;span id=&quot;docs-internal-guid-f5925c52-8342-d5fa-a612-625e50a15cba&quot; style=&quot;font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;See how your business can benefit with Magic Labs on Your team.&lt;/span&gt;&lt;/h3&gt;&lt;h3&gt;&lt;blockquote&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-f5925c52-8342-d5fa-a612-625e50a15cba&quot; style=&quot;font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Graphics Design and Social Media Marketing&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-f5925c52-8342-d5fa-a612-625e50a15cba&quot; style=&quot;font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Web Design and Development&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/blockquote&gt;&lt;/h3&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;First Your Register Magic Labs Client &amp;amp; Invoice Management system. After You can log the Magic Labs.&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;And before you''re register Magic Labs Account You can Log the System Easily Use Owner User Name and Password.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_currency`
--

CREATE TABLE IF NOT EXISTS `xvmwb_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_customer`
--

CREATE TABLE IF NOT EXISTS `xvmwb_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `token` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_customer_credit`
--

CREATE TABLE IF NOT EXISTS `xvmwb_customer_credit` (
  `customer_credit_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `description` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_credit_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_customer_ip`
--

CREATE TABLE IF NOT EXISTS `xvmwb_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_email_template`
--

CREATE TABLE IF NOT EXISTS `xvmwb_email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `priority` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_email_template_description`
--

CREATE TABLE IF NOT EXISTS `xvmwb_email_template_description` (
  `email_template_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_template_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `html` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`email_template_description_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_email_template_type`
--

CREATE TABLE IF NOT EXISTS `xvmwb_email_template_type` (
  `email_template_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `variables` text NOT NULL,
  PRIMARY KEY (`email_template_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `xvmwb_email_template_type`
--

INSERT INTO `xvmwb_email_template_type` (`email_template_type_id`, `type`, `variables`) VALUES
(1, 'new_customer_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, status'),
(2, 'new_customer_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, status, password'),
(3, 'edit_customer_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, status'),
(4, 'edit_customer_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, status'),
(5, 'new_credit_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, amount, description, date_added'),
(6, 'new_credit_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, amount, description, date_added'),
(7, 'new_invoice_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, invoice_id, comment, total, status, payment_name, date_issued, date_due, date_modified'),
(8, 'new_invoice_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, invoice_id, comment, total, status, payment_name, date_issued, date_due, date_modified'),
(9, 'edit_invoice_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, invoice_id, comment, total, status, payment_name, date_issued, date_due, date_modified'),
(10, 'edit_invoice_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, invoice_id, comment, total, status, payment_name, date_issued, date_due, date_modified'),
(11, 'new_recurring_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, recurring_id, comment, total, status, cycle, payment_name, date_added, date_due, date_modified'),
(12, 'new_recurring_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, recurring_id, comment, total, status, cycle, payment_name, date_added, date_due, date_modified'),
(13, 'edit_recurring_admin', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, recurring_id, comment, total, status, cycle, payment_name, date_added, date_due, date_modified'),
(14, 'edit_recurring_customer', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, recurring_id, comment, total, status, cycle, payment_name, date_added, date_due, date_modified'),
(15, 'new_transaction_admin', 'website_name, website_url, invoice_id, date, date_added, date_modified'),
(16, 'edit_transaction_admin', 'website_name, website_url, invoice_id, date, date_added, date_modified'),
(17, 'forgotten_password_admin', 'website_name, website_url, email, reset_link, ip'),
(18, 'forgotten_password_customer', 'website_name, website_url, firstname, lastname, email, password, ip'),
(19, 'status', 'website_name, website_url, customer_id, firstname, lastname, company, website, email, invoice_id, comment, history_comment, total, status, payment_name, date_issued, date_due, date_modified');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_extension`
--

CREATE TABLE IF NOT EXISTS `xvmwb_extension` (
  `extension` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `xvmwb_extension`
--

INSERT INTO `xvmwb_extension` (`extension`, `type`, `code`) VALUES
(1, 'payment', 'pp_standard'),
(2, 'total', 'total'),
(3, 'total', 'sub_total'),
(4, 'payment', 'cheque'),
(5, 'total', 'tax'),
(6, 'payment', 'bank_transfer');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_invoice`
--

CREATE TABLE IF NOT EXISTS `xvmwb_invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `recurring_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `payment_name` varchar(255) NOT NULL,
  `payment_description` text NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `comment` text NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `transaction` tinyint(1) NOT NULL DEFAULT '0',
  `date_due` date NOT NULL DEFAULT '0000-00-00',
  `date_issued` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_invoice_history`
--

CREATE TABLE IF NOT EXISTS `xvmwb_invoice_history` (
  `invoice_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`invoice_history_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_invoice_item`
--

CREATE TABLE IF NOT EXISTS `xvmwb_invoice_item` (
  `invoice_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`invoice_item_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_invoice_total`
--

CREATE TABLE IF NOT EXISTS `xvmwb_invoice_total` (
  `invoice_total_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`invoice_total_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_language`
--

CREATE TABLE IF NOT EXISTS `xvmwb_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `xvmwb_language`
--

INSERT INTO `xvmwb_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_recurring`
--

CREATE TABLE IF NOT EXISTS `xvmwb_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `payment_name` varchar(255) NOT NULL,
  `payment_description` text NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `cycle` varchar(15) NOT NULL,
  `date_due` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_recurring_item`
--

CREATE TABLE IF NOT EXISTS `xvmwb_recurring_item` (
  `recurring_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `recurring_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`recurring_item_id`),
  KEY `recurring_id` (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_recurring_total`
--

CREATE TABLE IF NOT EXISTS `xvmwb_recurring_total` (
  `recurring_total_id` int(11) NOT NULL AUTO_INCREMENT,
  `recurring_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`recurring_total_id`),
  KEY `recurring_id` (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_setting`
--

CREATE TABLE IF NOT EXISTS `xvmwb_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1299 ;

--
-- Dumping data for table `xvmwb_setting`
--

INSERT INTO `xvmwb_setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES
(7, 'bank_transfer', 'bank_transfer_details', 'a:1:{i:1;s:82:"Please make transfer to the following:\r\n\r\nBank: My Bank\r\nAccount No.: 1234-5678-90";}', 1),
(11, 'total', 'total_status', '1', 0),
(12, 'total', 'total_sort_order', '9', 0),
(13, 'sub_total', 'sub_total_sort_order', '1', 0),
(21, 'pp_standard', 'pp_standard_voided', '6', 0),
(22, 'pp_standard', 'pp_standard_reversed', '6', 0),
(23, 'pp_standard', 'pp_standard_refunded', '6', 0),
(24, 'pp_standard', 'pp_standard_processed', '5', 0),
(25, 'pp_standard', 'pp_standard_pending', '5', 0),
(26, 'pp_standard', 'pp_standard_failed', '1', 0),
(27, 'pp_standard', 'pp_standard_expired', '5', 0),
(28, 'pp_standard', 'pp_standard_denied', '5', 0),
(29, 'pp_standard', 'pp_standard_completed', '4', 0),
(30, 'pp_standard', 'pp_standard_cancelled', '1', 0),
(31, 'pp_standard', 'pp_standard_debug', '0', 0),
(36, 'sub_total', 'sub_total_status', '1', 0),
(37, 'cheque', 'cheque_completed_status_id', '5', 0),
(44, 'cheque', 'cheque_details', 'a:1:{i:1;s:56:"Please send cheque to\r\n\r\n1 Test Street\r\nSingapore 123456";}', 1),
(45, 'cheque', 'cheque_payable', 'My Company Ltd', 0),
(46, 'tax', 'tax_status', '1', 0),
(47, 'tax', 'tax_sort_order', '3', 0),
(54, 'pp_standard', 'pp_standard_transaction', 'sale', 0),
(55, 'pp_standard', 'pp_standard_sandbox', '1', 0),
(56, 'pp_standard', 'pp_standard_email', 'test@example.com', 0),
(57, 'cheque', 'cheque_status', '1', 0),
(69, 'cheque', 'cheque_sort_order', '0', 0),
(70, 'bank_transfer', 'bank_transfer_completed_status_id', '5', 0),
(71, 'bank_transfer', 'bank_transfer_status', '1', 0),
(72, 'bank_transfer', 'bank_transfer_sort_order', '0', 0),
(73, 'pp_standard', 'pp_standard_status', '1', 0),
(74, 'pp_standard', 'pp_standard_sort_order', '0', 0),
(1298, 'config', 'config_google_analytics', '', 0),
(1297, 'config', 'config_cron_user_id', '2', 0),
(1296, 'config', 'config_error_filename', 'error.log', 0),
(1295, 'config', 'config_error_log', '1', 0),
(1294, 'config', 'config_error_display', '0', 0),
(1293, 'config', 'config_cache', 'file', 0),
(1292, 'config', 'config_compression', '0', 0),
(1291, 'config', 'config_maintenance', '0', 0),
(1289, 'config', 'config_ssl', '0', 0),
(1290, 'config', 'config_seo_url', '0', 0),
(1283, 'config', 'config_auto_update_currency', '0', 0),
(1284, 'config', 'config_invoice_prefix', 'INV-', 0),
(1285, 'config', 'config_invoice_void_days', '7', 0),
(1286, 'config', 'config_recurring_invoice_days', '14', 0),
(1287, 'config', 'config_recurring_disable_days', '21', 0),
(1288, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:2:"25";s:12:"smtp_timeout";s:1:"5";}', 1),
(1282, 'config', 'config_financial_year', '31/12', 0),
(1278, 'config', 'config_forgotten_admin', '1', 0),
(1279, 'config', 'config_forgotten_application', '1', 0),
(1280, 'config', 'config_registration', '1', 0),
(1281, 'config', 'config_home', 'a:1:{i:1;s:2086:"&lt;div class=&quot;header&quot;&gt;\r\n  &lt;div class=&quot;container&quot; style=&quot;line-height: 1.4;&quot;&gt;\r\n    &lt;h1&gt;&lt;span style=&quot;font-weight: bold; font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Client &amp;amp; Invoice Management System....&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;&lt;h1&gt;&lt;br&gt;&lt;/h1&gt;&lt;h1&gt;&lt;br&gt;&lt;/h1&gt;&lt;h1 style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/h1&gt;&lt;blockquote style=&quot;&quot;&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: 1.4;&quot;&gt;&lt;span style=&quot;font-size:14.0pt;\r\nline-height:107%;font-family:&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;,serif&quot;=&quot;&quot;&gt;Client Billing/Expense\r\nTracker is a Powerful PHP Web Application to manage your Clients, income,\r\nexpenses or accounts and has integrated Emails. Automatic payment links.\r\nMagic Labs sees its inception in seek of introducing and merging technological\r\nadvancements and business developments tools such as Social Media Marketing and Web Design And Development,&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18.6667px;&quot;&gt;Business Management&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14pt;&quot;&gt;and Software into small and Medium enterprises to meet\r\ntheir fullest potential.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;header&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 1.4;&quot;&gt;&lt;h5 style=&quot;line-height: 1.4;&quot;&gt;&lt;span style=&quot;font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot; roman&quot;;=&quot;&quot; font-weight:=&quot;&quot; bold;&quot;=&quot;&quot;&gt;&lt;span times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot; roman&quot;;=&quot;&quot; text-align:=&quot;&quot; justify;&quot;=&quot;&quot; style=&quot;color: inherit; font-size: 24px; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;/div&gt;&lt;/div&gt;";}', 1),
(1277, 'config', 'config_language', 'en', 0),
(1276, 'config', 'config_admin_language', 'en', 0),
(1275, 'config', 'config_limit_application', '10', 0),
(1274, 'config', 'config_limit_admin', '20', 0),
(1273, 'config', 'config_icon', 'application/view/image/favi.jpg', 0),
(1272, 'config', 'config_logo', 'application/view/image/logo.jpg', 0),
(1270, 'config', 'config_title', 'Magic client &amp; Invoices', 0),
(1271, 'config', 'config_meta_description', 'Magic Labs Client  &amp; invoice management  system. That is Powered system for using client and invoice handling.', 0),
(1269, 'config', 'config_fax', '', 0),
(1268, 'config', 'config_telephone', '+94 77 603 3991', 0),
(1267, 'config', 'config_email', 'ask@magiclabs.lk', 0),
(1266, 'config', 'config_address', 'Magic Labs,\r\nNo 87,\r\nOld kottawa Road,\r\nNugegoda.', 0),
(1265, 'config', 'config_registered_name', 'Magic Labs - Social Media Marketing and Development', 0),
(1264, 'config', 'config_name', 'Magic Labs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_status`
--

CREATE TABLE IF NOT EXISTS `xvmwb_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_tax_class`
--

CREATE TABLE IF NOT EXISTS `xvmwb_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `xvmwb_tax_class`
--

INSERT INTO `xvmwb_tax_class` (`tax_class_id`, `name`, `description`) VALUES
(1, 'GST Taxable', '7% GST'),
(4, 'VAT Taxable', '20% VAT');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_tax_rate`
--

CREATE TABLE IF NOT EXISTS `xvmwb_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL,
  `type` char(1) NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `xvmwb_tax_rate`
--

INSERT INTO `xvmwb_tax_rate` (`tax_rate_id`, `name`, `rate`, `type`) VALUES
(1, 'GST', '7.0000', 'P'),
(2, 'VAT', '20.0000', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_tax_rate_to_tax_class`
--

CREATE TABLE IF NOT EXISTS `xvmwb_tax_rate_to_tax_class` (
  `tax_rate_to_tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL,
  PRIMARY KEY (`tax_rate_to_tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `xvmwb_tax_rate_to_tax_class`
--

INSERT INTO `xvmwb_tax_rate_to_tax_class` (`tax_rate_to_tax_class_id`, `tax_rate_id`, `tax_class_id`, `priority`) VALUES
(4, 1, 1, 0),
(5, 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_transaction`
--

CREATE TABLE IF NOT EXISTS `xvmwb_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_transaction_account`
--

CREATE TABLE IF NOT EXISTS `xvmwb_transaction_account` (
  `transaction_account_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `debit` decimal(15,4) NOT NULL,
  `credit` decimal(15,4) NOT NULL,
  PRIMARY KEY (`transaction_account_id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_url_alias`
--

CREATE TABLE IF NOT EXISTS `xvmwb_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `xvmwb_url_alias`
--

INSERT INTO `xvmwb_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(8, 'article_id=1', 'about-us'),
(11, 'article_id=3', 'terms-n-conditions'),
(3, 'article_id=4', 'equotix-invoice'),
(4, 'article_id=2', 'our-portfolio'),
(5, 'article_id=5', 'history'),
(6, 'article_id=6', 'how-to-pay');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_user`
--

CREATE TABLE IF NOT EXISTS `xvmwb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `username` varchar(32) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `xvmwb_user`
--

INSERT INTO `xvmwb_user` (`user_id`, `user_group_id`, `key`, `secret`, `email`, `username`, `salt`, `password`, `ip`, `code`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 'fUMqFJ2Nz0mefJKQ1zRRnmqRlQICfhZRELOvE6VOQjgbXyfJKaDGYJ3DxuxtH8e4', 'y2QholSLE1StzXA4p5KfVPiPmF32NM6K4Vc0aPLphr1Z9ZQwgIHi3nLd0pNTI87w', 'rajithahewawasam@gmail.com', 'admin', '3b297a5e5', '1c4122679e50f63f3605f0233a1972b6ef4be8a8', '::1', '2af55a12e8b9cffb1b2c890c1f61377e70453764', 1, '2018-07-10 11:01:15', '2018-07-10 11:01:15'),
(2, 2, 'liy76wVG1g0JHiD0dls5oZlKZvbSgX9FrBAQtaOlVWZzRjTrTyp8LyOZnVvtaJ9r', 'LaSEfmUTr1Gef4XVqf3m8ZYFIXoe4IXiDcWDTFVubvDWLPQoSRsXgnKRmBVGUOBm', 'rajithahewawasam@gmail.com', 'Cron', '995aa7046', 'f1c6e3c04ad1752e1a4564665c4b4a664c5c3aac', '', '2af55a12e8b9cffb1b2c890c1f61377e70453764', 1, '2018-07-10 11:01:15', '2018-07-10 11:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `xvmwb_user_group`
--

CREATE TABLE IF NOT EXISTS `xvmwb_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `xvmwb_user_group`
--

INSERT INTO `xvmwb_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:32:{i:0;s:18:"accounting/account";i:1;s:19:"accounting/currency";i:2;s:18:"accounting/journal";i:3;s:20:"accounting/tax_class";i:4;s:19:"accounting/tax_rate";i:5;s:16:"billing/customer";i:6;s:15:"billing/invoice";i:7;s:17:"billing/recurring";i:8;s:16:"common/dashboard";i:9;s:15:"content/article";i:10;s:22:"content/email_template";i:11;s:17:"extension/payment";i:12;s:15:"extension/total";i:13;s:21:"payment/bank_transfer";i:14;s:14:"payment/cheque";i:15;s:19:"payment/pp_standard";i:16;s:24:"report/chart_of_accounts";i:17;s:14:"report/invoice";i:18;s:16:"report/recurring";i:19;s:10:"report/sci";i:20;s:10:"report/sfp";i:21;s:15:"system/activity";i:22;s:12:"system/error";i:23;s:15:"system/language";i:24;s:14:"system/setting";i:25;s:13:"system/status";i:26;s:17:"system/user_group";i:27;s:11:"system/user";i:28;s:15:"total/sub_total";i:29;s:9:"total/tax";i:30;s:11:"total/total";i:31;s:21:"payment/bank_transfer";}s:6:"modify";a:32:{i:0;s:18:"accounting/account";i:1;s:19:"accounting/currency";i:2;s:18:"accounting/journal";i:3;s:20:"accounting/tax_class";i:4;s:19:"accounting/tax_rate";i:5;s:16:"billing/customer";i:6;s:15:"billing/invoice";i:7;s:17:"billing/recurring";i:8;s:16:"common/dashboard";i:9;s:15:"content/article";i:10;s:22:"content/email_template";i:11;s:17:"extension/payment";i:12;s:15:"extension/total";i:13;s:21:"payment/bank_transfer";i:14;s:14:"payment/cheque";i:15;s:19:"payment/pp_standard";i:16;s:24:"report/chart_of_accounts";i:17;s:14:"report/invoice";i:18;s:16:"report/recurring";i:19;s:10:"report/sci";i:20;s:10:"report/sfp";i:21;s:15:"system/activity";i:22;s:12:"system/error";i:23;s:15:"system/language";i:24;s:14:"system/setting";i:25;s:13:"system/status";i:26;s:17:"system/user_group";i:27;s:11:"system/user";i:28;s:15:"total/sub_total";i:29;s:9:"total/tax";i:30;s:11:"total/total";i:31;s:21:"payment/bank_transfer";}}'),
(2, 'System', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
