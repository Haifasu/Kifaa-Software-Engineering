-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2025 at 09:02 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it320`
--

-- --------------------------------------------------------

--
-- Table structure for table `offerrequests`
--

CREATE TABLE `offerrequests` (
  `RequestID` int(11) NOT NULL,
  `TraderID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  `OfferDetails` text,
  `RequestStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offerrequests`
--

INSERT INTO `offerrequests` (`RequestID`, `TraderID`, `OwnerID`, `PostID`, `OfferDetails`, `RequestStatus`) VALUES
(5, 1, 5, 1, 'اريد تبديل السرير ب سرير اطفال جديد', 'مرفوض'),
(6, 2, 1, 1, ' اريد تبديل هاتف ب ايباد اير', 'انتظار'),
(7, 3, 2, 2, 'اريد تبديل المكمل الغذائي ب اثقال وزن 2 كيلو قرام', 'مرفوض'),
(8, 4, 1, 1, 'لدي عرض بتبديل هاتفك ال 13 ب هاتف 12 برو', 'تم القبول'),
(9, 5, 4, 4, 'هل يمكنك تبديل معطفك ب نظاره شمسيه فاخره', 'انتظار'),
(10, 6, 5, 5, 'اريد تبديل السرير ب كنبة استرخاء فاخره وشبة جديدة', 'تم القبول');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `PostID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PostTitle` varchar(255) NOT NULL,
  `Description` text,
  `Category` varchar(100) DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`PostID`, `UserID`, `PostTitle`, `Description`, `Category`, `ImageURL`) VALUES
(1, 1, 'هاتف iPhone 13', '                هاتف iPhone 13 بحالة ممتازة، مع بطارية تدوم طويلًا وكاميرا بدقة عالية.\r\n                الجهاز يأتي بسعة تخزين 128 جيجابايت، ولا توجد به أي خدوش أو أعطال.\r\n                متاح للتبادل مع لابتوب أو جهاز لوحي من الفئة المتوسطة.', 'electronics', 'uploads/phone.png'),
(2, 2, 'مكمل غذائي', 'مكمل غذائي VitaBoost يحتوي على مزيج من الفيتامينات والمعادن الأساسية لتعزيز الطاقة والمناعة.\r\nمنتج طبيعي 100% بدون إضافات صناعية، متوفر في عبوة تحتوي على 60 كبسولة.', 'health', 'uploads/gym.png'),
(3, 3, 'رواية \"عالم بلا حدود\"', 'رواية مشوقة تأخذك في رحلة خيالية عبر عوالم متعددة، مليئة بالمغامرات والتشويق.\r\nمناسبة لمحبي الأدب الخيالي والمغامرات، متوفرة بنسخة ورقية ورقمية.', 'books', 'uploads/books.png'),
(4, 4, 'معطف شتوي', 'معطف شتوي أنيق مصنوع من الصوف الطبيعي، يوفر الدفء والأناقة في نفس الوقت.\r\nمتوفر بألوان متعددة وتصميم عصري يناسب جميع المناسبات.', 'clothing', 'uploads/jacket.png'),
(5, 5, 'كرسي فاخر', 'كرسي بتصميم أنيق ومريح، مصنوع من الخشب الطبيعي مع لمسة عصرية وطلاء مقاوم للخدوش. يوفر دعمًا مثاليًا للظهر، ومثالي للاستخدام في المنازل والمكاتب، ليمنح المكان طابعًا فخمًا وعصريًا.', 'home', 'uploads/chair.png'),
(6, 6, 'تصميم موقع باستخدام الجافا', 'نقدم لك خدمة تصميم مواقع احترافية باستخدام تقنيات الجافا الحديثة، مع واجهة مستخدم جذابة وسهلة الاستخدام، لضمان سرعة الأداء والأمان الكامل. الخدمة مثالية للأفراد والشركات الباحثين عن حلول رقمية مبتكرة. احصل على استشارة مجانية الآن لتبدأ مشروعك الرقمي!', 'services', 'uploads/web.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Email`, `Name`, `Age`, `PhoneNumber`, `Password`, `City`, `Gender`) VALUES
(1, 'ahmed@gmail.com', 'أحمد', 23, '5547382943', 'ah1234567', 'الرياض', 'ذكر'),
(2, 'sarah@gmail.com', 'ساره', 32, '5593569258', 'saraha$4', 'جدة', 'أنثى'),
(3, 'Fahad@gmail.com', 'فهد', 19, '05564739673', 'Fa34ha24$', 'الدمام', 'ذكر'),
(4, 'Jood@hotmail.com', 'جود', 26, '05565539864', 'JOOD123#@', 'مكة', 'أنثى'),
(5, 'Salem@hotmail.com', 'سالم', 39, '5534674896', 'Haaaafj13$', 'الرياض', 'ذكر'),
(6, 'Lama@gmail.com', 'لمى', 21, '5567943567', 'llaammaa12334@', 'جدة', 'أنثى');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offerrequests`
--
ALTER TABLE `offerrequests`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `TraderID` (`TraderID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `PostID` (`PostID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offerrequests`
--
ALTER TABLE `offerrequests`
  MODIFY `RequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offerrequests`
--
ALTER TABLE `offerrequests`
  ADD CONSTRAINT `offerrequests_ibfk_1` FOREIGN KEY (`TraderID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `offerrequests_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `offerrequests_ibfk_3` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
