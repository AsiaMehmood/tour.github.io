-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 14, 2021 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` varchar(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Faiqa', 'Rashid', 'faiqarashid99@gmail.com', 'Islamabad', 03147483640, 'Faisal Mosque'),
(2, 'Sehrish', 'Rani', 'sehrishrani2000@gmail.com', 'Rawalpindi', 03331234561, 'Malam Jabba'),
(3, 'Yusra', 'Waheed', 'yusrawaheed11@gmail.com', 'Rawat', 03118689560, 'LokVirsa'),
(4, 'Rabia', 'Saleem', 'rabiasaleem123@gmail.com', 'Lahore', 03084577234, 'Rawal Lake'),
(5, 'Hina', 'Bibi', 'hina123@gmail.com', 'Karachi', 03036234123, 'Rawal Lake'),
(6, 'Fariya', 'rana', 'fariya56@gmail.com', 'Kashmir', 03036287823, 'Monal');


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--
-- For Booking Tour
INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(1, 'admin', 'Adm12345', 'admintms@gmail.com', 'Islamabad', 03125690087);


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'hina', 'hina123@gmail.com', 'good website'),
(2, 'fariya', 'fariya56@gmail.com', 'nice website'),
(3, 'arsalan', 'arsalan11y@gmail.com', 'your website looks good and nice user interface'),
(4, 'rabia', 'rabiasaleem123@gmail.com', 'your website looks good and nice user interface');
-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Sarina Hotel', '78869565', 'Islamabad'),
(2, 'Hotel one', '78869565', 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('Faisal Mosque', 'Faisal Mosque is the mosque in Islamabad, Pakistan. Located on the foothills of Margalla Hills in Islamabad, the mosque features a contemporary design consisting of eight sides of concrete shell and is inspired by a Bedouin tent..The postcard-worthy landscape of the mosque along with its awe-inspiring design and elegant interior finishing has made it one of the most visited monuments in the entire country. Owing to its angular main structure, tall minarets, well-manicured courtyards and pools with fountains, Faisal Mosque is the perfect blend of traditional and contemporary Islamic architecture.Also referred to as Faisal Masjid or Shah Faisal Mosque by some, this mosque was a gift from the late King Faisal bin Abdul-Aziz of Saudi Arabia. The mosque was named after him to honour his commitment to the construction of this breathtaking masterpiece in the federal capital. Moreover, the Faisal Mosque was designed by a Turkish architect.', 'images//destination//fm1.jpg', 'images//destination//fm2.jpg', 'images//destination//fm3.jpg', 'images//destination//fm4.jpg', 5000),
('Monal', 'Sitting on top of the Potohar, nestled against the pristine Margallas, and looking over the plains of Peshawar and Lahore, the brick and mortar of Islamabad may be modern, but its culture and traditions are embedded in the centuries of our history that have unfolded between the ranges of Khyber and Bolan and the valley of Mehran. And in many ways, The Monal named after a pheasant of rare and exquisite beauty dwelling a little further north epitomes this amalgam of the modern and the ancient. The resort is a touch of modernity set in pastoral idyll. Situated at a height of about 1173 meters above sea level, it is equipped with the latest facilities, but offers an ambience cultivated by heritage.At The Monal we take pride in offering an authentic Pakistani cuisine that is as rich and diverse as our legacy. It has been produced by the fusion of indigenous flavors and aromas with culinary bequests from Arabia, Persia and Central Asia, as the many tribes, people and cultures blended over centuries across the valleys and plains of the Indus.', 'images//destination//monal1.jpg', 'images//destination//monal2.jpg', 'images//destination//monal3.jpg', 'images//destination//monal4.jpg', 20000),
('Rawal Lake', 'Rawal Lake is an artificial reservoir built on the Korang River,Islamabad which runs from the Margalla Hills. It was built in 1962 by the Punjab Government to cater the need for water shortage in the area. Today, Punjab Irrigation Departments Small Dams Organisation (SDO) still manages the water levels, spillways and other relevant technical aspects of the Rawal Dam.It covers an area of 8.8 square km and a maximum depth of 102ft(31m). It is located in the area of Margalla Hills National Park. It covers the needs for water in the cities of Islamabad and Rawalpindi along with being a popular tourist spot in the city. Also it has helped to maintain Islamabads underground water level and environment friendly atmosphere.', 'images//destination//rawal2.jpg', 'images//destination//rawal1.jpg', 'images//destination//rawal3.jpg', 'images//destination//rawal4.jpg', 5000),
('Pir Chinasi', 'Pir Chinasi is a shrine and tourist destination located 30 kilometers (19 mi) east of Muzaffarabad city on the top of hills at an elevation of 2,900 metres (9,500 ft). The mountain peak has gained large fame for its ziyarat of a famous Saint Pir Chinasi Known as Pir Sayed Hussain shah Bukhari. This place is also visited by tourists who can get a great view of Muzaffarabad and rural areas around the hidden city. The Area is also famous for its take off points for Para gliding, Snow cross jeep rally.A track also leeds to Peer-e-esimaar, another tourist destination with thick forest and fresh environment.', 'images//destination//pirchinasi1.jpg', 'images//destination//pirchinasi2.jpg', 'images//destination//pirchinasi3.jpg', 'images//destination//pirchinasi4.jpg', 10000),
('Rawalakot', 'Rawalakot is located at a distance of 120 km from Islamabad. It is also known as Pearl Valley as almond blossoms in the valley gives the impression of pearls during the summer season. It is also the capital of the Pooch District. During summers, it is full of lush green fields and blooming flowers. This place has all the basic necessaries for tourists and an important place to visit because of its pleasant weather and extreme natural beauty. Cheap and best accommodation in the form of private houses, guest houses, and hotels are available for the visitors. There are many engaging activities like rock climbing, trekking, hiking, water-based sports, paragliding for adventure-loving tourists.', 'images//destination//rawalakot1.jpg', 'images//destination//rawalakot2.jpg', 'images//destination//rawlakot3.jpg', 'images//destination//rawal4.jpg', 20000),
('Neelam Valley', 'Neelum Valley is a 144 km long bow-shaped thick forested region in Azad Kashmir in Pakistan Administered Kashmir. It is named after the Neelum river, which flows through the length of the valley. The valley is connected from Muzaffarabad by Neelam road, which leads up to Kel. The road condition from Muzaffarabad to Athmuqam is very good and suitable for any kind of transport. From Keran to Kel road condition is not well and not suitable for low floor vehicles. In winters road onward Keran is blocked due to heavy snowfall and it is very difficult to reach upper parts of the valley.Vans service is only available from Muzaffarabad to Athmuqam after every 30 minutes. Buses run daily between Muzaffarabad and Kel in good weather. Jeeps and horses are available to reach remote areas of the valley.', 'images//destination//neelam1.jpg', 'images//destination//neelam2.jpg', 'images//destination//neelam3.jpg', 'images//destination//neelam4.jpg', 19000),
('Shounter Lake', 'Simply offering everything that speaks of wonderful mother nature. Show up in this area during May to August; the climate is your friend and the facilities provided to reach here are top-notch. You can easily board a Jeep from Kel, Neelum Valley.If you are fond of camping, do not hesitate because many tourists also seem to find it as a perfect camping spot. Due to it being favorable for camping more than hoteling, you find other accommodation facilities here. The Shounter lake may be small but it is surely worth a sight should you board a Jeep from Kel. All in all, the magnificent geography of this area short lists it in one of the top tourist attractions in Azad Kashmir.', 'images//destination//shounter1.jpg', 'images//destination//shounter2.jpg', 'images//destination//shounter3.jpg', 'images//destination//shounter4.jpg', 5000),
('Toli Pir', 'Just look at it! Just look at how far it goes. It seems to have everything in terms of greenery you could ask for in a location. A famous peak that you will find your way about if you head to Rawalkot, or if you are not aware of it, you will learn about it while your stay in Rawalkot. Located 8800 above sea level, this peak makes you feel like you are on top of everything.Head to Toli Pir in the final months of Spring; the climate is favorable. The rest of the months it is just chilling due to its high altitude. Also, in order to explore the area to its maximum potential, it is always advisable to visit from April to early October.', 'images//destination//tolipir1.jpg', 'images//destination//tolipir2.jpg', 'images//destination//tolipir3.jpg', 'images//destination//tolipir4.jpg', 16000),
('Jhelum Valley', 'This particular valley of Azad Kashmir is a host of domestic and international tourists, crowding all around in summer. A natural wonder that people seem to find is the curling river passing from East to West amid the gigantic mountains. A region called, “Leepa Valley” in Jhelum is one of the popular tourist attractions people long to visit.In summer, ripened rice fields emerge in full swing and contemporary wooden houses of inhabitants showcase a picturesque view. Cherries like you have never tasted before, the size of people you have never seen before and Walnut, oh that cracking walnut is a treat you can only get, nowhere other than Jhelum Valley in Azad Kashmir.', 'images//destination//jhelum1.jpg', 'images//destination//jhelum2.jpg', 'images//destination//jhelum3.jpg', 'images//destination//jhelum4.jpg', 21000),
('Naran Kaghan', 'Naran and Kaghan are tourist destinations located in the Mansehra district of Khyber Pakhtunkhwa province of Pakistan. The phrase “Naran Kaghan” is actually a combination of two words, originally derived from Naran Valley and Kaghan Valley that are adjacent to each other. Geographically, Naran is a tourist town situated inside the greater Kaghan Valley at an altitude of 2,409 meters (7,904 ft). It is located at a distance of approximately 23 kilometers (14.3 miles).', 'images//destination//naran1.jpg', 'images//destination//naran2.jpg', 'images//destination//naran3.jpg', 'images//destination//naran4.jpg', 21200),
('Leepa Valley', 'Do not mean to steal your words, but yes, this is a STAIRWAY TO HEAVEN! Could you believe this is Pakistan? Certainly, this the kind of location that would force you to rub your eyes twice to acknowledge reality. The Leepa Valley definitely uplifts the value of Azad Kashmir as one of the top tourist attractions in Pakistan. Opened in May to November for voyagers in a most welcoming climate you can find in Azad Kashmir. Approaching in the area are high mountains and tall pine trees, this area is easily accessible from Muzaffarabad. There is also many facilities of commuting in local jeeps that operate from after you cross Reshian.', 'images//destination//leepa1.jpg', 'images//destination//leepa2.jpg', 'images//destination//leepa3.jpg', 'images//destination//leepa4.jpg', 19000);


-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('admin', 'ad123', '2021-12-31 04:41:06pm'),
('hina', '784596', '2022-01-20 05:56:33am');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Faisal Mosque', 'Islamabad'),
(2, 'Monal', 'Islamabad'),
(3, 'Rawal Lake', 'Islamabad'),
(4, 'Pir Chinasi', 'Kashmir'),
(5, 'Rawalakot', 'Kashmir'),
(6, 'Neelam Valley', 'Kashmir'),
(7, 'Shounter Lake', 'Kashmir'),
(8, 'Toli Pir', 'Kashmir'),
(9, 'Jhelum Valley', 'Kashmir'),
(10, 'Naran Kaghan', 'KPK'),
(11, 'Leepa ', 'Kashmir'),
(12, 'Rawalkot', 'Kashmir');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'Faiqa', 'faiqa123@gmail.com', 03125690087, 'Islamabad'),
(2, 'Sehrish', 'sehrish123@gmai.com', 0345968678, 'Rawalpindi'),
(3, 'Rabia', 'rabia34@gmail.com', 03178969665, 'Rawalpindi'),
(4, 'Yusra', 'yusra11@gmail.com', 03378964567, 'Rawat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
