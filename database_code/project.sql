
--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `std_id` int(11) NOT NULL,
  `clz_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`std_id`, `clz_id`, `status`) VALUES
(7, 7, 0),
(7, 8, 0),
(6, 7, 0),
(6, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_images`
--

CREATE TABLE `college_images` (
  `clz_id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_images`
--

INSERT INTO `college_images` (`clz_id`, `img_name`) VALUES
(7, 'IMG-6684adfbc77a26.50766634.jpg'),
(7, 'IMG-6684adfbda1099.47837171.jpg'),
(7, 'IMG-6684adfbdb6452.04516226.jpg'),
(7, 'IMG-6684adfbdd4949.29070777.jpg'),
(8, 'IMG-6684b15953d867.60756049.jpg'),
(8, 'IMG-6684b1595d0a61.46971203.jpg'),
(8, 'IMG-6684b1595e1498.43005426.jpg'),
(8, 'IMG-6684b159602d78.84153635.jpg'),
(8, 'IMG-6684b15961b173.49803860.jpg'),
(8, 'IMG-6684b1596271b1.68099325.jpg'),
(8, 'IMG-6684b159632fc7.96589762.jpg'),
(8, 'IMG-6684b15963f618.50980398.jpg'),
(8, 'IMG-6684b15964dab5.07846821.jpg'),
(9, 'IMG-6684b7a2cb9d08.27715209.png'),
(9, 'IMG-6684b7a2cca1d5.97299822.jpg'),
(9, 'IMG-6684b7a2cd6eb3.91387515.jpg'),
(9, 'IMG-6684b7a2d00e84.60008844.jpg'),
(9, 'IMG-6684b7a2d13b81.58490477.jpg'),
(9, 'IMG-6684b7a2d205d6.67007759.jpg'),
(10, 'IMG-6684bbdab54351.41574152.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `college_info`
--

CREATE TABLE `college_info` (
  `clz_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `estd` varchar(20) NOT NULL,
  `college_type` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `instagram` varchar(500) NOT NULL,
  `certification` varchar(300) NOT NULL,
  `level` varchar(100) NOT NULL,
  `faculties` varchar(2000) NOT NULL,
  `facilities` varchar(2000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `liked_by` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_info`
--

INSERT INTO `college_info` (`clz_id`, `status`, `name`, `address`, `estd`, `college_type`, `website`, `phone`, `email`, `facebook`, `instagram`, `certification`, `level`, `faculties`, `facilities`, `description`, `liked_by`) VALUES
(7, 1, 'LA GRANDEE International College', 'Pokhara, Simalchaur', '2000', 'Profitable', 'www.lagrandee.edu.np', '0613245990', 'lagrandee@gmail.com', 'LA GRANDEE International College', '@lagrandee', 'ISO Certified 2009', '', 'BBA, BCA, BPH', 'Open Environment, Computer Lab, Extra Curricular Activities, , ', 'LA GRANDEE is one of the reputed college in pokhara as it have BCA, BBA and BPH as facultiy.', '1'),
(8, 1, 'Kaski Modernized Academy', 'Pokhara-14', '2003', 'Private', 'www.kma.com', '0612356789', 'kma@gmail.com', 'Kaski Modernized Academy', '@kma', 'QTC certified', '', 'BBA', 'Swimming Pool, Extra Curricular Activities, Good Ambience, goofy, ', 'KMA is one of the reputed School and College located in pokhara.', ''),
(9, 0, 'Pokhara Engineering College', 'Pokhara, Simalchaur', '2000', 'Profitable', 'www.pec.com', '9825112131', 'pec@gmail.com', 'PEC ', '@pec', 'ISO Certified 2009', '', 'BBS, Engineering, BALLB', 'Extra Curricular Activities, Good Ambience, Swimming Pool, , ', 'THis college is very student friendly and helds programs often.', ''),
(10, 0, 'hayabusa ajajja', 'asfasf', '2799', 'Profitable', '', '673842687', 'aj@gmail.com', '', '', 'hfdsk8', '', 'BCA', 'afsdafs, fasd, fasf, fas, fas', 'fdasfas', '');

-- --------------------------------------------------------

--
-- Table structure for table `college_main_images`
--

CREATE TABLE `college_main_images` (
  `p_id` int(11) NOT NULL,
  `clz_id` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `main_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_main_images`
--

INSERT INTO `college_main_images` (`p_id`, `clz_id`, `logo`, `main_img`) VALUES
(4, '7', 'IMG-6684aded73c387.65738900.png', 'IMG-6684ade339fa84.55204862.jpg'),
(5, '8', 'IMG-6684b144d773b2.66508353.jpg', 'IMG-6684b135149c61.25898418.jpg'),
(6, '9', 'IMG-6684b790cdb978.45921116.png', 'IMG-6684b788567b91.47088448.png'),
(7, '10', 'IMG-6684bbd34c6057.67421191.png', 'IMG-6684bbcbe38be5.72182766.png');

-- --------------------------------------------------------

--
-- Table structure for table `college_rating`
--

CREATE TABLE `college_rating` (
  `std_id` int(11) NOT NULL,
  `clz_id` int(11) NOT NULL,
  `rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_rating`
--

INSERT INTO `college_rating` (`std_id`, `clz_id`, `rating`) VALUES
(6, 7, '4.7');

-- --------------------------------------------------------

--
-- Table structure for table `gyan_glide_reviews`
--

CREATE TABLE `gyan_glide_reviews` (
  `std_id` int(11) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gyan_glide_reviews`
--

INSERT INTO `gyan_glide_reviews` (`std_id`, `rating`, `message`) VALUES
(6, '4.5', 'nice app');

-- --------------------------------------------------------

--
-- Table structure for table `liked_colleges`
--

CREATE TABLE `liked_colleges` (
  `std_id` int(11) NOT NULL,
  `clz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liked_colleges`
--

INSERT INTO `liked_colleges` (`std_id`, `clz_id`) VALUES
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `user_type`) VALUES
('aj@gmail.com', 'Sushan121@', 1),
('kma@gmail.com', 'Kma@1234', 1),
('lagrandee@gmail.com', 'Lagrandee@123', 1),
('pec@gmail.com', 'Pec@2021', 1),
('prashant@gmail.com', 'Prashant@123', 0),
('sushanpoudel73@gmail.com', 'Sushan121@', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `std_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `prev_school` varchar(1000) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `linkedIn` varchar(100) NOT NULL,
  `github` varchar(100) NOT NULL,
  `colleges_liked` varchar(10000) NOT NULL,
  `bio` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`std_id`, `status`, `name`, `email`, `phone`, `address`, `prev_school`, `grade`, `facebook`, `instagram`, `linkedIn`, `github`, `colleges_liked`, `bio`) VALUES
(6, 1, 'Sushan Poudel', 'sushanpoudel73@gmail.com', '9825113454', 'Pokhara-17', 'Chhorepatan Secondary School', '3.2', 'Sushan Poudel', '@sushan', 'sushan12', 'sushan12', '', 'Entertainer and like to joke around.'),
(7, 1, 'Prashant Adhikari', 'prashant@gmail.com', '980148043', 'Pokhara-14', 'JMC', '3.01', 'prashant adhikari', '@reyprashant', 'reyprashant', 'reyprashant', '', 'I am highly interested in networking.');

-- --------------------------------------------------------

--
-- Table structure for table `student_images`
--

CREATE TABLE `student_images` (
  `std_id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_images`
--

INSERT INTO `student_images` (`std_id`, `img_name`) VALUES
(7, '7.jpg'),
(6, '6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_info`
--
ALTER TABLE `college_info`
  ADD PRIMARY KEY (`clz_id`);

--
-- Indexes for table `college_main_images`
--
ALTER TABLE `college_main_images`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_info`
--
ALTER TABLE `college_info`
  MODIFY `clz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `college_main_images`
--
ALTER TABLE `college_main_images`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

