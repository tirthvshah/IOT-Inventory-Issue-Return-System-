-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 06:14 AM
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
  `Password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `email`, `Password`, `token`) VALUES
('test', 'gateway428@gmail.com', '$2y$10$0pl.ZkYeq2gn3.PVLWWlVeLaZzFmuhs5TPnIIJKV6gyA6YDzsR6gK', 'sb8dxi6r37');

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `C_ID` varchar(100) NOT NULL,
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
('C001', 'ARDUINO UNO R3', 'L', 21, 21, 7945),
('C002', 'ARDUINO PRO MINI', 'M', 17, 17, 3740),
('C003', '7-SEGMENT LED DISPLAY', 'M', 17, 17, 119),
('C004', '16*2 LCD DISPLAY', 'M', 17, 17, 1700),
('C005', '5V 1A DC ADAPTER', NULL, 17, 17, 1615),
('C006', '9V BATTERY', 'M', 17, 17, 272),
('C007', '9V BATTERY CONNECTORS', 'S', 17, 17, 85),
('C008', 'BATTERY HOLDER BOX', 'M', 17, 17, 1190),
('C009', '4*4 MATRIX KETPAD', 'S', 17, 17, 1275),
('C010', 'PUSH BUTTON SWITCHES', 'S', 19, 19, 57),
('C011', 'LED (R-G-B)', 'S', 17, 17, 238),
('C012', 'BREAD BOARD', 'L', 24, 24, 1490),
('C013', 'BUZZER', 'S', 17, 17, 340),
('C014', 'DC JACK MALE', 'S', 17, 17, 255),
('C015', 'JUMPER WIRES (ALL TYPES)', 'L', 17, 17, 85),
('C016', 'RASPBERRY PI MODEL 3B', 'L', 10, 10, 29500),
('C017', 'RASPBERRY PI CASE', NULL, 10, 10, 1300),
('C018', 'RASPBERRY PI ADAPTER', NULL, 10, 10, 2500),
('C019', 'HDMI TO VGA CONVERTER', 'M', 10, 10, 2450),
('C020', 'CARD READER', 'S', 10, 10, 2250),
('C021', 'MICRO SD CARD (16GB)', 'S', 10, 10, 3900),
('C022', 'WIFI MODULE (ESP 8266) NODE MCU', 'S', 11, 11, 2580),
('C023', 'WIFI ESP-01', 'S', 4, 4, 720),
('C024', 'USB TO MICRO USB CABLE', 'L', 4, 4, 240),
('C025', 'HC-05 BLUETOOTH MODULE', 'S', 9, 9, 2500),
('C026', 'HC-SR-04 ULTRASONIC DISTANCE SENSOR', 'M', 4, 4, 380),
('C027', 'IR PROXIMITY SENSOR', 'S', 4, 4, 208),
('C028', 'IR REMOTE', 'M', 4, 4, 680),
('C029', 'DHT-11 TEMPRATURE AND HUMIDITY SENSOR', 'M', 14, 14, 1310),
('C030', 'GAS SENSOR', 'M', 4, 4, 1180),
('C031', 'LIGHT DEPENDENT RESISTOR (LDR)', 'S', 14, 14, 80),
('C032', 'FTDI TO TTL CONVERTER', 'S', 4, 4, 560),
('C033', 'PIR MOTION SENSOR', 'M', 5, 5, 450),
('C034', 'SOIL MOISTURE SENSOR', 'S', 4, 4, 600),
('C035', '2-CHANNEL RELAY', 'M', 6, 6, 700),
('C036', 'SERVO MOTOR SG-90', 'L', 11, 11, 1190),
('C037', 'L298 DRIVER', 'M', 4, 4, 500),
('C038', 'DC MOTOR 500RPM WITH WHEEL', 'M', 4, 4, 640),
('C039', 'CHASIS', NULL, 4, 4, 220),
('C040', 'WHEELS', NULL, 8, 8, 280),
('C041', 'L293 DRIVER', 'M', 5, 5, 400),
('C042', 'CASTOR WHEELS', 'S', 7, 7, 405),
('C043', 'RTC MODULE 1307', 'S', 12, 12, 1030),
('C044', 'RFID KIT', 'S', 10, 10, 1500),
('C045', 'MOTOR', 'M', 10, 10, 650),
('C046', 'CABLE', NULL, 3, 3, 105),
('C047', 'LM317', 'S', 1, 1, 10),
('C048', 'PI CAMERA', 'M', 3, 3, 1350),
('C049', '1-CHANNEL RELAY', NULL, 1, 1, 50),
('C050', 'ARDUINO MEGA 2560', 'M', 1, 1, 700),
('C051', 'SHAFT 6MM', 'S', 1, 1, 25),
('C052', 'TP 4056 LI-ON CHARGER', 'M', 2, 2, 130),
('C053', '2200 MaH BATTERY', 'M', 1, 1, 1350),
('C054', 'MQ-03 GAS SENSOR MODULE', 'M', 1, 1, 150),
('C055', 'SOLAR PANEL 4*4', NULL, 1, 1, 350),
('C056', 'ADAPTOR', NULL, 3, 3, 210),
('C057', 'MQ-135 GAS SENSOR MODULE', 'M', 2, 2, 300),
('C058', 'WROOM ESP 32', 'S', 1, 1, 550),
('C059', 'ADXL 1335 ACCELROMETER SENSOR', 'S', 1, 1, 250),
('C060', 'LED (RED)', NULL, 65, 65, 65),
('C061', 'LED (YELLOW)', NULL, 10, 10, 10),
('C062', 'SOLONOID 12V DC', 'M', 1, 1, 300),
('C063', 'IRF 540 MOSFET', 'S', 1, 1, 20),
('C064', 'BC 547 TRANSISTOR', 'S', 2, 2, 6),
('C065', 'ADAPTOR FOR GSM', NULL, 1, 1, 130),
('C066', '7805', 'S', 1, 1, 10),
('C067', '7892', 'S', 1, 1, 10),
('C068', 'PARALLAX PAM', 'S', 1, 1, 65),
('C069', 'GPS MODULE', 'S', 1, 1, 450),
('C070', 'GSM MODULE (SIM-900)', 'M', 2, 2, 1560),
('C071', '10K POT', 'S', 2, 2, 20),
('C072', 'PH SENSOR', 'M', 1, 1, 1850),
('C073', 'HEART BEAT MODULE', 'S', 1, 1, 250),
('C074', 'HEART BEAT SENSOR', 'M', 4, 4, 1180),
('C075', 'ADAFRUIT HML5883L', 'S', 1, 1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Dept_name` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `quantity_taken` int(11) NOT NULL,
  `Rollno` int(11) NOT NULL,
  `g_id` varchar(255) DEFAULT NULL,
  `i_year` varchar(255) NOT NULL,
  `c_ID` varchar(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Dept_name`, `issue_date`, `due_date`, `quantity_taken`, `Rollno`, `g_id`, `i_year`, `c_ID`, `c_name`) VALUES
('IT', '2021-02-23', '2021-03-02', 2, 23, 'B1', '2', 'c', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` double DEFAULT NULL,
  `s_year` varchar(100) DEFAULT NULL,
  `Rollno` double DEFAULT NULL,
  `Dept_name` varchar(50) NOT NULL,
  `g_id` varchar(100) DEFAULT NULL,
  `S_name` varchar(100) DEFAULT NULL,
  `Stud_mobile` double DEFAULT NULL,
  `Email_stopped` varchar(100) DEFAULT NULL,
  `par_mobile` double DEFAULT NULL,
  `par_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `s_year`, `Rollno`, `Dept_name`, `g_id`, `S_name`, `Stud_mobile`, `Email_stopped`, `par_mobile`, `par_email`) VALUES
(20170770, 'TE', 1, 'IT', 'TE_IOT_01', 'AAKANKSHA PADMANABHAN UMA', 9757238859, 'a.padmanabhan@somaiya.edu', 7738368877, 'padmanabhanuma@yahoo.com'),
(20171422, 'TE', 4, 'IT', 'TE_IOT_02', 'CHOUDHARY KULDEEP SARJUKUMAR SANAINA', 7977763205, 'kuldeep.c@somaiya.edu', 9892104303, 'sarjuchoudhary23@gmail.com'),
(20171671, 'TE', 5, 'IT', 'TE_IOT_02', 'CHOUDHARY RADHIKA SHYAM MADHU', 8169120755, 'radhika.sc@somaiya.edu', 9819263226, 'shyam1508@gmail.com'),
(20171635, 'TE', 6, 'IT', 'TE_IOT_02', 'D KUMAR KOUSHAL RAJENDRA VENU', 8850577012, 'dkoushal.d@somaiya.edu', 9892958810, 'kdrajendra@yahoo.com'),
(20171493, 'TE', 7, 'IT', 'TE_IOT_03', 'DAMA RIDHI MAHENDRA NEETA', 9768332882, 'ridhi.dama@somaiya.edu', 9820852111, 'mahendradama1977@gmail.com'),
(20170245, 'TE', 8, 'IT', 'TE_IOT_03', 'DEDHIA AAYUSH SHAILESH SAROJ', 7021365705, 'aayush.sd@somaiya.edu', 9869381357, 'shaileshdedhia10@gmail.com'),
(20170769, 'TE', 9, 'IT', 'TE_IOT_03', 'DESHPANDE YASH DEEPAK PRIYA', 9029878778, 'deshpande.y@somaiya.edu', 9860921476, 'deepak.deshpande@sbi.co.in'),
(20171400, 'TE', 10, 'IT', 'TE_IOT_04', 'DHOLAKIA RIDDHI PRAVIN CHHAYA', 9029378546, 'riddhi.dholakia@somaiya.edu', 9867478940, 'riddhidholakia924@gmail.com'),
(20171231, 'TE', 11, 'IT', 'TE_IOT_04', 'DOSSA INZIYA SARFARAZ FATIMA', 9867391961, 'inziya.dossa@somaiya.edu', 9833656876, 'sharfarazd@rediffmail.com'),
(20170746, 'TE', 12, 'IT', 'TE_IOT_04', 'GANDHI PRUTHIL JAYESH JIGNA', 7875708276, 'pruthil.g@somaiya.edu', 9167025151, 'jayesh.poojaplywood@gmail.com'),
(20171016, 'TE', 13, 'IT', 'TE_IOT_05', 'GHELANI UDIT JAYESH HARSHA', 9769481582, 'udit.ghelani@somaiya.edu', 8849681490, 'jayeshghelani01@yahoo.co.in'),
(20170541, 'TE', 14, 'IT', 'TE_IOT_05', 'GHOSH TOMAL DINABANDHU SOMA', 8983465930, 'ghoshtomal1999@gmail.com', 8390023040, 'dinabandhughosh1969@gmail.com'),
(20171256, 'TE', 15, 'IT', 'TE_IOT_05', 'GIDWANI PAYAL BALRAM HONEY', 8080837340, 'payal.gidwani@somaiya.edu', 9422667373, 'harshitagidwani7@yahoo.com'),
(20171369, 'TE', 16, 'IT', 'TE_IOT_05', 'GORI URMI MANJI AMRUTA', 8451983264, 'urmi.gori@somaiya.edu', 9833292875, 'urmigori13@gmail.com'),
(20170567, 'TE', 18, 'IT', 'TE_IOT_07', 'JAIN NIRAJ SURAJMAL LALITA', 8452095566, 'niraj.sj@somaiya.edu', 9920811268, 'njain2698.nj@gmail.com'),
(20171190, 'TE', 19, 'IT', 'TE_IOT_07', 'JOSHI HITAISHI VIJAY JAHNAVI', 9769031634, 'hitaishi.j@somaiya.edu', 9869015289, 'vijayj97@gmail.com'),
(200000000, 'TE', 85, 'IT', NULL, 'roj', 343434343, 'fgfgf', 434, 'fffg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`C_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
