-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2018 at 01:38 PM
-- Server version: 10.1.25-MariaDB-
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesko_viberate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `display_name` varchar(255) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `display_name`) VALUES
(2, 'KUCKO'),
(13, 'ULTIMATE'),
(14, 'MANAGMENT'),
(15, 'SUPER KUCKO'),
(20, 'KUCKO-FORMS'),
(22, 'KUCKO-BOOKING'),
(23, 'KUCKO-ICO'),
(24, 'DESIGN'),
(25, 'KUCKO-REWARDING'),
(26, 'MARKETING'),
(27, 'STATISTICS'),
(28, 'KUCKO - DSS'),
(29, 'KUCKO-Stats');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_group`
--

CREATE TABLE `admin_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `admin_user_group`
--

INSERT INTO `admin_user_group` (`user_id`, `group_id`) VALUES
(1, 13),
(3, 13),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(7, 22),
(8, 2),
(9, 15),
(9, 29),
(10, 15),
(10, 29),
(11, 14),
(11, 25),
(12, 14),
(13, 13),
(14, 14),
(15, 27),
(16, 2),
(16, 22),
(17, 2),
(17, 23),
(18, 2),
(19, 2),
(19, 22),
(20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `glasbeniki`
--

CREATE TABLE `glasbeniki` (
  `user_id` int(2) NOT NULL,
  `twitter_user_id` int(10) NOT NULL,
  `screen_name` varchar(15) COLLATE utf8_slovenian_ci NOT NULL,
  `name` text COLLATE utf8_slovenian_ci NOT NULL,
  `profile_image` text COLLATE utf8_slovenian_ci NOT NULL,
  `followers` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `glasbeniki`
--

INSERT INTO `glasbeniki` (`user_id`, `twitter_user_id`, `screen_name`, `name`, `profile_image`, `followers`) VALUES
(1, 37518096, 'UMEK_1605', 'UMEK', 'http://pbs.twimg.com/profile_images/758958666531733504/LBeFnJMU_normal.jpg', 113631),
(2, 21447363, 'katyperry', 'KATY PERRY', 'http://pbs.twimg.com/profile_images/902653914465550336/QE3287ZJ_normal.jpg', 108670446),
(3, 21111883, 'ddlovato', 'Demi Lovato', 'http://pbs.twimg.com/profile_images/923629164644536320/PVpicW-n_normal.jpg', 55035207);

-- --------------------------------------------------------

--
-- Table structure for table `glasbeniki_tweets`
--

CREATE TABLE `glasbeniki_tweets` (
  `tweet_id` int(5) NOT NULL,
  `user_id` int(2) NOT NULL,
  `tweet_user_id` int(10) NOT NULL,
  `text` text COLLATE utf8_slovenian_ci NOT NULL,
  `retweet_count` int(10) NOT NULL,
  `favorite_count` int(10) NOT NULL,
  `tweet_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `glasbeniki_tweets`
--

INSERT INTO `glasbeniki_tweets` (`tweet_id`, `user_id`, `tweet_user_id`, `text`, `retweet_count`, `favorite_count`, `tweet_date`) VALUES
(1, 1, 37518096, 'Tune in for the second track of my latest release on @FORMmusic - \"Standard Cold\". Complete release is available ex… https://t.co/RP15zViOkW', 3, 16, '2018-01-30 11:05:05'),
(2, 1, 37518096, 'My new release \"Quest Chain\" is just out on @FORMmusic. Get it exclusively on @Beatport! https://t.co/zztejCa8In', 4, 12, '2018-01-29 16:03:13'),
(3, 1, 37518096, 'Quest Chain is coming out tomorrow on @FORMmusic! If you can\'t wait till then - you can preorder right now here: https://t.co/zztejCa8In', 4, 19, '2018-01-28 11:09:12'),
(4, 1, 37518096, 'My new release \"Quest Chain\", is coming out on @FORMmusic on January 29th. Be teased: https://t.co/n3xM3EtXb1', 8, 16, '2018-01-24 12:26:01'),
(5, 1, 37518096, 'I\'m happy to announce that I\'ll be playing on Festival 84 that will be taking place on the legendary Olympic mounta… https://t.co/0wkdHvThI3', 6, 24, '2018-01-23 11:06:05'),
(6, 1, 37518096, 'Save the date: January 29th 2018! My new release \"Quest Chain\" will be out on FORM Music. https://t.co/n3xM3EtXb1', 6, 12, '2018-01-17 13:32:01'),
(7, 1, 37518096, 'Full house last night at Industrial Copera! Fiesta!!! https://t.co/yHjkIPXUnS', 9, 28, '2018-01-14 10:28:34'),
(8, 1, 37518096, 'Back on the road! Next stop: Industrial Copera, Granada tomorrow! #techno https://t.co/WDoGyOM4NW', 8, 20, '2018-01-12 13:51:02'),
(9, 1, 37518096, 'RT @AndreaRomaDj: Follow the grow of the first music cryptocurrency @Viberate_com, get infos at https://t.co/rGMRtYVQN6 #viberate @UMEK_160…', 589, 0, '2018-01-08 15:34:57'),
(10, 1, 37518096, 'Get ready for the weekend! https://t.co/wp1vaeLyPH', 1, 14, '2018-01-05 14:06:03'),
(11, 1, 37518096, '2017 was a helluva year, but I know 2018 will be even greater! Happy new year! https://t.co/OHITidxMuA https://t.co/btD4fChFg7', 6, 22, '2018-01-01 14:19:53'),
(12, 2, 21447363, 'City of fallen angels.', 4512, 24972, '2018-01-31 01:59:53'),
(13, 2, 21447363, '???????????????????????? Another powerful woman, leading by example. We ALL have a responsibility to call out the absurd lack of equa… https://t.co/70MOLcMwrt', 7048, 36166, '2018-01-30 08:17:21'),
(14, 2, 21447363, 'tbh @Logic301 2020', 6872, 35235, '2018-01-29 07:39:27'),
(15, 2, 21447363, 'Here is @ferras’ ???? song ????and ????video ???? about redemption and resurrection, out now on @UnsubRecords ❗️This is my pers… https://t.co/xSuojoeV2d', 1263, 7356, '2018-01-26 21:28:53'),
(16, 2, 21447363, 'NEW YEAR, NEW POWERFUL ????SONG???? by @ferras. Check it out NOW: https://t.co/jCumtonfjM VIDEO OUT 2MORROW ???????? https://t.co/oVCS8IeNiZ', 1396, 8697, '2018-01-26 07:00:55'),
(17, 2, 21447363, '$—CrYpTo ClAwS—$ https://t.co/AXwp863uII', 1913, 10313, '2018-01-25 08:49:51'),
(18, 2, 21447363, '????????‼️SOUTH AFRICA‼️???????? #WITNESSTHETOUR is coming to YOU for ✌???? NIGHTS! I am over the moon to be performing there for… https://t.co/xzyl7EM78b', 2449, 12179, '2018-01-24 07:48:11'),
(19, 2, 21447363, 'SCCCCCCCCCUUUUUURRRRRTTTTTTTED into 2018 like ???? ????⤵️ See all the Abu Dhabi ????New Year\'s Eve ????adventures on #Xfinity https://t.co/jGPEwPytj8', 2902, 15699, '2018-01-24 00:41:01'),
(20, 2, 21447363, 'Don’t ask who wore it best cause it will forever be my dear friend Minerva Mouse????????❗️So delighted… https://t.co/ha3QErZC0q', 1635, 11080, '2018-01-23 08:41:10'),
(21, 2, 21447363, 'SHOUTOUT TO ALL MY GODDESSES THAT ARE CONTINUING THE RESISTANCE, STANDING UP FOR EQUALITY AND… https://t.co/8qSC5I0ESQ', 2322, 16040, '2018-01-21 00:30:20'),
(22, 2, 21447363, 'This is profoundly powerful. So proud of you friend. https://t.co/qjpfNIySiR', 4912, 26794, '2018-01-20 20:43:41'),
(23, 2, 21447363, '#tbt to when I thought I was winning 2018 and then fell into a jellyfish. kewl. https://t.co/he6mTG7WmU', 1737, 11062, '2018-01-18 21:43:04'),
(24, 2, 21447363, 'Red hot in #ninthlife #katykatgloss by me x @covergirl for my hot date with @stellamccartney… https://t.co/4Q0eFUjyef', 1176, 7306, '2018-01-18 04:53:28'),
(25, 2, 21447363, 'PILLOW POUT COMIN THROUGH! ???????? https://t.co/1LgdMCP7gx', 1327, 8129, '2018-01-18 01:05:12'),
(26, 2, 21447363, 'On Wednesdays, we wear...pink (or lavender, or red)! #KatyKatGloss ????\nhttps://t.co/GIncitGwlu https://t.co/7w7NzhrLlh', 1720, 9955, '2018-01-17 17:30:40'),
(27, 2, 21447363, 'I just about threw my phone across the room in pride for the words of truth that my friend @CoryBooker just deliver… https://t.co/K0Y9nhh7Nt', 2309, 12354, '2018-01-16 23:39:30'),
(28, 2, 21447363, '????#KatyKatGloss https://t.co/4Rd1xWssYL', 1299, 7237, '2018-01-16 22:50:18'),
(29, 2, 21447363, 'Are you a Candy Cat ????or do you prefer Cateloupe????? Are you a Cobalt Kitty or an Indigo Kat ????? Do you Pounce ???? or are… https://t.co/Rj76QcF44Y', 1784, 8849, '2018-01-16 20:23:54'),
(30, 2, 21447363, 'KITTENS! #KatyKatGloss ????my NEW line w/ @COVERGIRL is HERE! This isn\'t that 90s gloss that ur hair would get stuck i… https://t.co/ooKdHirdb8', 2584, 11095, '2018-01-16 14:15:40'),
(31, 2, 21447363, 'Putting the con in confidence since 1984 ???????? @ Dallas, Texas https://t.co/BBXWLaeqgs', 1732, 11655, '2018-01-14 07:38:22'),
(32, 2, 21447363, 'The holidays are over, but the season of GIVING is all year long❣️See some of the wonderful people I’ve gotten to m… https://t.co/fNXotSI3OB', 2728, 12759, '2018-01-14 01:20:29'),
(33, 2, 21447363, '????????I WANNA SEE U BANGKOK, KOK, KOK, U BANGKOK ???? ???????? Your Witness: The Tour tickets are on sale now!… https://t.co/hCCwsMjYH1', 3054, 14462, '2018-01-13 07:12:01'),
(34, 2, 21447363, 'After 90 years of serving L????KS &amp; smiles as the polka dot queen, it\'s time she got that recognition ????????! It will be a… https://t.co/3yRX26vfuc', 3886, 21953, '2018-01-12 00:10:26'),
(35, 2, 21447363, 'Very encouraged by so many magnificent women unifying and standing together in solidarity saying enough is enough t… https://t.co/vJ6z4wvI2h', 6204, 34619, '2018-01-08 05:52:49'),
(36, 2, 21447363, 'I don’t want to be current, I want to be transcendent.', 9545, 44233, '2018-01-08 00:16:59'),
(37, 3, 21111883, 'RT @NEDAstaff: Exciting news: @ddlovato will offer group therapy and @castcenters wellness workshops as part of her upcoming “Tell Me You L…', 2907, 0, '2018-01-31 22:58:30'),
(38, 3, 21111883, '#TellMeYouLoveMe is only $0.69 on @iTunes right now!! Get your copy here ???? https://t.co/MVFWGRHYdV https://t.co/ZBiJHb4Rgd', 3844, 21249, '2018-01-31 18:31:17'),
(39, 3, 21111883, 'RT @JustinTrudeau: It’s #BellLetsTalk Day - a time to keep having important conversations about mental health, and of course raise some mon…', 45654, 0, '2018-01-31 18:20:33'),
(40, 3, 21111883, '@IGGYAZALEA @digitalfon YUP!!!! I’m so down!!! ????????????‍♀️', 1872, 6997, '2018-01-30 22:33:44'),
(41, 3, 21111883, 'If you don’t have anything meaningful to say, don’t say it. Ask yourself who is benefitting from your tweet and wha… https://t.co/ryT2pREpYT', 26546, 88102, '2018-01-30 21:49:01'),
(42, 3, 21111883, 'I don’t understand why people feel the need to express their negativity on the internet for the world to see as if… https://t.co/U3WDCkR1AV', 62877, 206856, '2018-01-30 21:42:56'),
(43, 3, 21111883, 'I ???? you @IGGYAZALEA.. thanks for always having my back ????‍♀️ fucking love you', 6721, 35942, '2018-01-30 21:31:27'),
(44, 3, 21111883, 'Big news coming soon....... https://t.co/cbztwiWBd8', 31642, 200408, '2018-01-30 03:50:31'),
(45, 3, 21111883, 'Can’t wait to sing #GAMES on tour to all the fuck boys tryin to be in my life right now... ???????? BYE', 14889, 84505, '2018-01-30 02:47:31'),
(46, 3, 21111883, 'RT @HanaDallas_: #Lovatics #BestFanArmy #iHeartAwards https://t.co/PN8H33YIyt', 3192, 0, '2018-01-29 20:27:15'),
(47, 3, 21111883, 'RT @iheartDemi91: i\'m voting for #Batman as #CutestPet at the #iHeartAwards. go online and vote for him too! https://t.co/Voggsf7RoW', 3134, 0, '2018-01-29 20:11:34'),
(48, 3, 21111883, 'RT @fixourlionheart: rt for a vote. #SorryNotSorry #BestMusicVideo #iHeartAwards https://t.co/5HHCeBC8X2', 4781, 0, '2018-01-29 19:42:37'),
(49, 3, 21111883, '@iamKITTENS ????????????????', 395, 1506, '2018-01-29 06:43:53'),
(50, 3, 21111883, 'RT @iHeartRadio: RT to vote for @ddlovato\'s precious pup, #Batman! ???? #CutestPet #iHeartAwards https://t.co/VACRP3XQJg', 7014, 0, '2018-01-29 06:43:06'),
(51, 3, 21111883, 'I feel like Nicholas Cage would do extremely well in an escape room...', 7981, 64236, '2018-01-28 06:18:39'),
(52, 3, 21111883, 'Feeling like an empowered, strong and beautiful woman today. ✨', 26627, 128193, '2018-01-28 04:35:36'),
(53, 3, 21111883, 'Ellen!!! Happy Birthday ???????? Love you so much and I hope you have an amazing day ❤️❤️❤️ @TheEllenShow', 8183, 67252, '2018-01-26 20:53:09'),
(54, 3, 21111883, '#TELLMEYOULOVEMETOUR is in one month people ???????????? @djkhaled https://t.co/99dzJOQrS0 https://t.co/xrHh821poi', 4782, 21912, '2018-01-26 20:15:49'),
(55, 3, 21111883, '#TBT with a few must haves... Hoop earrings and @COREdrinks water ???? https://t.co/XFIQWOc5e2', 4852, 35407, '2018-01-25 22:56:46'),
(56, 3, 21111883, 'Had the best time with my Lovatics at the New York City Center tonight!! Thank youuu @AmericanAir and @Mastercard f… https://t.co/2fTAjRFHuF', 4570, 24427, '2018-01-25 05:14:31'),
(57, 3, 21111883, 'This yellow... OBSESSED ???? Can\'t wait to see you guys this Saturday at the Del Amo Fashion Center in Torrance!!… https://t.co/l2RRLCpr5S', 4536, 34775, '2018-01-25 00:35:22'),
(58, 3, 21111883, 'RT @GMA: .@ddlovato is bringing @castcenters on tour to provide free therapy and wellness sessions before concerts for fans! https://t.co/F…', 3945, 0, '2018-01-24 16:02:28'),
(59, 3, 21111883, 'RT @_castontour: CAST on Tour is BACK!!! #CastonTour #mikebayer #demilovato #CASTCenters https://t.co/SZka1MHqGK', 1675, 0, '2018-01-24 15:53:26'),
(60, 3, 21111883, 'RT @RobinRoberts: The talented and fabu @ddlovato is stopping by @GMA this morn with an important announcement about a cause that\'s close t…', 1196, 0, '2018-01-24 14:32:35'),
(61, 3, 21111883, 'Me listening to the new @falloutboy album ???? @petewentz https://t.co/g6SZvRpLLV https://t.co/FKWe5hml5a', 4779, 26932, '2018-01-23 23:53:04'),
(62, 3, 21111883, 'RT @castcenters: Tune in tomorrow for the BIG Announcement on #GoodMorningAmerica! @GMA @ddlovato @realmikebayer', 1356, 0, '2018-01-23 23:33:41'),
(63, 3, 21111883, 'Can’t sleep.... #help', 9789, 54271, '2018-01-23 07:09:16'),
(64, 3, 21111883, 'I fucking love radio stations in NY.. they support my music so much. So beyond grateful ????????', 6489, 65901, '2018-01-23 05:36:12'),
(65, 3, 21111883, 'RT @iHeartRadio: How many RTs can this get for @ddlovato? #Lovatics #BestFanArmy #iHeartAwards https://t.co/2efQITuxUn', 7837, 0, '2018-01-22 23:52:19'),
(66, 3, 21111883, 'RT @justcatchmedemi: Retweet to Vote! #Batman #CutestPet #iHeartAwards https://t.co/uWmQbCnwWl', 5377, 0, '2018-01-22 19:15:56'),
(67, 3, 21111883, 'RT @iHeartRadio: Today is all about you! #Lovatics #BestFanArmy #iHeartAwards RT to spread the good news! https://t.co/qLFYpNSQKs', 4528, 0, '2018-01-22 19:07:16'),
(68, 3, 21111883, '???????????? #Demi4Fabletics @fabletics https://t.co/Ptp2TRVu7Q https://t.co/SsOmsExEO5', 5642, 39339, '2018-01-22 18:32:55'),
(69, 3, 21111883, '#TellMeYouLoveMeTour ❤️ https://t.co/99dzJP82Jy https://t.co/ICnE3sT4to', 4711, 24697, '2018-01-22 01:27:51'),
(70, 3, 21111883, 'We added so many new colors in this collection ???? If you guys are in the LA area I\'d love to see you at the… https://t.co/4zaQIa1DvE', 4295, 29231, '2018-01-21 22:14:26'),
(71, 3, 21111883, 'RT @BellatorMMA: Two GOATS ???? ???? in the house. #Bellator192 https://t.co/dcUI9gI09J', 1865, 0, '2018-01-21 06:19:10'),
(72, 3, 21111883, 'So many awesome fights tonight from @BellatorMMA and @UFC. Both of whom are not going to repost this because I ment… https://t.co/UvLPH1rZDX', 2999, 23126, '2018-01-21 06:18:48'),
(73, 3, 21111883, 'https://t.co/KllxbjcbTd\nThank you @voguemagazine and Ivana Rihter for writing such an eye-opening and important art… https://t.co/RJkLkWGDll', 5482, 27968, '2018-01-20 22:05:27'),
(74, 3, 21111883, 'No longer depriving myself of treats (in moderation) and I’m not gonna lie, I put on a couple lbs since I’ve given… https://t.co/pA3joVjkXl', 22282, 177126, '2018-01-19 20:22:59'),
(75, 3, 21111883, 'Feeling gross today at a photo shoot but I’m choosing to accept what I see because I love myself for who I am and y… https://t.co/fBXx03q4za', 16836, 102987, '2018-01-19 20:18:42'),
(76, 3, 21111883, '@justcatchmedemi This is soooo sweet!!', 3158, 9719, '2018-01-19 20:15:43'),
(77, 3, 21111883, 'RT @justcatchmedemi: Camila Cabello talking about Demi on the Zach Sang Show https://t.co/tnmjfhdcbf', 5796, 0, '2018-01-19 20:15:31'),
(78, 3, 21111883, 'RT @billboard: .@LuisFonsi &amp; @ddlovato\'s \"Echame La Culpa\" hits No. 1 on the Latin Airplay chart https://t.co/wl7OuKl1Ge', 2335, 0, '2018-01-19 15:58:45'),
(79, 3, 21111883, 'RT @billboardlatin: Congratulations, @Luisfonsi @ddlovato #echamelaculpa is No.1! https://t.co/EiE5PgZK8h', 1936, 0, '2018-01-19 15:58:14'),
(80, 3, 21111883, 'I hate it when fans are unhappy with the set list.. help me put it together!! What do y’all definitely want to hear?', 7433, 59848, '2018-01-19 15:57:44'),
(81, 3, 21111883, '#BestFanArmy? #LOVATICS ❤️ #iheartawards https://t.co/MxldxSniLm', 10326, 30463, '2018-01-19 01:02:23'),
(82, 3, 21111883, 'RT @demilovatobr: @iHeartRadio RT to vote! #SorryNotSorry #BestMusicVideo #iHeartAwards https://t.co/htlpuqp6Ov', 4454, 0, '2018-01-19 01:00:28'),
(83, 3, 21111883, 'RT @ruinthethrill: \"let\'s make that dog party happen guys\" ???? #batman #cutestpet #iheartawards https://t.co/SdQ24SckTo', 3736, 0, '2018-01-19 00:56:00'),
(84, 3, 21111883, 'Just uploaded a video of me &amp; my band singing #TellMeYouLoveMe backstage at the #SimplyComplicated premiere last ye… https://t.co/Tx5vhTmjjG', 3937, 17604, '2018-01-18 18:17:02'),
(85, 3, 21111883, 'RT @CheatCodesMusic: damn @ddlovato our no promises video just hit 100 million views https://t.co/Lh25fdOFVB', 1818, 0, '2018-01-18 18:06:04'),
(86, 3, 21111883, 'What’s something you love about yourself? ☀️???????? #tellmeyouloveME https://t.co/BHeRjPJ4WF', 11302, 82108, '2018-01-18 05:59:01'),
(87, 3, 21111883, 'RT @iHeartRadio: The top 3 #CutestPet nominees of Week 1 are... #Toulouse, #Olivia + #Batman! (IN NO PARTICULAR ORDER) \n\nKeep voting for yo…', 3034, 0, '2018-01-18 01:27:06'),
(88, 3, 21111883, '@juuuIie Sis I have to play the hits', 1460, 5459, '2018-01-18 01:25:34'),
(89, 3, 21111883, 'Making the set list for tour is so hard... so many songs I want to play and not enough time!!!', 6932, 56332, '2018-01-18 01:08:32'),
(90, 3, 21111883, '@Camila_Cabello Of course girl! I’m so proud of you!!! ????????????', 10210, 32787, '2018-01-18 00:29:59'),
(91, 3, 21111883, 'What song would you want to hear the most on tour out of the following?', 5143, 17107, '2018-01-17 22:06:05'),
(92, 3, 21111883, 'What songs do you guys wanna hear on tour?', 4910, 38591, '2018-01-17 22:03:24'),
(93, 3, 21111883, 'Added even more brand NEW outfits to my #Demi4Fabletics collection today and we\'re celebrating with a little giveaw… https://t.co/qWI4rJhzSd', 3574, 21906, '2018-01-17 17:50:26'),
(94, 3, 21111883, '#SayThe7 and now wear the seven with us! Help support transgender and other targeted communities with this shirt fr… https://t.co/CNMN0eH9Bp', 2976, 12286, '2018-01-17 00:02:59'),
(95, 3, 21111883, '#bestfanarmy #CutestPet #bestmusicvideo https://t.co/KFJ1KSfIor', 3951, 8382, '2018-01-16 22:30:15'),
(96, 3, 21111883, 'Also - YOU CAN VOTE MORE THAN ONCE!!!!! LET’S GO LOVATICS!!!!!!!!', 5002, 26714, '2018-01-16 22:21:23'),
(97, 3, 21111883, 'A lot of you guys have asked me what my #1 tip is for a personal transformation... @Fabletics #21DaysOfMe… https://t.co/2ncfv1io76', 4322, 24673, '2018-01-16 20:23:58'),
(98, 3, 21111883, '@JayGlazer so proud of you and happy for you for joining the broadcast team for @BellatorMMA!!! Love you!!', 484, 1342, '2018-01-16 18:37:17'),
(99, 3, 21111883, 'RT @DiannaDeLaGarza: SEE??? He’s gotta win!! Vote now!! https://t.co/Jah7ccpOsb', 2306, 0, '2018-01-16 06:05:42'),
(100, 3, 21111883, 'Guys.... Batman HAS TO WIN THE @iHeartRadio AWARD FOR CUTEST PET!!!! It’s the biggest award I’ve.... I mean.... BAT… https://t.co/cOSxcALCdm', 5761, 18329, '2018-01-16 03:54:03'),
(101, 3, 21111883, 'Jealous - @Labrinth #mood', 4654, 26508, '2018-01-16 01:54:09'),
(102, 3, 21111883, '#TELLMEYOULOVEMETOUR ❤️ @djkhaled https://t.co/99dzJP82Jy https://t.co/4R7jP2ltQf', 4990, 21907, '2018-01-15 22:25:47'),
(103, 3, 21111883, '@TheEllenShow I LOVE YOU TOO ????', 1891, 10504, '2018-01-15 22:22:01'),
(104, 3, 21111883, 'Always love visiting @theellenshow ❤️ Thanks for having me Ellen!! Make sure you guys tune-in today to see my… https://t.co/zj95RZpfH9', 6277, 43649, '2018-01-15 20:15:47'),
(105, 3, 21111883, 'Yoga, acupuncture, therapy..... and now mma. ???????????????? #mykindofretreat #sopeaceful ????', 3711, 30682, '2018-01-15 00:48:37'),
(106, 3, 21111883, 'At a wellness retreat watching UFC fights between my sessions ???????????? https://t.co/YLpb3LQm7Q', 2957, 25501, '2018-01-15 00:45:21'),
(107, 3, 21111883, 'Society demonizes food too much. Just remember, it’s okay to eat things like cheese, flour and even sugar in modera… https://t.co/b9ch9S2neA', 10860, 63288, '2018-01-14 01:51:35'),
(108, 3, 21111883, 'Loving my strappy saoirse bra! What\'s your fave #Demi4Fabletics piece so far?? @fabletics @fableticseu… https://t.co/zTjq3y8bHV', 5604, 39615, '2018-01-13 23:49:53'),
(109, 3, 21111883, '#TellMeYouLoveMe ❤️ @shazam https://t.co/P9bK1YFJo4', 3994, 21304, '2018-01-13 03:53:05'),
(110, 3, 21111883, 'Also I’m obsessed with Finesse - @brunomars &amp; @iamcardib', 8634, 50530, '2018-01-12 22:20:27'),
(111, 3, 21111883, 'The new @jtimberlake song Filthy is naaaasssstttyyy AF in the best way possible.. #stankface', 4426, 26175, '2018-01-12 22:15:09'),
(112, 3, 21111883, 'Make sure you guys tune-in to @theellenshow on Monday!! I’ll be performing #TellMeYouLoveMe ???????????? https://t.co/sld8b5qexA', 7269, 51826, '2018-01-12 21:18:11'),
(113, 3, 21111883, 'Feeling pretty in pink ???? @fabletics https://t.co/esTZSJgctR https://t.co/9Y4eH73s2w', 7628, 57387, '2018-01-11 22:16:13'),
(114, 3, 21111883, 'Keep tagging #TellMeYouLoveMe on @Shazam!! There’s an exclusive behind the scenes video on the song page for you gu… https://t.co/yHk6gnN8EI', 3663, 19421, '2018-01-10 20:34:06'),
(115, 3, 21111883, 'RT @iHeartRadio: Calling all #Lovatics! RT TO VOTE! #BestFanArmy #iHeartAwards. GO! GO! GO! https://t.co/0lVqegAYYa', 8199, 0, '2018-01-10 01:56:00'),
(116, 3, 21111883, 'RT @Shazam: #Shazam #TellMeYouLoveMe to get a little surprise from @ddlovato! ???????? https://t.co/eMBqNwNAem', 1432, 0, '2018-01-10 01:51:49'),
(117, 3, 21111883, '#TellMeYouLoveMeRemix ???? @daveaude https://t.co/1okeg6kXMQ https://t.co/Ww0eB3hMWL', 6346, 33461, '2018-01-08 20:51:44'),
(118, 3, 21111883, 'Ummm… best @fabletics leggings ever ???? #Demi4Fabletics https://t.co/DWPJdHMvsT https://t.co/LzLwkY7Diw', 5401, 41444, '2018-01-08 17:58:57'),
(119, 3, 21111883, 'https://t.co/rF9CWdkrnR', 20026, 155736, '2018-01-08 01:16:19'),
(120, 3, 21111883, '???????? https://t.co/qiIqjiZoJ0', 55132, 337500, '2018-01-06 03:45:41'),
(121, 3, 21111883, 'Friday workout? ✅ Click https://t.co/DWPJdHMvsT to become a @fabletics VIP!! @fableticseu #Demi4Fabletics https://t.co/dahGchBhcS', 4258, 33089, '2018-01-06 02:41:41'),
(122, 3, 21111883, 'When was the last time you @Shazam’d #TellMeYouLoveMe?? There’s a surprise waiting for you on the song page ???? https://t.co/cmIc8ZPLeg', 3164, 16599, '2018-01-04 21:44:11'),
(123, 3, 21111883, 'When pink is your power color ???????? #Demi4Fabletics @fabletics @fableticseu https://t.co/DWPJdHMvsT https://t.co/NyRv0fvlMG', 6221, 43896, '2018-01-04 17:58:44'),
(124, 3, 21111883, '@SofiaCarson @justcatchmedemi Thank you so much ????', 1287, 5304, '2018-01-04 17:28:20'),
(125, 3, 21111883, 'This year I’m giving up my perfectionism.. who’s with me?!', 21416, 118223, '2018-01-04 03:16:43'),
(126, 3, 21111883, 'Metallic #Demi4Fabletics looks ???? @fabletics @fableticseu https://t.co/DWPJdHMvsT https://t.co/KLvQuI1B8m', 4360, 29289, '2018-01-04 01:45:51'),
(127, 3, 21111883, 'Can’t wait for THE FOUR on Fox with @Diddy, @meghan_trainor, @charliewalk, @fergie and my amazing tour mate… https://t.co/TR60XxnyUe', 3100, 16451, '2018-01-04 01:37:03'),
(128, 3, 21111883, '✈️✈️✈️ @fabletics all day https://t.co/NbXkz6MLCB', 11114, 83310, '2018-01-03 17:49:26'),
(129, 3, 21111883, 'This is your year to be loved. You may not have felt it before, but you deserve it now and you always have. Start by loving yourself..', 92045, 232962, '2018-01-03 17:47:02'),
(130, 3, 21111883, 'The Saoirse Sports Bra and High-waisted Paneled Capri is one of my favorite looks from the new @fabletics collectio… https://t.co/q5Mp4pvC5B', 3820, 27327, '2018-01-02 21:14:34'),
(131, 3, 21111883, 'My FAVORITE #Demi4Fabletics collection yet!! The full line goes live later today including this pink Valetta Midi S… https://t.co/yej0iKIntB', 4878, 32433, '2018-01-01 14:04:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glasbeniki`
--
ALTER TABLE `glasbeniki`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `glasbeniki_tweets`
--
ALTER TABLE `glasbeniki_tweets`
  ADD PRIMARY KEY (`tweet_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glasbeniki`
--
ALTER TABLE `glasbeniki`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `glasbeniki_tweets`
--
ALTER TABLE `glasbeniki_tweets`
  MODIFY `tweet_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
