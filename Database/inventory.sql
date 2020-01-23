-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 11:31 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `email`, `Password`) VALUES
('', 'dv', 'admin'),
('test', 'gateway428@gmail.com', '$2y$10$tCNzAOcHvRp.ef0Jrbee4OfVtX2/MCGK0hbb8JiwfgLYxsvBZXmmq');

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `C_ID` varchar(100) DEFAULT NULL,
  `Description` varchar(37) CHARACTER SET utf8 DEFAULT NULL,
  `Size` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Total_Quantity` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`C_ID`, `Description`, `Size`, `Quantity`, `Total_Quantity`, `Price`) VALUES
('C001', 'ARDUINO UNO R3', 'L', 1, 21, 7945),
('C012', 'BREAD BOARD', 'L', 20, 24, 1490),
('C015', 'JUMPER WIRES (ALL TYPES)', 'L', 17, 17, 85),
('C016', 'RASPBERRY PI MODEL 3B', 'L', 10, 10, 29500),
('C024', 'USB TO MICRO USB CABLE', 'L', 4, 4, 240),
('C036', 'SERVO MOTOR SG-90', 'L', 11, 11, 1190),
('C035', '2-CHANNEL RELAY', 'M', 6, 6, 700),
('C004', '16*2 LCD DISPLAY', 'M', 17, 17, 1700),
('C006', '9V BATTERY', 'M', 17, 17, 272),
('C008', 'BATTERY HOLDER BOX', 'M', 17, 17, 1190),
('C019', 'HDMI TO VGA CONVERTER', 'M', 10, 10, 2450),
('C028', 'IR REMOTE', 'M', 4, 4, 680),
('C029', 'DHT-11 TEMPRATURE AND HUMIDITY SENSOR', 'M', 14, 14, 1310),
('C037', 'L298 DRIVER', 'M', 4, 4, 500),
('C038', 'DC MOTOR 500RPM WITH WHEEL', 'M', 4, 4, 640),
('C041', 'L293 DRIVER', 'M', 5, 5, 400),
('C045', 'MOTOR', 'M', 10, 10, 650),
('C048', 'PI CAMERA', 'M', 3, 3, 1350),
('C052', 'TP 4056 LI-ON CHARGER', 'M', 2, 2, 130),
('C062', 'SOLONOID 12V DC', 'M', 1, 1, 300),
('C070', 'GSM MODULE (SIM-900)', 'M', 2, 2, 1560),
('C002', 'ARDUINO PRO MINI', 'M', 17, 17, 3740),
('C003', '7-SEGMENT LED DISPLAY', 'M', 15, 17, 119),
('C026', 'HC-SR-04 ULTRASONIC DISTANCE SENSOR', 'M', 4, 4, 380),
('C030', 'GAS SENSOR', 'M', 4, 4, 1180),
('C033', 'PIR MOTION SENSOR', 'M', 5, 5, 450),
('C050', 'ARDUINO MEGA 2560', 'M', 1, 1, 700),
('C053', '2200 MaH BATTERY', 'M', 0, 1, 1350),
('C054', 'MQ-03 GAS SENSOR MODULE', 'M', 1, 1, 150),
('C057', 'MQ-135 GAS SENSOR MODULE', 'M', 2, 2, 300),
('C072', 'PH SENSOR', 'M', 1, 1, 1850),
('C074', 'HEART BEAT SENSOR', 'M', 4, 4, 1180),
('C034', 'SOIL MOISTURE SENSOR', 'S', 4, 4, 600),
('C042', 'CASTOR WHEELS', 'S', 7, 7, 405),
('C044', 'RFID KIT', 'S', 10, 10, 1500),
('C068', 'PARALLAX PAM', 'S', 1, 1, 65),
('C007', '9V BATTERY CONNECTORS', 'S', 17, 17, 85),
('C009', '4*4 MATRIX KETPAD', 'S', 17, 17, 1275),
('C011', 'LED (R-G-B)', 'S', 17, 17, 238),
('C014', 'DC JACK MALE', 'S', 12, 17, 255),
('C020', 'CARD READER', 'S', 10, 10, 2250),
('C022', 'WIFI MODULE (ESP 8266) NODE MCU', 'S', 11, 11, 2580),
('C023', 'WIFI ESP-01', 'S', 4, 4, 720),
('C025', 'HC-05 BLUETOOTH MODULE', 'S', 9, 9, 2500),
('C027', 'IR PROXIMITY SENSOR', 'S', 4, 4, 208),
('C032', 'FTDI TO TTL CONVERTER', 'S', 4, 4, 560),
('C043', 'RTC MODULE 1307', 'S', 12, 12, 1030),
('C047', 'LM317', 'S', 1, 1, 10),
('C051', 'SHAFT 6MM', 'S', 1, 1, 25),
('C058', 'WROOM ESP 32', 'S', 1, 1, 550),
('C059', 'ADXL 1335 ACCELROMETER SENSOR', 'S', 1, 1, 250),
('C069', 'GPS MODULE', 'S', 1, 1, 450),
('C071', '10K POT', 'S', 2, 2, 20),
('C073', 'HEART BEAT MODULE', 'S', 0, 1, 250),
('C075', 'ADAFRUIT HML5883L', 'S', 1, 1, 200),
('C010', 'PUSH BUTTON SWITCHES', 'S', 19, 19, 57),
('C013', 'BUZZER', 'S', 17, 17, 340),
('C021', 'MICRO SD CARD (16GB)', 'S', 10, 10, 3900),
('C031', 'LIGHT DEPENDENT RESISTOR (LDR)', 'S', 14, 14, 80),
('C063', 'IRF 540 MOSFET', 'S', 1, 1, 20),
('C064', 'BC 547 TRANSISTOR', 'S', 2, 2, 6),
('C066', '7805', 'S', 1, 1, 10),
('C067', '7892', 'S', 1, 1, 10),
('C005', '5V 1A DC ADAPTER', NULL, 17, 17, 1615),
('C017', 'RASPBERRY PI CASE', NULL, 10, 10, 1300),
('C018', 'RASPBERRY PI ADAPTER', NULL, 10, 10, 2500),
('C039', 'CHASIS', NULL, 4, 4, 220),
('C040', 'WHEELS', NULL, 8, 8, 280),
('C046', 'CABLE', NULL, 3, 3, 105),
('C055', 'SOLAR PANEL 4*4', NULL, 1, 1, 350),
('C056', 'ADAPTOR', NULL, 3, 3, 210),
('C065', 'ADAPTOR FOR GSM', NULL, 1, 1, 130),
('C049', '1-CHANNEL RELAY', NULL, 1, 1, 50),
('C060', 'LED (RED)', NULL, 65, 65, 65),
('C061', 'LED (YELLOW)', NULL, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Dept_name` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `quantity_taken` int(11) NOT NULL,
  `Rollno` int(11) NOT NULL,
  `g_id` varchar(255) DEFAULT NULL,
  `i_year` varchar(255) NOT NULL,
  `c_ID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Dept_name`, `issue_date`, `quantity_taken`, `Rollno`, `g_id`, `i_year`, `c_ID`) VALUES
('IT', '2020-01-23', 20, 1, 'B1', 'TE', 'C001'),
('IT', '2020-01-23', 5, 1, 'B1', 'TE', 'C014'),
('IT', '2020-01-23', 2, 1, 'B1', 'TE', 'C003'),
('CS', '2020-01-23', 1, 16, NULL, 'TE', 'C073'),
('CS', '2020-01-23', 1, 16, NULL, 'TE', 'C053'),
('IT', '2020-01-23', 4, 2, 'C1', 'TE', 'C012');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Rollno` int(11) NOT NULL,
  `g_id` varchar(25) DEFAULT NULL,
  `S_name` varchar(255) NOT NULL,
  `Dept_name` varchar(255) NOT NULL,
  `s_year` varchar(255) NOT NULL DEFAULT 'TE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Rollno`, `g_id`, `S_name`, `Dept_name`, `s_year`) VALUES
(1, 'B1', 'YO', 'IT', 'TE'),
(2, 'C1', 'Rak', 'IT', 'TE'),
(3, 'B1', 'LOL', 'IT', 'TE'),
(3, NULL, 'MAn', 'CS', 'TE'),
(16, NULL, 'Gam', 'EXTC', 'TE'),
(16, 'B4', 'yo', 'IT', 'TE'),
(16, NULL, 'tar', 'CS', 'TE'),
(31, 'B4', 'Get', 'IT', 'TE');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
