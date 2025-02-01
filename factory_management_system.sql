-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2025 at 06:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `factory_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Purchase_Items` varchar(50) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Phone_No` varchar(50) NOT NULL,
  `Product_Amount` double NOT NULL,
  `Pay_Amount` double NOT NULL,
  `Date` date DEFAULT NULL,
  `Remaining_Amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `Address`, `Purchase_Items`, `Quantity`, `Phone_No`, `Product_Amount`, `Pay_Amount`, `Date`, `Remaining_Amount`) VALUES
(1, 'Sana', 'abc Town', 'Pasta', 2, '123-456-7890', 5, 10, '2024-05-12', 0),
(2, 'Amna', 'xyz City', 'Burger', 3, '987-654-3210', 3, 9, '2024-05-13', 0),
(3, 'Abdullah', 'B  block, Karachi', 'Fruit Salad', 1, '555-555-5555', 2, 2.5, '2024-05-14', 0),
(4, 'Khaqan', 'New City, Okara', 'Lasagna', 2, '111-222-3333', 4, 8, '2024-05-15', 0),
(5, 'Faizan', 'DHA, Lahore', 'Pizza', 1, '444-444-4444', 6, 6.5, '2024-05-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `DOJ` date NOT NULL,
  `Absences` int(11) NOT NULL,
  `Received_Salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Address`, `Designation`, `Salary`, `DOJ`, `Absences`, `Received_Salary`) VALUES
(1, 'Hafsa Maryam', 'Jail Road, Bwn', 'Manager', 60000.00, '2024-01-15', 0, 60000.00),
(2, 'Mahnoor Mudassar', 'Punjab Society, Lahore', 'Assistant Manager', 50000.00, '2024-02-10', 0, 50000.00),
(3, 'Komal Asawar', 'A block, Bwp', 'Sales Executive', 40000.00, '2024-03-05', 0, 40000.00),
(4, 'Zunaisha Malik', 'B block, Multan', 'Accountant', 45000.00, '2024-04-20', 0, 45000.00),
(5, 'Inshrah Maryam', 'C block, Multan', 'Production Supervisor', 38000.00, '2024-05-08', 0, 38000.00),
(6, 'Naeem-ur-Rehman', 'Farid town, Swl', 'Quality Control Inspector', 35000.00, '2024-06-12', 0, 35000.00),
(7, 'Abdul Rafey', 'D block Multan', 'Warehouse Manager', 42000.00, '2024-07-30', 0, 42000.00);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `Serial_No` int(11) NOT NULL,
  `Purchase_Product` double DEFAULT NULL,
  `Renovation` double DEFAULT NULL,
  `Salaries` double DEFAULT NULL,
  `Sum_of_Expenses` double DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`Serial_No`, `Purchase_Product`, `Renovation`, `Salaries`, `Sum_of_Expenses`, `Date`) VALUES
(1, 500, 1000, 2000, 3500, '2024-05-12'),
(2, 600, 800, 2500, 3900, '2024-05-13'),
(3, 700, 1200, 2200, 4100, '2024-05-14'),
(4, 550, 900, 2400, 3850, '2024-05-15'),
(5, 650, 950, 2300, 3900, '2024-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Serial_No` int(11) NOT NULL,
  `Salesman_Name` varchar(50) DEFAULT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Profit` double NOT NULL,
  `Product` double NOT NULL,
  `Salaries` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Serial_No`, `Salesman_Name`, `Employee_Name`, `Customer_Name`, `Profit`, `Product`, `Salaries`) VALUES
(1, 'Abdul Rehman', 'Hafsa Maryam', 'Sana', 500, 76, 59000),
(2, 'Arslan', 'Mahnoor Mudassar', 'Amna', 500, 98, 45000),
(3, 'Fatima', 'Komal Asawar', 'Abdullah', 500, 65, 47000),
(4, 'Sana', 'Zunaisha Malik', 'Khaqan', 500, 119, 48000),
(5, 'Usman', 'Inshrah Maryam', 'Faizan', 500, 83, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `Day` int(11) NOT NULL,
  `Expenses` double DEFAULT NULL,
  `Purchase` double DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Daily_profit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`Day`, `Expenses`, `Purchase`, `Salary`, `Daily_profit`) VALUES
(1, 500, 1000, 2000, 500),
(2, 600, 1200, 2200, 800),
(3, 700, 1300, 2400, 900),
(4, 550, 1100, 2100, 700),
(5, 800, 1500, 2600, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Serial_No` int(11) NOT NULL,
  `Salt` int(11) NOT NULL,
  `Sugar` int(11) NOT NULL,
  `Flour` int(11) NOT NULL,
  `Oil` int(11) NOT NULL,
  `Yeast` int(11) NOT NULL,
  `Packing_reel` int(11) DEFAULT NULL,
  `Cartoon_Box` int(11) DEFAULT NULL,
  `Packing_Shopper` int(11) DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Serial_No`, `Salt`, `Sugar`, `Flour`, `Oil`, `Yeast`, `Packing_reel`, `Cartoon_Box`, `Packing_Shopper`, `Sum`) VALUES
(1, 10, 20, 30, 5, 2, 3, 4, 2, 76),
(2, 15, 25, 35, 8, 3, 4, 5, 3, 98),
(3, 8, 18, 28, 4, 1, 2, 3, 1, 65),
(4, 20, 30, 40, 10, 4, 5, 6, 4, 119),
(5, 12, 22, 32, 6, 2, 3, 4, 2, 83);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `Serial_No` int(11) NOT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Employee_Salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`Serial_No`, `Employee_ID`, `Employee_Name`, `Employee_Salary`) VALUES
(1, 1, 'Hafsa Maryam', 59000),
(2, 2, 'Mahnoor Mudassar', 45000),
(3, 3, 'Komal Asawar', 47000),
(4, 4, 'Zunaisha Malik', 48000),
(5, 5, 'Inshrah Maryam', 55000),
(6, 6, 'Naeem-ur-Rehman', 52000),
(7, 7, 'Abdul Rafey', 57000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Serial_No` int(11) NOT NULL,
  `Sale_Man_Sales` double DEFAULT NULL,
  `Customer_Sales` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Serial_No`, `Sale_Man_Sales`, `Customer_Sales`) VALUES
(1, 1500, 2000),
(2, 1800, 2200),
(3, 1600, 2100),
(4, 1700, 2300),
(5, 1900, 2400);

-- --------------------------------------------------------

--
-- Table structure for table `sale_man`
--

CREATE TABLE `sale_man` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Purchase_Items` varchar(50) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Phone_No` varchar(50) NOT NULL,
  `Sum` double NOT NULL,
  `Pay_Amount` double NOT NULL,
  `Date` date DEFAULT NULL,
  `Remaining_Amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_man`
--

INSERT INTO `sale_man` (`ID`, `Name`, `Address`, `Purchase_Items`, `Quantity`, `Phone_No`, `Sum`, `Pay_Amount`, `Date`, `Remaining_Amount`) VALUES
(1, 'Abdul Rehman', 'Islamabad', 'Bread', 10, '123-456-7890', 50, 50, '2024-05-12', 0),
(2, 'Arslan', 'Bahawalpur', 'Noodles', 15, '987-654-3210', 75, 75, '2024-05-13', 0),
(3, 'Fatima', 'Lahore', 'Pasta', 20, '555-555-5555', 100, 100, '2024-05-14', 0),
(4, 'Sana', 'Islamabad', 'Brownies', 25, '111-222-3333', 125, 125, '2024-05-15', 0),
(5, 'Usman', 'Faisalabad', 'Manchurian', 30, '444-444-4444', 150, 150, '2024-05-16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`Day`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`Serial_No`),
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `sale_man`
--
ALTER TABLE `sale_man`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `Day` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale_man`
--
ALTER TABLE `sale_man`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
