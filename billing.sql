-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2020 a las 02:10:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `billing`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_notes`
--

CREATE TABLE `app_notes` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `company` varchar(200) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `balance` decimal(16,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `ts` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `web` varchar(200) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT 0,
  `securityqid` int(10) NOT NULL DEFAULT 0,
  `securityqans` text DEFAULT NULL,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text DEFAULT NULL,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT 0,
  `language` text DEFAULT NULL,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `email_verified` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `jobtitle`, `cid`, `o`, `phone`, `email`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `email_verified`, `created_at`, `updated_at`, `pwresetexpiry`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1000, 'José Miranda López', '', '', '', '', 0, 0, '952658545', 'jose@gmail.com', 'Pje. 5 de Noviembre 157', 'Tacna', 'Tacna', '23000', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'Ángel Rivera', '', '', '', '', 0, 0, '', '', '', '', '', '', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'Tom Marsano', '', '', '', '', 0, 0, '', '', '', '', '', '', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'Paul Ticona', '', '', '', '', 0, 0, '', '', '', '', '', '', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 'Javier Mejía', '', '', '', '', 0, 0, '', '', '', '', '', '', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'Ramón', '', '', '', '', 0, 0, '', '', '', '', '', '', 'PE', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'Miguel Cotrado Ramirez', '', '', '', '', 0, 0, '', 'operacionesmasivasclaro@gmail.com', '', 'Tacna', '', '', 'PE', '0.00', 'Active', '', '', 'ibLJRKHoI8Qfk', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text DEFAULT NULL,
  `relid` int(10) NOT NULL DEFAULT 0,
  `fieldname` text DEFAULT NULL,
  `fieldtype` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fieldoptions` text DEFAULT NULL,
  `regexpr` text DEFAULT NULL,
  `adminonly` text DEFAULT NULL,
  `required` text DEFAULT NULL,
  `showorder` text DEFAULT NULL,
  `showinvoice` text DEFAULT NULL,
  `sorder` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `separateinvoices` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flmcs_supports`
--

CREATE TABLE `flmcs_supports` (
  `id` int(11) NOT NULL,
  `tid` varchar(20) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT 0,
  `fid` int(11) NOT NULL DEFAULT 0,
  `domain` varchar(100) NOT NULL,
  `tvid` varchar(30) NOT NULL,
  `tvpass` varchar(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flmcs_users`
--

CREATE TABLE `flmcs_users` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL DEFAULT 0,
  `domain` varchar(100) NOT NULL,
  `sid` int(11) NOT NULL,
  `server` varchar(100) NOT NULL,
  `client` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` mediumtext NOT NULL,
  `pdate` date NOT NULL,
  `rdid` varchar(100) NOT NULL,
  `rdpass` varchar(100) NOT NULL,
  `rdtype` varchar(50) NOT NULL,
  `sdir` varchar(50) NOT NULL,
  `cpuser` varchar(50) NOT NULL,
  `cppass` varchar(50) NOT NULL,
  `dbuser` varchar(50) NOT NULL,
  `dbpass` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `memo` mediumtext NOT NULL,
  `domain_oid` varchar(100) NOT NULL,
  `ns1` varchar(100) NOT NULL,
  `ns2` varchar(100) NOT NULL,
  `ns3` varchar(100) NOT NULL,
  `ns4` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hrm_attendance`
--

CREATE TABLE `hrm_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `eid` int(11) NOT NULL,
  `ename` varchar(200) NOT NULL,
  `ent` datetime NOT NULL,
  `ex` datetime NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hrm_employees`
--

CREATE TABLE `hrm_employees` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pl_assets`
--

CREATE TABLE `pl_assets` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `pdate` date NOT NULL,
  `memo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_accounts`
--

INSERT INTO `sys_accounts` (`id`, `account`, `description`, `balance`, `bank_name`, `account_number`, `currency`, `branch`, `address`, `contact_person`, `contact_phone`, `website`, `ib_url`, `created`, `notes`, `sorder`, `e`, `token`, `status`) VALUES
(8, 'Caja diaria', '', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `apikey` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` text NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'Arduino101'),
(29, 'theme', 'softhash'),
(37, 'currency_code', 'S/'),
(56, 'language', 'spanish'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'dark'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'America/Lima'),
(66, 'country', 'PE'),
(67, 'country_code', 'US'),
(68, 'df', 'M d Y'),
(69, 'caddress', ''),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '0'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '200000'),
(75, 'sysEmail', 'arduino101.info@gmail.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '4200'),
(78, 'animate', '0'),
(79, 'pdf_font', 'default'),
(80, 'accounting', '0'),
(81, 'invoicing', '1'),
(82, 'quotes', '0'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '1'),
(87, 'i_driver', 'default'),
(88, 'purchase_code', ''),
(89, 'c_cache', '4dc4e6cece7dab10b4ebc126b5cad80b'),
(90, 'mininav', '0'),
(91, 'hide_footer', '0'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'PEN'),
(98, 'currency_decimal_digits', 'true'),
(99, 'currency_symbol_position', 'p'),
(100, 'thousand_separator_placement', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_calls`
--

CREATE TABLE `sys_calls` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `summary` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_cases`
--

CREATE TABLE `sys_cases` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `status` enum('Open','Closed') NOT NULL DEFAULT 'Open',
  `description` text NOT NULL,
  `source` text NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `account` text NOT NULL,
  `aid` int(11) NOT NULL DEFAULT 0,
  `tags` text NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`) VALUES
(14, 'Advertising', 'Expense', 1),
(15, 'Bank and Credit Card Interest', 'Expense', 23),
(16, 'Car and Truck', 'Expense', 24),
(17, 'Commissions and Fees', 'Expense', 25),
(18, 'Contract Labor', 'Expense', 26),
(19, 'Contributions', 'Expense', 27),
(20, 'Cost of Goods Sold', 'Expense', 28),
(21, 'Credit Card Interest', 'Expense', 29),
(22, 'Depreciation', 'Expense', 31),
(23, 'Dividend Payments', 'Expense', 32),
(24, 'Employee Benefit Programs', 'Expense', 33),
(25, 'Entertainment', 'Expense', 34),
(26, 'Gift', 'Expense', 35),
(27, 'Insurance', 'Expense', 36),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37),
(29, 'Meals', 'Expense', 38),
(30, 'Mortgage Interest', 'Expense', 39),
(31, 'Non-Deductible Expense', 'Expense', 40),
(33, 'Other Business Property Leasing', 'Expense', 22),
(34, 'Owner Draws', 'Expense', 21),
(35, 'Payroll Taxes', 'Expense', 8),
(37, 'Phone', 'Expense', 9),
(38, 'Postage', 'Expense', 10),
(39, 'Rent', 'Expense', 12),
(40, 'Repairs &amp; Maintenance', 'Expense', 11),
(41, 'Supplies', 'Expense', 13),
(42, 'Taxes and Licenses', 'Expense', 14),
(43, 'Transfer Funds', 'Expense', 15),
(44, 'Travel', 'Expense', 16),
(45, 'Utilities', 'Expense', 17),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18),
(47, 'Wages', 'Expense', 19),
(48, 'Regular Income', 'Income', 1),
(49, 'Owner Contribution', 'Income', 12),
(50, 'Interest Income', 'Income', 11),
(51, 'Expense Refund', 'Income', 10),
(52, 'Other Income', 'Income', 9),
(53, 'Salary', 'Income', 8),
(54, 'Equities', 'Income', 7),
(55, 'Rent &amp; Royalties', 'Income', 6),
(56, 'Home equity', 'Income', 5),
(57, 'Part Time Work', 'Income', 3),
(58, 'Account Transfer', 'Income', 4),
(60, 'Health Care', 'Expense', 20),
(63, 'Loans', 'Expense', 30),
(64, 'Selling Software', 'Income', 2),
(65, 'Software Customization', 'Income', 13),
(66, 'FLMCS', 'Income', 0),
(67, 'SMS', 'Income', 0),
(68, 'Envato', 'Income', 0),
(69, 'Salary', 'Expense', 7),
(70, 'Paypal', 'Expense', 6),
(72, 'Office Equipment', 'Expense', 5),
(73, 'Staff Entertaining', 'Expense', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'smtp', 'smtp.gmail.com', 'arduino101.info@gmail.com', 'infoarduino', '', '587', 'tls');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_email_logs`
--

INSERT INTO `sys_email_logs` (`id`, `userid`, `sender`, `email`, `subject`, `message`, `date`, `iid`) VALUES
(5, 1000, '', 'eanthonyq@outlook.com', 'Factura Arduino101', '<div style=\"line-height: 1.6; text-align: left; width: 550px; margin: 0px 10px; padding: 14px; border-width: 3px; border-style: solid; border-color: rgb(0, 123, 195) rgb(216, 216, 216) rgb(216, 216, 216); border-image: initial;\"><div style=\"padding: 5px;\"><div style=\"padding: 5px;\">Saludos,</div><div style=\"padding: 5px;\">Este correo electrónico sirve como su factura oficial de Arduino101.</div><div style=\"padding: 5px;\">URL de factura: http://localhost/billing-platea21/?ng=client/iview/1000/token_6086935411</div><div style=\"padding: 5px;\">ID de factura: 1000</div><div style=\"padding: 5px;\">Monto de la factura: 180.00</div><div style=\"padding: 5px;\">Fecha de vencimiento: Jun 26 2020</div><div style=\"padding: 5px;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px;\">Atentamente,</div><div style=\"padding: 5px;\">Equipo de Arduino101</div></div></div>', '2020-06-26 23:33:10', 1000),
(6, 1000, '', 'eanthonyq@outlook.com', 'Confirmación de pago de factura Arduino101', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Este es un recibo de pago de la factura 1000 enviado el Jun 26 2020.</div><div style=\"padding: 5px; font-size: 11pt;\">Inicie sesión en su portal de cliente para ver esta factura.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: http://localhost/billing-platea21/?ng=client/iview/1000/token_6086935411</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: 1000</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: 180.00</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: Jun 26 2020</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de Arduino101</div></div><div style=\"padding:0px 5px\">\n\n\n</div>\n\n\n</div>', '2020-06-26 23:33:38', 1000),
(7, 1000, '', 'e.anthonyq@gmail.com', 'Factura Arduino101', '<div style=\"line-height: 1.6; text-align: left; width: 550px; margin: 0px 10px; padding: 14px; border-width: 3px; border-style: solid; border-color: rgb(0, 123, 195) rgb(216, 216, 216) rgb(216, 216, 216); border-image: initial;\"><div style=\"padding: 5px;\"><div style=\"padding: 5px;\">Saludos,</div><div style=\"padding: 5px;\">Este correo electrónico sirve como su factura oficial de Arduino101.</div><div style=\"padding: 5px;\">URL de factura: http://localhost/billing/?ng=client/iview/1000/token_6086935411</div><div style=\"padding: 5px;\">ID de factura: 1000</div><div style=\"padding: 5px;\">Monto de la factura: 180.00</div><div style=\"padding: 5px;\">Fecha de vencimiento: Jun 26 2020</div><div style=\"padding: 5px;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px;\">Atentamente,</div><div style=\"padding: 5px;\">Equipo de Arduino101</div></div></div>', '2020-06-27 18:20:18', 1000),
(8, 1000, '', 'e.anthonyq@gmail.com', 'Factura Arduino101', '<div style=\"line-height: 1.6; text-align: left; width: 550px; margin: 0px 10px; padding: 14px; border-width: 3px; border-style: solid; border-color: rgb(0, 123, 195) rgb(216, 216, 216) rgb(216, 216, 216); border-image: initial;\"><div style=\"padding: 5px;\"><div style=\"padding: 5px;\">Saludos,</div><div style=\"padding: 5px;\">Este correo electrónico sirve como su factura oficial de Arduino101.</div><div style=\"padding: 5px;\">URL de factura: http://localhost/billing/?ng=client/iview/1000/token_6086935411</div><div style=\"padding: 5px;\">ID de factura: 1000</div><div style=\"padding: 5px;\">Monto de la factura: 180.00</div><div style=\"padding: 5px;\">Fecha de vencimiento: Jun 26 2020</div><div style=\"padding: 5px;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px;\">Atentamente,</div><div style=\"padding: 5px;\">Equipo de Arduino101</div></div></div>', '2020-06-27 18:25:12', 1000),
(9, 1000, '', 'e.anthonyq@gmail.com', 'Factura Arduino101', '<div style=\"line-height: 1.6; text-align: left; width: 550px; margin: 0px 10px; padding: 14px; border-width: 3px; border-style: solid; border-color: rgb(0, 123, 195) rgb(216, 216, 216) rgb(216, 216, 216); border-image: initial;\"><div style=\"padding: 5px;\"><div style=\"padding: 5px;\">Saludos,</div><div style=\"padding: 5px;\">Este correo electrónico sirve como su factura oficial de Arduino101.</div><div style=\"padding: 5px;\">URL de factura: http://localhost/billing/?ng=client/iview/1000/token_6086935411</div><div style=\"padding: 5px;\">ID de factura: 1000</div><div style=\"padding: 5px;\">Monto de la factura: 180.00</div><div style=\"padding: 5px;\">Fecha de vencimiento: Jun 26 2020</div><div style=\"padding: 5px;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px;\">Atentamente,</div><div style=\"padding: 5px;\">Equipo de Arduino101</div></div></div>', '2020-06-27 18:27:46', 1000),
(10, 1006, '', 'operacionesmasivasclaro@gmail.com', 'Confirmación de pago de factura Arduino101', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Este es un recibo de pago de la factura 1003 enviado el Jun 27 2020.</div><div style=\"padding: 5px; font-size: 11pt;\">Inicie sesión en su portal de cliente para ver esta factura.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: http://localhost/arduino101/?ng=client/iview/1003/token_2721519596</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: 1003</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: 25.00</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: Jun 27 2020</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de Arduino101</div></div><div style=\"padding:0px 5px\">\n\n\n</div>\n\n\n</div>', '2020-06-27 19:03:49', 1003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, 'Factura {{business_name}} ', '<div style=\"line-height: 1.6; text-align: left; width: 550px; margin: 0px 10px; padding: 14px; border-width: 3px; border-style: solid; border-color: rgb(0, 123, 195) rgb(216, 216, 216) rgb(216, 216, 216); border-image: initial;\"><div style=\"padding: 5px;\"><div style=\"padding: 5px;\">Saludos,</div><div style=\"padding: 5px;\">Este correo electrónico sirve como su factura oficial de {{business_name}}.</div><div style=\"padding: 5px;\">URL de factura: {{invoice_url}}</div><div style=\"padding: 5px;\">ID de factura: {{invoice_id}}</div><div style=\"padding: 5px;\">Monto de la factura: {{invoice_amount}}</div><div style=\"padding: 5px;\">Fecha de vencimiento: {{invoice_due_date}}</div><div style=\"padding: 5px;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px;\">Atentamente,</div><div style=\"padding: 5px;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, 'Solicitud de cambio de contraseña {{business_name}} ', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Hola {{name}},</div><div style=\"padding: 5px; font-size: 11pt;\">Esto es para confirmar que hemos recibido una solicitud de contraseña olvidada para el nombre de usuario de su cuenta: {{username}}</div><div style=\"padding: 5px; font-size: 11pt;\">Desde la dirección IP - {{ip_address}}</div><div style=\"padding: 5px; font-size: 11pt;\">Haga clic en este enlace para restablecer su contraseña.</div><div style=\"padding: 5px; font-size: 11pt;\">{{password_reset_link}}</div><div style=\"padding: 5px; font-size: 11pt;\">Tenga en cuenta: hasta que se haya cambiado su contraseña, su contraseña actual seguirá siendo válida. El enlace Olvidé mi contraseña estará disponible solo por tiempo limitado.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, 'Nueva contraseña para administrador {{business_name}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Hola, {{name}}</div><div style=\"padding: 5px; font-size: 11pt;\">Aquí está su nueva contraseña para {{business_name}}.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de inicio de sesión: {{login_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">Nombre de usuario: {{nombre de usuario}}</div><div style=\"padding: 5px; font-size: 11pt;\">Contraseña: {{contraseña}}</div><div style=\"padding: 5px; font-size: 11pt;\">Por razones de seguridad, cambie su contraseña después de iniciar sesión.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div><div style=\"padding:0px 5px\">\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, 'Recordatorio de pago de facturas {{business_name}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Este es un recordatorio de facturación de que su factura N°. {{invoice_id}} que se generó el {{invoice_date}} vence el {{invoice_due_date}}.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: {{invoice_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: {{invoice_id}}</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: {{invoice_amount}}</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: {{invoice_due_date}}</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, 'Aviso de factura vencida {{business_name}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Este es el aviso de que su factura no. {{invoice_id}} que se generó el {{invoice_date}} ahora está vencido.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: {{invoice_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: {{invoice_id}}</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: {{invoice_amount}}</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: {{invoice_due_date}}</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, 'Confirmación de pago de factura {{business_name}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Este es un recibo de pago de la factura {{invoice_id}} enviado el {{invoice_date}}.</div><div style=\"padding: 5px; font-size: 11pt;\">Inicie sesión en su portal de cliente para ver esta factura.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: {{invoice_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: {{invoice_id}}</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: {{invoice_amount}}</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: {{invoice_due_date}}</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div><div style=\"padding:0px 5px\">\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, 'Confirmación de reembolso de factura {{business_name}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Esta es la confirmación de que se ha procesado un reembolso para la Factura {{invoice_id}} enviada el {{invoice_date}}.</div><div style=\"padding: 5px; font-size: 11pt;\">URL de factura: {{invoice_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">ID de factura: {{invoice_id}}</div><div style=\"padding: 5px; font-size: 11pt;\">Monto de la factura: {{invoice_amount}}</div><div style=\"padding: 5px; font-size: 11pt;\">Fecha de vencimiento: {{invoice_due_date}}</div><div style=\"padding: 5px; font-size: 11pt;\">Si tiene alguna pregunta o necesita ayuda, no dude en contactarnos.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, 'Cotización {{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding: 5px; font-size: 11pt;\"><div style=\"padding: 5px; font-size: 11pt;\">Saludos,</div><div style=\"padding: 5px; font-size: 11pt;\">Estimado {{contact_name}},</div><div style=\"padding: 5px; font-size: 11pt;\">Aquí está la cotización que solicitó. La cotización es válida hasta {{valid_until}}.</div><div style=\"padding: 5px; font-size: 11pt;\">Citar URL única: {{quote_url}}</div><div style=\"padding: 5px; font-size: 11pt;\">Puede ver la cotización en cualquier momento y simplemente responder a este correo electrónico con cualquier otra pregunta o requisito.</div><div style=\"padding: 5px; font-size: 11pt;\">Atentamente,</div><div style=\"padding: 5px; font-size: 11pt;\">Equipo de {{business_name}}</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Información de inicio de sesión {{business_name}} ', '<p>Estimado {{client_name}},</p><p><br></p><p>Bienvenido a {{business_name}}.</p><p>Puede rastrear su facturación, perfil, transacciones desde este portal.</p><p>Su información de inicio de sesión es la siguiente:</p><p>---------------------------------------------------------------------------------------</p><p>URL de inicio de sesión: {{client_login_url}}</p><p>Dirección de correo electrónico: {{client_email}}</p><p>Contraseña: su contraseña elegida.</p><p>----------------------------------------------------------------------------------------</p><p>Le agradecemos mucho por elegirnos.</p><p>Equipo de {{business_name}}</p>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_employees`
--

CREATE TABLE `sys_employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `hiredate` date NOT NULL,
  `emid` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `payroll` enum('Salary','Hourly','Commission','Other') NOT NULL,
  `etype` enum('FullTime','PartTime','Other') NOT NULL,
  `classf` enum('Parmanent','Seasonal','Temp','Contract') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emname` varchar(100) NOT NULL,
  `emcontact` varchar(100) NOT NULL,
  `emrelation` varchar(100) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `supervisor` varchar(100) NOT NULL,
  `nextreview` date NOT NULL,
  `separation` date NOT NULL,
  `notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `description`, `qty`, `amount`, `taxed`, `taxamount`, `total`, `duedate`, `paymentmethod`, `notes`) VALUES
(1191, 1000, 1000, '', 0, '', 'TV BOX 2GB/16GB', '1', '180.00', 0, '0.00', '180.00', '2020-06-26', '', ''),
(1195, 1001, 1003, '', 0, '', 'WIFI CAM', '1', '170.00', 1, '0.00', '170.00', '2020-06-27', '', ''),
(1194, 1001, 1003, '', 0, '', '', '0', '0.00', 0, '0.00', '0.00', '2020-06-27', '', ''),
(1196, 1002, 1003, '', 0, '', 'TV BOX 2GB/16GB', '1', '180.00', 0, '0.00', '180.00', '2020-06-27', '', ''),
(1197, 1003, 1006, '', 0, '', 'Audífono Bluetooth', '1', '25.00', 0, '0.00', '25.00', '2020-06-27', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(10,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `account`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`) VALUES
(1000, 1000, 'José Miranda López', '', '', '2020-06-26', '2020-06-26', '2020-06-26 23:32:13', '180.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '180.00', '0.00', '0.00', 'Paid', '', '', '6086935411', '5385021170', '0', '2020-06-26', 0, ''),
(1001, 1003, 'Paul Ticona', '', '', '2020-06-27', '2020-06-27', '2020-06-27 18:50:53', '170.00', 'p', '0.00', '0.00', '0.00', 'I.G.V.', '30.60', '0.00', '200.60', '18.00', '0.00', 'Paid', '', '', '9021053303', '5008267411', '0', '2020-06-27', 0, ''),
(1002, 1003, 'Paul Ticona', '', '', '2020-06-27', '2020-06-27', '2020-06-27 18:56:14', '180.00', 'p', '0.00', '0.00', '0.00', 'I.G.V.', '32.40', '0.00', '212.40', '18.00', '0.00', 'Paid', '', '', '7841427769', '4526410881', '0', '2020-06-27', 0, ''),
(1003, 1006, 'Miguel Cotrado Ramirez', '', '', '2020-06-27', '2020-06-27', '2020-06-27 19:03:34', '25.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '25.00', '0.00', '0.00', 'Paid', '', '', '2721519596', '0550821737', '0', '2020-06-27', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date NOT NULL DEFAULT '0000-00-00',
  `last_sold` date NOT NULL DEFAULT '0000-00-00',
  `e` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_items`
--

INSERT INTO `sys_items` (`id`, `name`, `unit`, `sales_price`, `item_number`, `description`, `type`, `track_inventroy`, `negative_stock`, `available`, `status`, `added`, `last_sold`, `e`) VALUES
(1009, 'WIFI CAM', '', '170.00', '1', '', 'Product', 'No', 'No', 0, 'Active', '0000-00-00', '0000-00-00', ''),
(1010, 'TV BOX 2GB/16GB', '', '180.00', '1010', '', 'Product', 'No', 'No', 0, 'Active', '0000-00-00', '0000-00-00', ''),
(1011, 'Audífono Bluetooth', '', '25.00', '1011', '', 'Product', 'No', 'No', 0, 'Active', '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(184, '2015-07-22 15:12:31', 'Admin', 'Login Successful demo@example.com', 1, '::1'),
(185, '2016-09-20 10:25:53', 'Admin', 'Login Successful demo@example.com', 1, '::1'),
(186, '2016-09-20 09:43:32', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(187, '2020-06-26 23:09:50', 'Admin', 'Autenticación fallida admin@admin.com', 0, '::1'),
(188, '2020-06-26 23:09:57', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(189, '2020-06-26 23:28:47', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(190, '2020-06-26 23:31:42', 'Admin', 'Nuevo Contacto añadido José Miranda López [CID: 1000]', 1, '::1'),
(191, '2020-06-26 23:36:41', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(192, '2020-06-26 23:39:39', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(193, '2020-06-27 00:11:08', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(194, '2020-06-27 00:16:01', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(195, '2020-06-27 00:17:25', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(196, '2020-06-27 00:21:40', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(197, '2020-06-27 00:22:10', 'Admin', 'Nuevo Contacto añadido Ángel Rivera [CID: 1001]', 1, '::1'),
(198, '2020-06-27 00:22:58', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(199, '2020-06-27 00:23:21', 'Admin', 'Nuevo Contacto añadido Tom Marsano [CID: 1002]', 1, '::1'),
(200, '2020-06-27 17:56:17', 'Admin', 'Nuevo Contacto añadido Paul Ticona [CID: 1003]', 1, '::1'),
(201, '2020-06-27 17:57:33', 'Admin', 'Nuevo Contacto añadido Javier Mejía [CID: 1004]', 1, '::1'),
(202, '2020-06-27 18:28:46', 'Admin', 'Nuevo Contacto añadido Ramón [CID: 1005]', 1, '::1'),
(203, '2020-06-27 18:29:57', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(204, '2020-06-27 18:43:40', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(205, '2020-06-27 18:44:39', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(206, '2020-06-27 18:50:08', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(207, '2020-06-27 18:58:20', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(208, '2020-06-27 19:01:24', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(209, '2020-06-27 19:02:44', 'Admin', 'Nuevo Contacto añadido Miguel Cotrado Ramirez [CID: 1006]', 1, '::1'),
(210, '2020-06-27 19:05:58', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1'),
(211, '2020-06-27 19:08:47', 'Admin', 'Autenticado con éxito admin@admin.com', 1, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_notes`
--

CREATE TABLE `sys_notes` (
  `id` int(11) NOT NULL,
  `contents` mediumtext NOT NULL,
  `type` enum('Private','Public') NOT NULL DEFAULT 'Private',
  `o` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `uo` int(11) NOT NULL,
  `vtoken` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_orgs`
--

CREATE TABLE `sys_orgs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contacts` mediumtext NOT NULL,
  `phone` varchar(100) NOT NULL,
  `phones` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `emails` mediumtext NOT NULL,
  `web` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `notes` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_payee`
--

CREATE TABLE `sys_payee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_payee`
--

INSERT INTO `sys_payee` (`id`, `name`, `sorder`) VALUES
(6, 'Amazon', 0),
(7, 'eBay', 0),
(8, 'Google', 0),
(12, 'Employee', 0),
(17, 'Gas Station', 0),
(18, 'Government', 0),
(19, 'Other', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_payers`
--

CREATE TABLE `sys_payers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_payers`
--

INSERT INTO `sys_payers` (`id`, `name`, `sorder`) VALUES
(1, 'Employer', 2),
(2, 'City Bank', 3),
(5, 'Government', 0),
(7, 'John Doe', 0),
(8, 'Jane Doe', 0),
(9, 'Client X', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`) VALUES
(1, 'Paypal', 'Paypal Email', 'eanthonyq@outlook.com', 'paypal', 'Invoices', 'S/', '1', '', '', '', 'Active', 1, NULL, ''),
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Active', 2, NULL, NULL),
(3, 'Bank / Cash', 'Instructions', 'Make a Payment to Our Bank Account <br>Bank Name: City Bank <br>Account Name: Sadia Sharmin <br>Account Number: 1505XXXXXXXX <br>', 'manualpayment', '', '', '', '', '', '', 'Active', 3, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Active', 4, NULL, NULL),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5, NULL, NULL),
(6, 'CCAvenue', 'Merchant ID', 'your merchant id', 'ccavenue', '', 'insert working key here', 'INR', '1', '', '', 'Inactive', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_pl`
--

INSERT INTO `sys_pl` (`id`, `c`, `status`, `sorder`) VALUES
(1, 'flmcs', 0, 0),
(2, 'notes', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 4),
(3, 'Credit Card', 5),
(4, 'Debit', 6),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 2),
(10, 'ATM Withdrawals', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_projects`
--

CREATE TABLE `sys_projects` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `status` enum('Open','Closed') NOT NULL DEFAULT 'Open',
  `description` text NOT NULL,
  `source` text NOT NULL,
  `started` date NOT NULL,
  `finished` date NOT NULL,
  `totaltime` varchar(20) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT 0,
  `account` text NOT NULL,
  `aid` int(11) NOT NULL DEFAULT 0,
  `tags` text NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_repeating`
--

CREATE TABLE `sys_repeating` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payer` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `method` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Uncleared',
  `description` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `pdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'arduino101.info@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_servers`
--

CREATE TABLE `sys_servers` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `stype` varchar(50) NOT NULL,
  `apikey` mediumtext NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `due` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remind` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` mediumtext NOT NULL,
  `status` enum('Completed','In Progress','Not Started') NOT NULL,
  `pid` int(11) NOT NULL,
  `ttime` varchar(50) NOT NULL,
  `sub` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `aid` int(11) NOT NULL,
  `bal` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`) VALUES
(1, 'I.G.V.', '', '', '18.00', 0, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payer` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `payerid` int(11) NOT NULL DEFAULT 0,
  `payeeid` int(11) NOT NULL DEFAULT 0,
  `method` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bal` decimal(18,2) NOT NULL DEFAULT 0.00,
  `iid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_tt`
--

CREATE TABLE `sys_tt` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` varchar(50) NOT NULL DEFAULT '0',
  `end` varchar(50) NOT NULL DEFAULT '0',
  `allday` enum('true','false') NOT NULL DEFAULT 'false',
  `url` varchar(200) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT 0,
  `tid` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(45) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` mediumtext NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`) VALUES
(1, 'admin@admin.com', 'Administrator', '', 'ibLJRKHoI8Qfk', 'Admin', 'Active', '2020-06-27 19:08:47', '', '2014-10-20 01:43:07', 'No', 'No', '$1$ZW/.uF5.$.rwCeLiguoBzYzf3waOnY1', 'gravatar', 'No', '', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wm_sysemails`
--

CREATE TABLE `wm_sysemails` (
  `id` int(11) NOT NULL,
  `email` mediumtext NOT NULL,
  `password` mediumtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_notes`
--
ALTER TABLE `app_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flmcs_users`
--
ALTER TABLE `flmcs_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hrm_attendance`
--
ALTER TABLE `hrm_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hrm_employees`
--
ALTER TABLE `hrm_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pl_assets`
--
ALTER TABLE `pl_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_calls`
--
ALTER TABLE `sys_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_cases`
--
ALTER TABLE `sys_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indices de la tabla `sys_employees`
--
ALTER TABLE `sys_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indices de la tabla `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indices de la tabla `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_notes`
--
ALTER TABLE `sys_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_orgs`
--
ALTER TABLE `sys_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_payee`
--
ALTER TABLE `sys_payee`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_payers`
--
ALTER TABLE `sys_payers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indices de la tabla `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_projects`
--
ALTER TABLE `sys_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_repeating`
--
ALTER TABLE `sys_repeating`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_servers`
--
ALTER TABLE `sys_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indices de la tabla `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_tt`
--
ALTER TABLE `sys_tt`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wm_sysemails`
--
ALTER TABLE `wm_sysemails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_notes`
--
ALTER TABLE `app_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT de la tabla `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `flmcs_users`
--
ALTER TABLE `flmcs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `hrm_attendance`
--
ALTER TABLE `hrm_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hrm_employees`
--
ALTER TABLE `hrm_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pl_assets`
--
ALTER TABLE `pl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `sys_calls`
--
ALTER TABLE `sys_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_cases`
--
ALTER TABLE `sys_cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `sys_employees`
--
ALTER TABLE `sys_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1198;

--
-- AUTO_INCREMENT de la tabla `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT de la tabla `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT de la tabla `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de la tabla `sys_notes`
--
ALTER TABLE `sys_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_orgs`
--
ALTER TABLE `sys_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_payee`
--
ALTER TABLE `sys_payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `sys_payers`
--
ALTER TABLE `sys_payers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sys_projects`
--
ALTER TABLE `sys_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `sys_repeating`
--
ALTER TABLE `sys_repeating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT de la tabla `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sys_servers`
--
ALTER TABLE `sys_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `sys_tt`
--
ALTER TABLE `sys_tt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wm_sysemails`
--
ALTER TABLE `wm_sysemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
