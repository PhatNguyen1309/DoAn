-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql301.byetcluster.com
-- Thời gian đã tạo: Th6 07, 2024 lúc 11:21 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `if0_35900859_hrm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_user` varchar(30) NOT NULL,
  `admin_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_academic_rank`
--

CREATE TABLE `tbl_academic_rank` (
  `rank_id` int(3) NOT NULL,
  `rank_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_academic_rank`
--

INSERT INTO `tbl_academic_rank` (`rank_id`, `rank_name`) VALUES
(27, 'Tiến sĩ nghiên cứu'),
(28, 'Giáo sư'),
(29, 'Tiến sĩ'),
(30, 'Thạc sĩ'),
(31, 'Cử Nhân'),
(32, 'Tiến sĩ chuyên ngành');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(9, 'Công nghệ thông tin'),
(10, 'Du lịch và ẩm thực');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(7) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `per_id` int(6) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_name`, `per_id`, `filetype`, `date_uploaded`) VALUES
(51, 'uploads/db.sql', 2, 'sql', '2024-06-03'),
(52, 'uploads/app.py', 1, 'py', '2024-06-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_gass_rank`
--

CREATE TABLE `tbl_gass_rank` (
  `gass_id` int(3) NOT NULL,
  `gass_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_gass_rank`
--

INSERT INTO `tbl_gass_rank` (`gass_id`, `gass_name`) VALUES
(43, 'Quản lý dữ liệu sinh viên'),
(44, 'Quản lý thư viện'),
(45, 'Thư ký'),
(46, 'Chủ nhiệm'),
(47, 'Trợ giảng'),
(48, 'Trưởng khoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `per_id` int(6) NOT NULL,
  `per_firstname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_middlename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_lastname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_suffix` char(100) NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `per_status` varchar(8) CHARACTER SET utf8 NOT NULL,
  `per_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_eligibility` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_campus` varchar(14) CHARACTER SET utf8 NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_tin_no` varchar(20) NOT NULL,
  `per_gsis_bp_no` varchar(15) NOT NULL,
  `per_pagibig_no` varchar(14) NOT NULL,
  `per_plantilla_no` int(25) NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `ms_with_unit` varchar(12) NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_with_unit` varchar(12) NOT NULL,
  `dr_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_degree` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_image` varchar(1000) NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `per_suffix`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_eligibility`, `per_campus`, `dept_id`, `per_designation`, `per_tin_no`, `per_gsis_bp_no`, `per_pagibig_no`, `per_plantilla_no`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_year`, `dr_with_unit`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(1, 'Tram  ', 'Thao', 'Nguyen', 'tram@gmail.com', 82, 'Nữ', 'Kết hôn', 'Cu chi', '2003-06-06', 'Củ Chi', '2023-01-11', '4 năm', 'Cơ sở chính', 9, 'ChinhThuc', '456-789-023', '123-456-123', '123-789-456', 78945612, 0, '+84 355-008-915', 31, 'Cambridge', 2030, 'Hihihihihi', '', '', 0000, '', '', 0000, '', '', '', 0000, '', '', '2024-06-06', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_personnel_master_file`
--

CREATE TABLE `tbl_personnel_master_file` (
  `per_id` int(7) NOT NULL,
  `per_firstname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_middlename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_lastname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_suffix` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` char(6) CHARACTER SET utf8 NOT NULL,
  `per_status` char(8) CHARACTER SET utf8 NOT NULL,
  `per_address` varchar(150) NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_eligibility` varchar(20) NOT NULL,
  `per_campus` char(14) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(50) NOT NULL,
  `per_tin_no` varchar(20) NOT NULL,
  `per_gsis_bp_no` varchar(15) NOT NULL,
  `per_pagibig_no` varchar(14) NOT NULL,
  `per_plantilla_no` int(25) NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `ms_with_unit` varchar(12) NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `dr_with_unit` varchar(12) NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_degree` varchar(50) NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_image` varchar(1000) NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_personnel_master_file`
--

INSERT INTO `tbl_personnel_master_file` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `per_suffix`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_eligibility`, `per_campus`, `dept_id`, `per_designation`, `per_tin_no`, `per_gsis_bp_no`, `per_pagibig_no`, `per_plantilla_no`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_with_unit`, `dr_year`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(168, 'Ph?t', 'T?n', 'Nguy?n', 'ph', 41, 'Nam', '?? k?t h', 'D5/39A', '2003-09-13', 'Long An', '2020-02-20', '2 n?m', 'C? s? chính', 2, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 15, 'IELTS', 2028, 'IELTS fighter', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 8),
(168, 'Ph?t', 'T?n', 'Nguy?n', 'ph', 41, 'Nam', '?? k?t h', 'D5/39A', '2003-09-13', 'Long An', '2020-02-20', '2 n?m', 'C? s? chính', 2, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 15, '', 2028, 'IELTS fighter', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 8),
(168, 'Ph?t', 'T?n', 'Nguy?n', 'ph', 41, 'Nam', '?? k?t h', 'D5/39A', '2003-09-13', 'Long An', '2020-02-20', '2 n?m', 'C? s? chính', 2, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 15, '', 2028, 'IELTS fighter', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 8),
(168, 'Ph?t', 'T?n', 'Nguy?n', 'ph', 41, 'Nam', '?? k?t h', 'D5/39A', '2003-09-13', 'Long An', '2020-02-20', '2 n?m', 'C? s? chính', 2, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 15, '', 2028, 'IELTS fighter', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 8),
(169, 'Phat', 'Tan', 'Nguyen', 'ph', 1, 'Nam', 'K?t h?n', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'IELTS', 2028, 'Hehehehehe', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 44),
(171, 'Phat ', 'Tan', 'Nguyen', 'phat@gmail.com', 1, '', 'Kết hôn', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'TOEFL', 2028, 'Hehehehehe', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 44),
(171, 'Phat  ', 'Tan', 'Nguyen', 'phat@gmail.com', 1, '', 'Kết hôn', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'Cambridge', 2028, 'Hehehehehe', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 44),
(171, 'Phat   ', 'Tan', 'Nguyen', 'phat@gmail.com', 1, 'Nam', 'Kết hôn', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'Cambridge', 2028, 'Hehehehehe', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 44),
(171, 'Phat    ', 'Tan', 'Nguyen', 'phat@gmail.com', 1, 'Nam', 'Kết hôn', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'Cambridge', 2028, 'Hehehehehe', 'A1', 'HK1', 2029, 'HHHH', '', '0', 0000, '', '', 0000, '', '', '2024-05-22', 44),
(172, 'Khanh', 'Tran', 'Tran', 'khanh@gmail.com', 1, 'Nam', 'Độc thân', 'fhjskdjhfksd', '2003-05-23', 'fdsfsdf', '2022-10-13', '3 nam', 'C? s? 2', 9, 'ChinhThuc', '123-123-123', '123-123-123', '123-123-123', 213312312, 0, '+84 132-456-789', 27, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', 'N2', 2029, 'sdfsdfs', '', '2024-05-22', 43),
(172, 'Khanh ', 'Tran', 'Tran', 'khanh@gmail.com', 1, 'Nam', 'Độc thân', 'fhjskdjhfksd', '2003-05-22', 'fdsfsdf', '2022-10-13', '3 nam', 'C? s? 2', 9, 'ChinhThuc', '123-123-123', '123-123-123', '123-123-123', 213312312, 0, '+84 132-456-789', 27, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', 'N2', 2029, 'sdfsdfs', '', '2024-05-22', 43),
(172, 'Khanh  ', 'Chi', 'Tran', 'khanh@gmail.com', 1, 'Nam', 'Độc thân', 'fhjskdjhfksd', '2003-05-22', 'fdsfsdf', '2022-10-13', '3 nam', 'C? s? 2', 9, 'ChinhThuc', '123-123-123', '123-123-123', '123-123-123', 213312312, 0, '+84 132-456-789', 27, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', 'N2', 2029, 'sdfsdfs', '', '2024-05-22', 43),
(170, 'Tram', 'Thao', 'Nguyen', 'tram@gmail.com', 1, 'Nữ', 'Kết hôn', 'Cu chi', '2003-12-23', 'C? Chi', '2023-01-11', '4 n?m', 'C? s? chính', 9, 'ChinhThuc', '456-789-023', '123-456-123', '123-789-456', 78945612, 0, '+84 355-008-915', 31, 'Cambridge', 2030, 'Hihihihihi', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-16', 43),
(171, 'Phat     ', 'Tan', 'Nguyen', 'phat@gmail.com', 1, 'Nam', 'Kết hôn', 'D5/39A', '2003-09-13', 'Long An', '2022-02-20', '3 nam', 'C? s? chính', 9, 'ChinhThuc', '123-456-789', '123-456-789', '123-456-789', 123456789, 0, '+84 947-161-073', 31, 'Cambridge', 2028, 'Hehehehehe', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-22', 44),
(174, 'Khanh', 'Chi ', 'Tran', '', 0, 'Nam', '', '', '2003-05-23', '', '0000-00-00', '', '', 0, '', '   -   -   ', '   -   -   ', '   -   -   ', 0, 0, '+84    -   -   ', 0, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-23', 0),
(174, 'Khanh ', 'Chi ', 'Tran', '', 0, 'Nam', '', '', '2003-06-04', '', '0000-00-00', '', '', 0, '', '   -   -   ', '   -   -   ', '   -   -   ', 0, 0, '+84    -   -   ', 0, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-06-03', 0),
(174, 'Khanh  ', 'Chi ', 'Tran', '', 0, 'Nam', '', '', '2003-06-05', '', '0000-00-00', '', '', 0, '', '   -   -   ', '   -   -   ', '   -   -   ', 0, 0, '+84    -   -   ', 0, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-06-03', 0),
(1, 'Tram ', 'Thao', 'Nguyen', 'tram@gmail.com', 82, 'Nữ', 'Kết hôn', 'Cu chi', '2003-12-23', 'C? Chi', '2023-01-11', '4 n?m', 'C? s? chính', 9, 'ChinhThuc', '456-789-023', '123-456-123', '123-789-456', 78945612, 0, '+84 355-008-915', 31, 'Cambridge', 2030, 'Hihihihihi', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2024-05-22', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_position`
--

CREATE TABLE `tbl_position` (
  `pos_id` int(3) NOT NULL,
  `pos_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_position`
--

INSERT INTO `tbl_position` (`pos_id`, `pos_name`) VALUES
(2, 'Công nghệ thực phẩm'),
(3, 'An toàn thông tin'),
(82, 'Kinh tế tài chính'),
(83, 'Luật'),
(84, 'Du lịch'),
(85, 'Ngôn ngữ Anh'),
(86, 'Ngôn ngữ Trung'),
(87, 'Kỹ thuật cơ khí'),
(88, 'Quản trị khách sạn'),
(89, 'Marketing'),
(90, 'Kỹ thuật nhiệt'),
(91, 'Điện lạnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promote_id` int(5) NOT NULL,
  `per_id` int(6) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `date_promoted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_promotion`
--

INSERT INTO `tbl_promotion` (`promote_id`, `per_id`, `rank_id`, `date_promoted`) VALUES
(1, 67, 2, '2015-12-31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Chỉ mục cho bảng `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Chỉ mục cho bảng `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Chỉ mục cho bảng `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  ADD PRIMARY KEY (`gass_id`);

--
-- Chỉ mục cho bảng `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD PRIMARY KEY (`per_id`);

--
-- Chỉ mục cho bảng `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Chỉ mục cho bảng `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promote_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  MODIFY `rank_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  MODIFY `gass_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `per_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT cho bảng `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `pos_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promote_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
