SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- Database: `bnkms`

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Demo Name', 696969, 'PENDING');


CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Customer_Name` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Landline_no` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT '0',
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `bank_customers` (`Id`, `Customer_Name`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Landline_no`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `CITIZENSHIP`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Nominee_name`, `Nominee_ac_no`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(1, 'Liam Moore', 'password', NULL, NULL, '1010112', 'Male', '1478545555', '464 Edgewood Avenue', '2248 Roosevelt Road', 'India', 'Delhi', 'Delhi', '74100', '1011071010112', 'Demo Branch', '1011', '1478569000', '178965412300', 3650.00, 0, '7415896650', 'liamoore@gmail.com', '421351746137', 6897, NULL, '1995-02-15', 'Demo', 'none', 'none', '27/07/21 02:45:15 PM', '22/07/21 10:07:46 PM', 'ACTIVE', 'Saving'),
(2, 'William Richards', 'password', NULL, NULL, '1011046', 'Male', '2145896666', '4126 Broadway Street', '2588 Mill Street', 'US', 'California', 'Fresno', '88660', '1011801011046', 'Demo Branch ', '1011', '24580001', '145896587450', 7090.00, 0, '7850001250', 'william@gmail.com', '421360993922', 2957, NULL, '1990-03-15', 'CLF', 'none', 'none', '27/07/21 02:41:02 PM', '26/07/21 10:34:49 PM', 'ACTIVE', 'Saving'),
(3, 'Christine Moore', 'password', NULL, NULL, '1011426', 'Female', '4520001250', '996 Quincy Street', '4196 Boggess Street', 'US', 'California', 'Los Angeles', '99660', '1011411011426', 'Demo Branch ', '1011', '14701400', '256900000012', 1962.00, 0, '7012500010', 'christine@gmail.com', '421317135335', 2587, NULL, '1995-09-17', 'CLF', 'none', 'none', '26/07/21 11:56:16 PM', '26/07/21 11:24:10 PM', 'ACTIVE', 'Saving'),
(6, 'Romona Weiss', 'password', NULL, NULL, '1011742', 'Female', '2140002150', '2402 Lake Floyd Circle', '4390 Circle Drive', 'US', 'Washington', 'Seattle', '220069', '1011751011742', 'Demo Branch ', '1011', '30140250', '201477775010', 111.00, 0, '7014569690', 'romonaw@gmail.com', '421353616626', 7345, NULL, '1990-10-10', 'WHT', 'none', 'none', '27/07/21 03:07:21 PM', '27/07/21 02:55:25 PM', 'ACTIVE', 'Saving'),
(4, 'Trevor Russo', 'password', NULL, NULL, '1011439', 'Male', '2145890000', '4040 Russell Street', '1380 Rocky Road', 'US', 'Texas', 'Texas City', '12126', '1011951011439', 'Demo Branch ', '1011', '12350000', '102589000012', 5274.00, 0, '7025690001', 'trusso@gmail.com', '421393986422', 4483, NULL, '1992-01-01', 'TXC', 'none', 'none', '27/07/21 03:52:29 PM', '26/07/21 11:52:58 PM', 'ACTIVE', 'Saving'),
(5, 'Kathryn White', 'password', NULL, NULL, '1011768', 'Female', '2585200012', '3767 Amethyst Drive', '313 Harper Street', 'US', 'Florida', 'Miami', '66990', '1011921011768', 'Demo Branch ', '1011', '01474100', '301025800012', 215.00, 0, '7016002001', 'kathrynww@gmail.com', '421323539393', 2473, NULL, '1996-09-25', 'FLR', 'none', 'none', '27/07/21 03:51:34 PM', '27/07/21 10:44:50 AM', 'ACTIVE', 'Saving'),
(7, 'Premier Internet', 'password', NULL, NULL, '1011722', 'Others', '2580000021', '1769 Courtney Rd', '1769 Courtney Rd', 'US', 'California', 'San Diego', '96690', '1011591011722', 'Demo Branch ', '1011', '31450002', '102000002500', 210.00, 0, '7014780000', 'printernet@gmail.com', '421395174682', 4924, NULL, '2019-02-20', 'CLF', 'none', 'none', '27/07/21 03:50:56 PM', '27/07/21 03:20:32 PM', 'ACTIVE', 'Saving'),
(8, 'Edward Weese', 'password', NULL, NULL, '1011950', 'Male', '2147850010', '909 Reaves St', '6969 Red Fox Rd', 'US', 'Florida', 'Orlando', '66001', '1011801011950', 'Demo Branch ', '1011', '08996001', '120000256980', 5738.00, 0, '7410000010', 'edward@gmail.com', '421319983246', 9454, NULL, '1992-12-12', 'FLR', 'none', 'none', '27/07/21 03:52:02 PM', '27/07/21 03:42:57 PM', 'ACTIVE', 'Saving'),
(9, 'Sanjana Gupta', 'password', NULL, NULL, '3576112', 'Female', '1485443352', '434 Edgewood Avenue', '1248 Roosevelt Road', 'India', 'Delhi', 'Delhi', '72700', '1011053710112', 'Abmo Branch', '1341', '1478376000', '178972412300', 1650.00, 0, '7415342650', 'sanjanagupta@gmail.com', '421275746137', 9297, NULL, '1435-04-15', 'Abmo', 'none', 'none', '29/07/21 02:25:15 PM', '25/07/21 10:07:46 PM', 'ACTIVE', 'Saving'),
(10, 'Ambika Yadav', 'password', NULL, NULL, '9610112', 'Female', '7238543555', '497 Durgpur Avenue', '2573 Mswsevelt Road', 'India', 'Delhi', 'Delhi', '84100', '8724071010112', 'Dewd Branch', '1063', '7428569000', '825965412300', 6320.00, 0, '8245896650', 'ambikayadav@gmail.com', '856351746137', 6835, NULL, '1895-02-15', 'Dewd', 'none', 'none', '12/07/21 02:55:15 PM', '02/07/21 09:07:46 PM', 'ACTIVE', 'Saving');


CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `CITIZENSHIP`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'Sean Smith', '210001', 'password', '7412225696', 'ssmith@gmail.com', 'Male', 'Revenue', '10121995', '379145632000', '14569855', '445 Woodlawn Drive', '27/07/21 03:53:18 PM');

CREATE TABLE `passbook_1010112` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

INSERT INTO `passbook_1010112` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552', '26/12/20 02:55:43 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470', '26/12/20 03:01:35 PM', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(5, '841496557', '26/07/21 11:08:04 PM', 'William Richards/1011801011046/1011', '0', '250', '4750', 'Billings'),
(6, '491178166', '27/07/21 02:46:16 PM', 'Trevor Russo/1011951011439/1011', '0', '1100', '3650', 'Personal');

ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

