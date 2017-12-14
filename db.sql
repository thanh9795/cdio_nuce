-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 02:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdio`
--

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `id` int(11) NOT NULL,
  `tenchucnang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `f_order` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `accept_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `shown` tinyint(4) NOT NULL,
  `icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `havenochild` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`id`, `tenchucnang`, `trangthai`, `url`, `f_order`, `id_parent`, `accept_url`, `shown`, `icon`, `havenochild`) VALUES
(1, 'DASHBOARD', 1, 'Page', 1, 0, 'Page|Page/index|page/index', 1, 'fa fa-home', 0),
(2, 'Quản lý tài liệu', 1, '', 2, 0, '', 1, 'fa fa-file-text', 1),
(3, 'Danh sách tài liệu', 1, 'Tailieu', 2, 2, 'Tailieu|Tailieu/index|Tailieu/update|Tailieu/add|Tailieu/delete', 1, '', 0),
(4, 'Nhóm tài liệu', 1, 'Nhomtailieu', 3, 2, 'Nhomtailieu|Nhomtailieu/index|Nhomtailieu/add|Nhomtailieu/update|Nhomtailieu/delete', 1, '', 0),
(6, 'Quản lý tin tức', 1, 'Tintuc', 1, 0, 'Tintuc|Tintuc/index|Tintuc/detail|Tintuc/add|Tintuc/update|Tintuc/delete', 1, 'fa fa-newspaper-o', 0),
(7, 'Quản lý hình ảnh', 1, 'Hinhanh', 1, 0, 'Hinhanh|Hinhanh/index|Hinhanh/apiHinhanh|Hinhanh/save|Hinhanh/checklink|Hinhanh/luusapxep|Hinhanh/delete|Hinhanh/update', 1, 'fa fa-file-image-o', 0),
(8, 'Văn bản điều hành\r\n', 1, 'Vanban', 1, 0, 'Vanban|Vanban/index|Vanban/add|Vanban/update|Vanban/delete', 1, 'fa fa-folder-open-o', 0),
(9, 'Quản lý CTĐT', 1, '', 2, 0, '', 1, 'fa fa-graduation-cap', 1),
(10, 'Quyết định CTĐT', 1, 'Qd_ctdt', 3, 9, 'Qd_ctdt', 1, '', 0),
(11, 'Quản lý các ngành đào tạo\r\n', 1, 'Nganhdaotao', 3, 9, 'Nganhdaotao|Nganhdaotao/index|Nganhdaotao/chuongtrinhdaotao|Nganhdaotao/saveCTDT|Nganhdaotao/apihocki|Nganhdaotao/apihocky|Nganhdaotao/add|Nganhdaotao/update|Nganhdaotao/delete|Highdecuong|Highdecuong/index|Highdecuong/update|Highdecuong/delete|Highdecuong/add', 1, '', 0),
(12, 'Quản lý môn học\r\n', 1, 'Monhoc', 3, 9, 'Monhoc|Monhoc/index|Monhoc/add|Monhoc/update|Monhoc/delete|Monhoc/api', 1, '', 0),
(13, 'QĐ chuẩn đầu ra', 1, '', 2, 0, '', 1, 'fa fa-sign-out', 1),
(14, 'Quyết định đầu ra', 1, 'Qd_chuandaura', 3, 13, 'Qd_chuandaura', 1, '', 0),
(15, 'Quản lý website', 1, '', 2, 0, '', 1, 'fa fa-globe', 1),
(16, 'Quản lý menu', 1, 'Menu', 3, 15, 'Menu/index|Menu', 1, '', 0),
(17, 'Quản lý người dùng', 1, 'User', 3, 15, 'User|User/index|User/edit_submit|User/uploadavatar|User/detail|User/delete', 1, '', 0),
(18, 'Quản lý nhóm người dùng', 1, 'Nhom', 3, 15, 'Nhom|Nhom/index|Nhom/addnhom|Nhom/edit_submit|Nhom/detail', 1, '', 0),
(19, 'Nội dung trang chủ', 1, 'gioithieu', 3, 15, 'gioithieu', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ctdao_tao`
--

CREATE TABLE `ctdao_tao` (
  `id` int(11) NOT NULL,
  `ma_mon` int(11) NOT NULL,
  `ma_nganh` int(11) NOT NULL,
  `hoc_ky` int(11) NOT NULL,
  `nhan` tinyint(4) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ctdao_tao`
--

INSERT INTO `ctdao_tao` (`id`, `ma_mon`, `ma_nganh`, `hoc_ky`, `nhan`, `position`, `date_updated`, `date_created`) VALUES
(14187, 1, 1, 1, 0, 0, '2017-12-10 22:58:53', '2017-12-10 22:58:53'),
(14188, 3, 1, 1, 0, 1, '2017-12-10 22:58:53', '2017-12-10 22:58:53'),
(14189, 9, 1, 1, 0, 2, '2017-12-10 22:58:53', '2017-12-10 22:58:53'),
(14190, 10, 1, 1, 0, 3, '2017-12-10 22:58:53', '2017-12-10 22:58:53'),
(14191, 4, 1, 1, 0, 4, '2017-12-10 22:58:53', '2017-12-10 22:58:53'),
(14192, 8, 1, 1, 0, 5, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14193, 14, 1, 1, 0, 6, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14194, 7, 1, 2, 0, 0, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14195, 11, 1, 2, 0, 1, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14196, 12, 1, 2, 0, 2, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14197, 13, 1, 2, 0, 3, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14198, 16, 1, 2, 0, 4, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14199, 21, 1, 3, 0, 0, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14200, 17, 1, 3, 0, 1, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14201, 15, 1, 3, 0, 2, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14202, 20, 1, 3, 0, 3, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14203, 19, 1, 3, 0, 4, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14204, 18, 1, 3, 0, 5, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14205, 24, 1, 3, 0, 6, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14206, 25, 1, 4, 0, 0, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14207, 23, 1, 4, 0, 1, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14208, 56, 1, 4, 0, 2, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14209, 22, 1, 4, 0, 3, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14210, 29, 1, 4, 0, 4, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14211, 26, 1, 4, 0, 5, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14212, 31, 1, 5, 0, 0, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14213, 33, 1, 5, 0, 1, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14214, 30, 1, 5, 0, 2, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14215, 32, 1, 5, 0, 3, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14216, 34, 1, 5, 0, 4, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14217, 27, 1, 5, 0, 5, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14218, 28, 1, 5, 0, 6, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14219, 2, 1, 6, 0, 0, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14220, 6, 1, 6, 0, 1, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14221, 5, 1, 6, 0, 2, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14222, 38, 1, 6, 0, 3, '2017-12-10 22:58:54', '2017-12-10 22:58:54'),
(14223, 40, 1, 6, 0, 4, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14224, 39, 1, 6, 0, 5, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14225, 41, 1, 6, 0, 6, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14226, 42, 1, 7, 0, 0, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14227, 44, 1, 7, 0, 1, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14228, 43, 1, 7, 0, 2, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14229, 45, 1, 7, 0, 3, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14230, 46, 1, 7, 0, 4, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14231, 37, 1, 8, 0, 0, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14232, 35, 1, 8, 0, 1, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14233, 36, 1, 8, 0, 2, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14234, 48, 1, 8, 0, 3, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14235, 60, 1, 8, 0, 4, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14236, 47, 1, 8, 0, 5, '2017-12-10 22:58:55', '2017-12-10 22:58:55'),
(14237, 62, 1, 8, 0, 6, '2017-12-10 22:58:55', '2017-12-10 22:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `decuong`
--

CREATE TABLE `decuong` (
  `id` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `decuong`
--

INSERT INTO `decuong` (`id`, `id_monhoc`, `link`, `type`, `date_created`, `date_updated`) VALUES
(2, 0, 'https://vuejs.org/v2/guide/forms.html', 1, '2017-12-01 10:11:42', '2017-12-01 10:11:42'),
(4, 1, 'https://vuejs.org/v2/guide/forms.html#Multiline-text', 1, '2017-12-01 10:14:45', '2017-12-01 10:14:45'),
(5, 1, 'https://vuejs.org/v2/guide/forms.html#Multiline-text', 1, '2017-12-01 10:14:50', '2017-12-01 10:14:50'),
(6, 1, 'https://forum.vuejs.org/', 1, '2017-12-01 10:15:39', '2017-12-01 10:15:39'),
(7, 2, 'https://forum.vuejs.org/', 1, '2017-12-01 10:16:31', '2017-12-01 10:16:31'),
(8, 1, 'http://ricostacruz.com/nprogress/', 1, '2017-12-01 10:21:42', '2017-12-01 10:21:42'),
(9, 1, 'http://ricostacruz.com/nprogress/', 1, '2017-12-01 10:21:45', '2017-12-01 10:21:45'),
(10, 1, 'http://ricostacruz.com/nprogress/', 1, '2017-12-01 10:21:47', '2017-12-01 10:21:47'),
(13, 1, 'assets/decuong/15578875a8de243.jpg', 2, '2017-12-01 12:51:59', '2017-12-01 12:51:59'),
(14, 1, 'assets/decuong/15578875a8de2431.jpg', 2, '2017-12-01 12:52:09', '2017-12-01 12:52:09'),
(15, 1, 'assets/decuong/IMG_10102017_151531_0.png', 2, '2017-12-01 12:52:51', '2017-12-01 12:52:51'),
(16, 1, 'assets/decuong/IMG_10102017_151531_01.png', 2, '2017-12-01 12:52:54', '2017-12-01 12:52:54'),
(17, 1, 'assets/decuong/IMG_06102017_154157_0.png', 2, '2017-12-01 12:53:43', '2017-12-01 12:53:43'),
(18, 1, 'https://www.w3schools.com/bootstrap/bootstrap_dropdowns.asp', 1, '2017-12-01 13:00:08', '2017-12-01 13:00:08'),
(19, 1, 'assets/decuong/IMG_10102017_152833_0.png', 2, '2017-12-01 13:00:16', '2017-12-01 13:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `txt_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `txt_content`, `date_created`, `date_updated`) VALUES
(1, '<p>Trường Đại học X&acirc;y dựng x&acirc;y dựng Chương tr&igrave;nh đ&agrave;o tạo mới theo CDIO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Thực hiện chủ trương của Đảng ủy, Ban Gi&aacute;m hiệu về việc đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao, nghi&ecirc;n cứu khoa học v&agrave; chuyển giao c&ocirc;ng nghệ ti&ecirc;n tiến trong lĩnh vực x&acirc;y dựng đ&aacute;p ứng sự nghiệp c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a v&agrave; hội nhập quốc tế, Trường Đại học X&acirc;y dựng triển khai x&acirc;y dựng Chương tr&igrave;nh đ&agrave;o tạo (CTĐT) mới với 27 ng&agrave;nh theo CDIO (viết tắt của Conceive - Design - Implement - Operate). &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Với triết l&yacute; đ&agrave;o tạo của Nh&agrave; trường l&agrave; tạo ra đội ngũ kỹ sư, kiến tr&uacute;c sư c&oacute; năng lực H&igrave;nh th&agrave;nh &yacute; tưởng - Thiết kế - Thực hiện - Vận h&agrave;nh c&aacute;c sản phẩm, quy tr&igrave;nh, hệ thống kỹ thuật phức hợp, c&oacute; gi&aacute; trị gia tăng trong m&ocirc;i trường l&agrave;m việc hiện đại dựa tr&ecirc;n c&aacute;ch thức l&agrave;m việc nh&oacute;m. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Căn cứ v&agrave;o đề cương, 12 ti&ecirc;u chuẩn v&agrave; thang đ&aacute;nh gi&aacute; của CDIO, CTĐT mới được x&acirc;y dựng dựa tr&ecirc;n 6 nh&oacute;m nhiệm vụ cơ bản:</p>\r\n\r\n<p>1/ X&acirc;y dựng CTĐT mới theo CDIO;</p>\r\n\r\n<p>2/ Đảm bảo kh&ocirc;ng gian thực h&agrave;nh CDIO/ nghề nghiệp;</p>\r\n\r\n<p>3/ Đổi mới giảng dạy v&agrave; đ&aacute;nh gi&aacute; học tập theo CDIO;</p>\r\n\r\n<p>4/ Tăng cường năng lực giảng vi&ecirc;n để thực hiện CTĐT theo CDIO;</p>\r\n\r\n<p>5/ Đ&aacute;nh gi&aacute; CTĐT theo CDIO;</p>\r\n\r\n<p>6/ C&aacute;c hoạt động hỗ trợ triển khai v&agrave; &aacute;p dụng CDIO. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Với lợi thế x&acirc;y dựng CTĐT ho&agrave;n to&agrave;n mới b&ecirc;n cạnh CTĐT cũ vẫn tiếp tục đ&agrave;o tạo đồng thời kế thừa kinh ngh', '0000-00-00 00:00:00', '2017-11-16 15:58:12'),
(2, '    Thực hiện chủ trương của Đảng ủy, Ban Giám hiệu về việc đào tạo nguồn nhân lực chất lượng cao, nghiên cứu khoa học và chuyển giao công nghệ tiên tiến trong lĩnh vực xây dựng đáp ứng sự nghiệp công nghiệp hóa, hiện đại hóa và hội nhập quốc tế, Trường Đại học Xây dựng triển khai xây dựng Chương trình đào tạo (CTĐT) mới với 27 ngành theo CDIO (viết tắt của Conceive - Design - Implement - Operate).\r\n\r\n          Với triết lý đào tạo của Nhà trường là tạo ra đội ngũ kỹ sư, kiến trúc sư có năng lực Hình thành ý tưởng - Thiết kế - Thực hiện - Vận hành các sản phẩm, quy trình, hệ thống kỹ thuật phức hợp, có giá trị gia tăng trong môi trường làm việc hiện đại dựa trên cách thức làm việc nhóm.\r\n\r\n          Căn cứ vào đề cương, 12 tiêu chuẩn và thang đánh giá của CDIO, CTĐT mới được xây dựng dựa trên 6 nhóm nhiệm vụ cơ bản: 1/ Xây dựng CTĐT mới theo CDIO; 2/ Đảm bảo không gian thực hành CDIO/ nghề nghiệp; 3/ Đổi mới giảng dạy và đánh giá học tập theo CDIO; 4/ Tăng cường năng lực giảng viên để thực hiện CTĐT theo CDIO; 5/ Đánh giá CTĐT theo CDIO; 6/ Các hoạt động hỗ trợ triển khai và áp dụng CDIO.\r\n\r\n          Với lợi thế xây dựng CTĐT hoàn toàn mới bên cạnh CTĐT cũ vẫn tiếp tục đào tạo đồng thời kế thừa kinh nghiệm hơn 60 năm đào tạo với đội ngũ cán bộ giảng dạy giàu kinh nghiệm, yêu nghề và chủ yếu được đào tạo bài bản từ các trường đại học có uy tín trên thế giới thực hiện cũng như sự quyết tâm đổi mới của Đảng ủy, Ban Giám hiệu và toàn thể cán bộ giảng dạy, dự kiến trong thời gian 5 năm (từ năm 2017 - 2021), Trường Đại học Xây dựng sẽ hoàn thành toàn bộ quy trình thực hiện xây dựng CTĐT mới theo CDIO, đến năm 2018 sẽ cơ bản thực hiện xong CTĐT và chọn một số ngành Nhà trường có lợi thế tuyển sinh đào tạo, từ đó tổng kết đánh giá làm cơ sở để tiếp tục phát triển mở rộng ra các ngành đào tạo khác./.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `highdecuong`
--

CREATE TABLE `highdecuong` (
  `id` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `id_nganh` int(11) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `highdecuong`
--

INSERT INTO `highdecuong` (`id`, `id_monhoc`, `id_nganh`, `link`, `type`, `date_updated`, `date_created`) VALUES
(10, 1, 1, 'https://www.facebook.com/', 1, '2017-12-09 15:09:48', '2017-12-09 15:09:48'),
(11, 1, 1, 'https://9gag.com/', 1, '2017-12-09 15:10:39', '2017-12-09 15:10:39'),
(13, 1, 1, 'assets/decuong/CSDL_timphongtro.png', 2, '2017-12-09 15:12:16', '2017-12-09 15:12:16'),
(14, 9, 1, 'http://localhost/phpmyadmin/sql.php?server=1&db=cdio&table=chucnang&pos=0&token=464694fccb0e44119fc6955cdeb1ecd2', 1, '2017-12-10 22:58:09', '2017-12-10 22:58:09'),
(15, 9, 1, 'http://localhost/phpmyadmin/sql.php?server=1&db=cdio&table=chucnang&pos=0&token=464694fccb0e44119fc6955cdeb1ecd2', 1, '2017-12-10 22:58:17', '2017-12-10 22:58:17'),
(16, 9, 1, 'assets/decuong/-thi-th-44.pdf', 2, '2017-12-10 22:58:45', '2017-12-10 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `id` int(11) NOT NULL,
  `mota` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `linkto` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `target` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(4) NOT NULL,
  `hienthi` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinh_anh`
--

INSERT INTO `hinh_anh` (`id`, `mota`, `link`, `linkto`, `type`, `target`, `position`, `hienthi`, `date_updated`, `date_created`) VALUES
(2, 'http://www.cdio.nuce.edu.vn/uploads/files/cdio_taphuan_1.jpeg\r\nhttp://www.cdio.nuce.edu.vn/uploads/files/cdio_taphuan_1.jpeghttp://www.cdio.nuce.edu.v', 'assets/images/jquery12_colorcharge1.png', 'http://www.cdio.nuce.edu.vn/uploads/files/cdio_taphuan_1.jpeg', 2, NULL, 0, 0, '2017-12-12 16:34:32', '2017-12-10 22:15:53'),
(4, 'http://localhost/cdio_nuce/assets/build/images/cdio_taphuan_2_0.jpeg', 'http://localhost/cdio_nuce/assets/build/images/cdio_taphuan_2_0.jpeg', 'http://localhost/cdio_nuce/assets/build/images/cdio_taphuan_2_0.jpeg', 1, NULL, 1, 0, '2017-12-12 16:34:32', '2017-12-10 23:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `position` mediumint(9) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`, `parent_id`, `position`, `date_created`, `date_updated`) VALUES
(54, 'Các khóa học đồ họa', 'http://itplus-academy.edu.vn/Cac-khoa-hoc-do-hoa.html', 53, 4, '2017-08-30 03:23:32', '2017-12-08 08:55:22'),
(53, 'Đào tạo chuyên đề', 'http://itplus-academy.edu.vn/Dao-tao-chuyen-de.html', 0, 3, '2017-08-30 03:22:57', '2017-12-08 08:55:22'),
(52, 'Hợp tác DGIST Hàn Quốc', 'http://itplus-academy.edu.vn/Hop-tac-DGIST-University-Han-Quoc.html', 45, 7, '2017-08-30 03:21:39', '2017-12-08 08:55:22'),
(51, 'Giải Sao Khuê 2017', 'http://itplus-academy.edu.vn/ITPlus-nhan-Giai-Sao-Khue-2017.html', 45, 3, '2017-08-30 03:21:02', '2017-12-08 08:55:22'),
(50, 'Doanh nghiệp & đối tác', 'http://itplus-academy.edu.vn/Doanh-nghiep--Doi-tac.html', 45, 8, '2017-08-30 03:19:28', '2017-12-08 08:55:22'),
(49, 'Cơ sở vật chất', 'http://itplus-academy.edu.vn/Co-so-vat-chat.html', 45, 5, '2017-08-28 07:22:18', '2017-12-08 08:55:22'),
(48, 'Giảng viên', 'http://itplus-academy.edu.vn/Giang-vien.html', 45, 4, '2017-08-28 07:21:49', '2017-12-08 08:55:22'),
(45, 'Giới thiệu', 'http://itplus-academy.edu.vn/Gioi-thieu.html', 0, 2, '2017-08-28 07:21:24', '2017-12-08 08:55:22'),
(40, 'Trang chủ', '/', 0, 1, '2017-08-28 06:11:37', '2017-12-08 08:55:22'),
(55, 'Các khóa học lập trình', 'http://itplus-academy.edu.vn/Cac-khoa-hoc-lap-trinh.html', 53, 5, '2017-08-30 03:24:01', '2017-12-08 08:55:22'),
(56, 'Khóa thiết kế đồ họa chuyên nghiệp', 'http://itplus-academy.edu.vn/Khoa-thiet-ke-do-hoa-chuyen-nghiep.html', 54, 5, '2017-08-30 03:24:48', '2017-12-08 08:55:22'),
(57, 'Quay dựng video', 'http://itplus-academy.edu.vn/Quay-dung-video.html', 54, 6, '2017-08-30 03:25:12', '2017-12-08 08:55:22'),
(58, 'Thiết kế diễn họa nội thất', 'http://itplus-academy.edu.vn/Thiet-ke-dien-hoa-noi-that.html', 54, 7, '2017-08-30 03:27:03', '2017-12-08 08:55:22'),
(59, 'Đào tạo chuyên sâu', 'http://itplus-academy.edu.vn/Dao-tao-chuyen-sau.html', 0, 4, '2017-08-30 03:30:27', '2017-12-08 08:55:22'),
(60, 'Các chương trình đào tạo', 'http://itplus-academy.edu.vn/Cac-chuong-trinh-dao-tao.html', 59, 5, '2017-08-30 03:31:11', '2017-12-08 08:55:22'),
(61, 'Lập trình ứng dụng', 'http://itplus-academy.edu.vn/Lap-trinh-ung-dung.html', 60, 6, '2017-08-30 03:32:05', '2017-12-08 08:55:22'),
(62, 'Thiết kế đồ họa - Truyền thông đa phương tiện', 'http://itplus-academy.edu.vn/Thiet-ke-do-hoa-Truyen-thong-da-phuong-tien.html', 60, 7, '2017-08-30 03:32:50', '2017-12-08 08:55:22'),
(63, 'Phim hoạt hình 3D và Quảng Cáo', 'http://itplus-academy.edu.vn/Phim-hoat-hinh-3D-va-Quang-Cao.html', 60, 8, '2017-08-30 03:33:06', '2017-12-08 08:55:22'),
(64, 'Quay, Dựng phim và Biên tập Video', 'http://itplus-academy.edu.vn/Quay-Dung-phim-va-Bien-tap-Video.html', 60, 9, '2017-08-30 03:33:22', '2017-12-08 08:55:22'),
(65, 'Thiết kế và Diễn họa nội thất', 'http://itplus-academy.edu.vn/Thiet-ke-va-Dien-hoa-noi-that.html', 60, 10, '2017-08-30 03:33:45', '2017-12-08 08:55:22'),
(66, 'Tuyển sinh 2018', 'http://itplus-academy.edu.vn/Tuyen-sinh-2017.html', 59, 6, '2017-08-30 03:35:56', '2017-12-08 08:55:22'),
(67, 'Đăng kí thi Kỹ năng CNTT', 'http://itplus-academy.edu.vn/Dang-ki-thi-Ky-nang-CNTT.html', 59, 7, '2017-08-30 03:36:16', '2017-12-08 08:55:22'),
(68, 'Tra cứu điểm thi THPT', 'http://itplus-academy.edu.vn/tra-cuu.html', 59, 8, '2017-08-30 03:37:06', '2017-12-08 08:55:22'),
(69, 'Những điều cần biết', 'http://itplus-academy.edu.vn/Nhung-dieu-can-biet.html', 59, 9, '2017-08-30 03:37:33', '2017-12-08 08:55:22'),
(70, 'Hồ sơ nhập học', 'http://itplus-academy.edu.vn/Ho-so-nhap-hoc.html', 69, 10, '2017-08-30 03:38:03', '2017-12-08 08:55:22'),
(71, 'Đề kiểm tra mẫu', 'http://itplus-academy.edu.vn/De-kiem-tra-mau.html', 69, 11, '2017-08-30 03:38:17', '2017-12-08 08:55:22'),
(72, 'Thi trực tuyến', 'http://itplus-academy.edu.vn/dang-ky-kiem-tra.html', 69, 12, '2017-08-30 03:38:48', '2017-12-08 08:55:22'),
(73, 'Quy trình tuyển sinh', 'http://itplus-academy.edu.vn/Quy-trinh-tuyen-sinh.html', 69, 13, '2017-08-30 03:39:02', '2017-12-08 08:55:22'),
(74, 'Tin Tức', 'http://itplus-academy.edu.vn/Tin-Tuc.html', 0, 5, '2017-08-30 03:40:13', '2017-12-08 08:55:22'),
(75, 'Bản tin ITPlus Academy', 'http://itplus-academy.edu.vn/Ban-tin-ITPlus-Academy.html', 74, 6, '2017-08-30 03:40:57', '2017-12-08 08:55:22'),
(76, 'Tin công nghệ ', 'http://itplus-academy.edu.vn/Tin-cong-nghe.html', 74, 7, '2017-08-30 03:41:09', '2017-12-08 08:55:22'),
(77, 'Tin tuyển dụng', 'http://itplus-academy.edu.vn/Tin-tuyen-dung.html', 74, 8, '2017-08-30 03:41:22', '2017-12-08 08:55:22'),
(79, 'Học viên', 'http://itplus-academy.edu.vn/Hoc-vien.html', 0, 6, '2017-08-30 03:42:12', '2017-12-08 08:55:22'),
(93, 'Thông báo cho học viên', 'http://itplus-academy.edu.vn/Thong-bao-cho-hoc-vien.html', 79, 10, '2017-09-19 04:40:34', '2017-12-08 08:55:22'),
(80, 'Học viên tiêu biểu', 'http://itplus-academy.edu.vn/Hoc-vien-tieu-bieu.html', 79, 7, '2017-08-30 03:43:19', '2017-12-08 08:55:22'),
(81, 'Cảm nhận học viên', 'http://itplus-academy.edu.vn/Cam-nhan-hoc-vien.html', 79, 8, '2017-08-30 03:43:39', '2017-12-08 08:55:22'),
(82, 'Sản phẩm học viên', 'http://itplus-academy.edu.vn/San-pham-hoc-vien.html', 79, 9, '2017-08-30 04:06:06', '2017-12-08 08:55:22'),
(83, 'Kiến thức', 'http://itplus-academy.edu.vn/Kien-thuc.html', 0, 7, '2017-08-30 04:08:01', '2017-12-08 08:55:22'),
(84, 'Lập trình', 'http://itplus-academy.edu.vn/Lap-trinh.html', 83, 8, '2017-08-30 04:08:25', '2017-12-08 08:55:22'),
(85, 'Đồ họa', 'http://itplus-academy.edu.vn/Do-hoa.html', 83, 9, '2017-08-30 04:08:49', '2017-12-08 08:55:22'),
(86, 'Hướng nghiệp', 'http://itplus-academy.edu.vn/Huong-nghiep.html', 0, 8, '2017-08-30 04:09:13', '2017-12-08 08:55:22'),
(87, 'Tư vấn ngành nghề', 'http://itplus-academy.edu.vn/Tu-van-nganh-nghe.html', 86, 9, '2017-08-30 04:09:36', '2017-12-08 08:55:22'),
(88, 'Bài học cuộc sống', 'http://itplus-academy.edu.vn/Bai-hoc-cuoc-song.html', 86, 10, '2017-08-30 04:09:49', '2017-12-08 08:55:22'),
(89, 'Tuyển Dụng & Việc Làm', 'http://itplus-academy.edu.vn/Tuyen-Dung--Viec-Lam.html', 86, 11, '2017-08-30 04:10:00', '2017-12-08 08:55:22'),
(94, 'Hợp tác Học Viện Công Nghệ Bưu Chính Viễn Thông', 'http://itplus-academy.edu.vn/hop-tac-hoc-vien-cong-nghe-buu-chinh-vien-thong.html', 45, 6, '2017-11-14 08:32:51', '2017-12-08 08:55:22'),
(92, 'Liên hệ', 'http://itplus-academy.edu.vn/lien-he.html', 0, 9, '2017-09-04 04:20:57', '2017-12-08 08:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `ma_mon` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ten_mon` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `so_tin_chi` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `so_tiet_ly_thuyet` int(11) NOT NULL,
  `so_tiet_thuc_hanh` int(11) NOT NULL,
  `ma_hoc_phan_tien_quyet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tai_lieu` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`ma_mon`, `ten_mon`, `so_tin_chi`, `id`, `so_tiet_ly_thuyet`, `so_tiet_thuc_hanh`, `ma_hoc_phan_tien_quyet`, `tai_lieu`, `date_created`, `date_updated`) VALUES
('010202', 'Cơ học cơ sở 2', 3, 1, 0, 0, '010211', '', '0000-00-00 00:00:00', '2017-11-29 09:41:18'),
('010203', 'Cơ học cơ sở 1', 4, 2, 0, 0, '010202', '', '0000-00-00 00:00:00', '2017-11-29 09:54:14'),
('010211', 'Cơ học cơ sở 1', 3, 3, 0, 0, '020208', '', '0000-00-00 00:00:00', '2017-11-30 03:32:34'),
('010212', 'Cơ học cơ sở 2', 2, 4, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011104', 'QL phế thải rắn', 3, 5, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011601', 'Cơ lý thuyết', 3, 6, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011602', 'Cơ Lý Thuyết', 2, 7, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011701', 'Cơ học vật rắn 1', 4, 8, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011801', 'Cơ học vật rắn 1', 4, 9, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('011901', 'Cơ học đại cương', 3, 10, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('013101', 'Cơ lý thuyết', 5, 11, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('013102', 'Co Hoc Co So', 4, 12, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020201', 'Kỹ thuật thi công 2', 4, 13, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020202', 'Đồ án Kỹ thuật thi công 2', 2, 14, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020205', 'An toàn lao động', 2, 15, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020208', 'TC xây dựng trong K.tế', 2, 16, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020301', 'Kỹ thuật thi công 1', 3, 17, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020302', 'Kỹ thuật thi công 2', 3, 18, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020303', 'Tổ chức xây dựng 1', 2, 19, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020304', 'Tổ chức xây dựng 2 +ĐA', 3, 20, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020305', 'Thực tập công nhân (cảng)', 2, 21, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020306', 'Thực tập công nhân', 4, 22, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020307', 'Thực tập CBKT', 6, 23, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020308', 'Đồ án Kỹ thuật thi công 2', 1, 24, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020309', 'Tổ chức thi công', 4, 25, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020310', 'Đồ án Tổ chức thi công', 1, 26, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020311', 'Đồ án Kỹ thuật thi công 1', 1, 27, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020312', 'Đồ án  kỹ thuật thi công', 1, 28, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020313', 'Quản lý công trường XD', 2, 29, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020320', 'Thực tập Cán bộ kỹ thuật', 4, 30, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020334', 'Tổ chức xây dựng 1+2', 5, 31, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020350', 'Kỹ thuật thi công 1', 4, 32, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020351', 'Đồ án Kỹ thuật TC 1', 2, 33, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020352', 'Tổ chức thi công A1', 4, 34, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020353', 'Kỹ thuật thi công 2', 2, 35, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020354', 'Tổ chức thi công 2', 2, 36, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020355', 'Đồ án Tổ chức thi công (A2)', 2, 37, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020356', 'Kỹ thuật thi công đặc biệt', 2, 38, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020357', 'Đồ án Kỹ thuật thi công 2', 2, 39, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020358', 'Tổ chức thi công (A2)', 5, 40, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020359', 'Đồ án Tổ chức thi công (A1)', 2, 41, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020360', 'ứng dụng tin học trong thi công', 3, 42, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020361', 'Tổ chức thi công', 5, 43, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020369', 'Tin học ứng dụng', 2, 44, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020850', 'Kỹ thuật thi công', 3, 45, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('020851', 'Kỹ thuật thi công', 2, 46, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021010', 'TC xây dựng và cấp nước', 5, 47, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021038', 'Đồ án Thi công CT cấp thoát nước', 1, 48, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021039', 'Thi  công CT cấp thoát nước', 2, 49, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021050', 'Đồ án thi công', 2, 50, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021221', 'Kỹ thuật thi công XD', 2, 51, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021232', 'Tổ chức thi công', 4, 52, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021233', 'Kỹ thuật thi công XD', 2, 53, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021242', 'Đồ án tổ chức thi công', 2, 54, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021250', 'Kỹ thuật TCXD', 3, 55, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021301', 'Kỹ thuật thi công', 5, 56, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021302', 'Đồ án kỹ thuật thi công', 2, 57, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021303', 'Kỹ thuật thi công', 3, 58, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021304', 'Đồ án kỹ thuật thi công', 1, 59, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021305', 'Kỹ thuật thi công 1', 3, 60, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021306', 'Kỹ thuật thi công 2', 2, 61, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021401', 'Kỹ thuật thi công', 3, 62, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021450', 'Kỹ thuật thi công 1', 3, 63, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021451', 'Kỹ thuật thi công 2', 3, 64, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021452', 'Đồ án Kỹ thuật TC 1', 2, 65, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021524', 'Kỹ thuật tổ chức TC', 4, 66, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021601', 'Kỹ thuật tổ chức thi công', 3, 67, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021602', 'Kỹ thuật & tổ chức thi công', 2, 68, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021702', 'Thực tập công nhân XD', 2, 69, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021750', 'Tổ chức xây dựng', 3, 70, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021751', 'Đồ án Tổ chức xây dựng', 2, 71, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021752', 'Kỹ thuật thi công', 3, 72, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021753', 'Đồ án Kỹ thuật thi công', 2, 73, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021755', 'Chuyên đề KTTC', 2, 74, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021901', 'Kỹ thuật xây dựng Đ.C', 2, 75, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021902', 'Thiết kế kỹ thuật', 3, 76, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021903', 'Quản lý C.Lượng & An toàn C.Trình', 1, 77, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021904', 'Quản lý công trường', 1, 78, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021905', 'Kế hoạch & tổ chức C.Trình', 3, 79, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('021906', 'Bảo hộ sáng chế', 1, 80, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023101', 'Thực tập công nhân', 4, 81, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023102', 'Kỹ thuật thi công 2', 4, 82, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023103', 'Đồ án kỹ thuật thi công', 2, 83, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023104', 'Kỹ thuật thi công nhà', 4, 84, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023105', 'Đồ án thi công nhà', 2, 85, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023106', 'Thi Công và an toàn LĐ', 5, 86, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023107', 'Thực tập tốt nghiệp', 6, 87, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023108', 'Đồ án tốt nghiệp', 12, 88, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023109', 'Tổ chức thi công', 5, 89, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023110', 'An toàn lao động', 2, 90, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023111', 'Đồ án tốt nghiệp', 15, 91, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('023112', 'Chuyên đề', 3, 92, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030201', 'Cơ học kết cấu 1', 5, 93, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030202', 'Cơ học kết cấu 2', 3, 94, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030203', 'Cơ học kết cấu 3', 3, 95, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030204', 'Động lực học CT', 2, 96, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030211', 'Cơ học kết cấu 1', 3, 97, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030212', 'Cơ học kết cấu 2', 2, 98, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030215', 'Các phương pháp số trong cơ học kết cấu', 2, 99, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030252', 'Động lực học, ổn định công trình', 2, 100, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030253', 'Động lực học công trình', 2, 101, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030303', 'Cơ học kết cấu 3', 3, 102, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030304', 'Động lực học CT', 2, 103, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030350', 'Ưng dụng tin học trong thiết kế CT', 3, 104, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('030351', 'ứng dụng tin học trong thi công', 2, 105, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031601', 'Cơ học công trình', 4, 106, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031602', 'Cơ công trình', 2, 107, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031603', 'Cơ học vật rắn', 3, 108, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031701', 'Cơ học vật rắn 3', 5, 109, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031702', 'Cơ học vật rắn 4', 3, 110, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031901', 'P.Pháp phần tử hữu hạn', 3, 111, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('031902', 'Động lực công trình', 2, 112, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('033101', 'Cơ học kết cấu 1', 4, 113, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('033102', 'Cơ học kết cấu 2', 4, 114, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('033103', 'Cơ Học Kết cấu 2', 4, 115, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('033104', 'Cơ học kết cấu 1', 5, 116, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040201', 'KC Bê tông CT', 4, 117, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040202', 'Kết cấu Bê tông cốt thép 1', 5, 118, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040203', 'Đồ án Kết cấu BTCT 1', 2, 119, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040204', 'Bê tông ứng suất trước', 4, 120, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040206', 'Do An Btct1', 1, 121, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040209', 'Bê tông cốt thép ứng lực', 1, 122, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040212', 'Kết cấu bê tông cốt thép', 3, 123, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040213', 'Đồ án kết cấu bê tông cốt thép', 1, 124, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040214', 'Kết cấu bê tông cốt thép', 2, 125, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040251', 'Kết cấu BTCT 1', 4, 126, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040302', 'Kết cấu BTCT 2', 3, 127, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040303', 'Kết cấu nhà + ĐA', 4, 128, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040304', 'Kết cấu gạch đá', 1, 129, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040316', 'Be Tong Ct1', 3, 130, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040350', 'Kết cấu nhà bê tông cốt thép', 3, 131, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040351', 'Đồ án Kết cấu nhà bê tông cốt thép', 2, 132, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040352', 'Đồ án Kết cấu nhà bê tông cốt thép', 1, 133, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040353', 'Kết cấu gạch, đá và gỗ', 2, 134, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040354', 'Kết cấu đặc biệt bê tông cốt thép', 2, 135, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040425', 'Do An Ket Cau Btct', 3, 136, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040501', 'TT CBKT', 6, 137, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040502', 'DATN', 12, 138, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040505', 'An Toan Lao Dong', 2, 139, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040601', 'Do An Ket Cau Btct', 3, 140, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040723', 'Ket Cau Be Tong Ct 1', 4, 141, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040810', 'Kết Cấu BT cốt Thép', 4, 142, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040850', 'Bê tông cốt thép 1', 4, 143, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('040851', 'Đồ án BTCT 1', 2, 144, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041302', 'Do An Ket Cau Btct', 3, 145, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041618', 'Kết Cấu Công Trình 1', 6, 146, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041619', 'Kết cấu công trình', 2, 147, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041620', 'Kết cấu công trình', 3, 148, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041716', 'Kc Be Tong Ct1', 4, 149, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041750', 'Kết Cấu Nhà bê tông cốt thép', 3, 150, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041751', 'Đồ án Kết cấu nhà bê tông cốt thép', 2, 151, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041901', 'Bê tông C.Trình & BT US trước 1', 3, 152, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041902', 'Bê tông C.Trình & ứng suất trước 2', 3, 153, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('041903', 'Đồ án bê tông', 1, 154, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043101', 'Bê tông cốt thép 1', 4, 155, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043102', 'Bê tông cốt thép 2', 4, 156, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043103', 'Kết cấu nhà BTCT', 3, 157, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043104', 'Đồ án Bê tông cốt thép 1', 2, 158, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043105', 'Kết Cấu Nhà BTCT', 3, 159, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043106', 'Đồ án Kết cấu nhà BTCT', 2, 160, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043110', 'Kết cấu Bê tông cốt thép 1', 3, 161, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('043111', 'Đồ án Bê tông cốt thép 1', 2, 162, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050201', 'Kết cấu thép 1', 3, 163, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050211', 'Kết cấu thép 1', 2, 164, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050301', 'Kết cấu liên hợp Thép - Bê tông', 2, 165, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050302', 'Kết cấu thép 2+ĐA', 4, 166, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050303', 'Kết cấu gỗ', 1, 167, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050304', 'Kết cấu thép đặc biệt', 2, 168, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050305', 'Kết cấu thép 2', 3, 169, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050306', 'Đồ án Kết cấu thép 2', 2, 170, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050350', 'Kết cấu nhà thép', 3, 171, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050351', 'Đồ án Kết cấu nhà thép', 2, 172, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050352', 'Kết cấu đặc biệt kim loại', 2, 173, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050353', 'Đồ án Kết cấu nhà thép', 1, 174, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050650', 'Cảng và CT GT thuỷ', 2, 175, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('050711', 'Ket Cau Thep Go', 5, 176, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051001', 'TT CBKT', 6, 177, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051002', 'DATN', 12, 178, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051750', 'Kết cấu nhà thép', 3, 179, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051751', 'Đồ án Kết cấu nhà thép', 2, 180, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051901', 'Kết cấu thép', 4, 181, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('051902', 'Đồ án thép 1', 1, 182, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('053101', 'Kết cấu thép gỗ', 4, 183, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('053102', 'Kết cấu thép gỗ', 3, 184, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('053110', 'Kết Cấu Thép', 3, 185, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060101', 'Cơ học công trình 1', 5, 186, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060102', 'Cơ học công trình 2', 4, 187, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060201', 'Sức bền vật liệu 1', 5, 188, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060202', 'Sức bền vật liệu 2', 4, 189, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060203', 'Cơ học môi trường liên tục', 3, 190, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060211', 'Sức bền Vật liệu 1', 4, 191, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060221', 'Sức bền vật liệu 1', 3, 192, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060222', 'Sức bền vật liệu 2', 2, 193, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060304', 'Cơ học môi trường liên tục', 2, 194, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060401', 'TT CBKT', 6, 195, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060402', 'DATN', 12, 196, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060503', 'Suc Ben Vat Lieu 2', 4, 197, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060803', 'Cơ học công trình 1', 5, 198, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('060804', 'Cơ học Công trình 2', 4, 199, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061601', 'Cơ học công trình Xây dựng', 3, 200, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061602', 'Cơ công trình Xây dựng', 2, 201, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061701', 'Cơ học vật rắn 2', 4, 202, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061801', 'Cơ học vật rắn 2', 4, 203, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061901', 'Sức bền vật liệu 1', 4, 204, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061902', 'Cơ học môi trường LT 2', 3, 205, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061903', 'Sức bền VL.UD Trong XD 2', 3, 206, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('061911', 'Cơ đại cương & Cơ môi trường LT 1', 3, 207, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('062050', 'Cơ học Công trình 1', 4, 208, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('062051', 'Cơ học công trình 2', 5, 209, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('063101', 'Sức bền vật liệu 1', 4, 210, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('063102', 'Sức bền vật liệu 2', 4, 211, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('063104', 'Ly Thuyet Dan Hoi', 3, 212, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('070201', 'Thí nghiệm và kiểm định công trình', 3, 213, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('070202', 'Thí nghiệm công trình', 2, 214, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('070302', 'Bệnh học và sửa chữa công trình', 2, 215, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('070450', 'Thí nghiệm công trình cầu', 2, 216, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080301', 'Cấp thoát nước', 2, 217, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080302', 'Cấp thoát nước', 2, 218, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080303', 'Cấp thoát nước', 3, 219, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080603', 'Công trình C.thoát nước', 2, 220, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080901', 'Cơ sở vi sinh trong KTMT', 3, 221, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080902', 'Thoát nước & XL nước thải', 5, 222, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080903', 'Đồ án TN & XL nước thải', 2, 223, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080904', 'Xử lý chất thải rắn', 4, 224, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080905', 'Đồ án xử lý chất thải rắn', 2, 225, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080906', 'Quan trắc, phân tích chất lượng MT', 2, 226, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080907', 'Thực tập QT & PTCLMT', 1, 227, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080908', 'Quản lý và quy hoạch môi trường', 2, 228, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080909', 'Cấp nước - Xử lý  nước cấp', 5, 229, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080910', 'Đồ án Cấp nước - Xử lý  nước cấp', 2, 230, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('080911', 'Mạng lưới thoát nuớc', 2, 231, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081001', 'An toàn lao động', 2, 232, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081002', 'Cấp nước đô thị', 2, 233, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081004', 'Xử lý phế thải rắn', 3, 234, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081005', 'Xử lý nước thải', 5, 235, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081007', 'Thực tập CB kỹ thuật', 6, 236, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081008', 'Đồ án Tốt nghiệp', 15, 237, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081009', 'BV và sử dụng hợp lý nguồn nước', 2, 238, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081011', 'Cấp thoát nước trong nhà và CT', 3, 239, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081012', 'Đồ án CTN trong nhà', 1, 240, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081013', 'Công trình thu và trạm bơm', 4, 241, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081014', 'Công trình thu trạm bơm', 2, 242, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081015', 'Cấp nước DD và CN', 4, 243, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081016', 'Đồ án Công trình thu trạm bơm', 1, 244, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081017', 'Thoát nước DD và CN', 4, 245, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081018', 'Do An Thoat Nuoc Dd Cn', 2, 246, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081019', 'Xử lý nước thiên nhiên', 5, 247, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081020', 'Cấp nước và VS nước thải', 2, 248, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081021', 'Mạng lưới cấp nước', 3, 249, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081022', 'Đồ án mạng lưới cấp nước', 1, 250, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081023', 'Bảo vệ nguồn nước', 3, 251, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081024', 'Xử lý phế thải rắn', 3, 252, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081025', 'Cấp nước & VS MT nông thôn', 2, 253, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081026', 'Điện ĐL & TĐH  HT cấp nước', 2, 254, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081027', 'Xử lý nước cấp', 3, 255, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081028', 'Đồ án xử lý nước cấp', 1, 256, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081029', 'Bảo vệ & QLTH nguồn nước', 2, 257, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081030', 'Cấp thoát nước bên trong CT', 4, 258, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081031', 'Hóa môi trường và vi sinh vật nước', 2, 259, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081032', 'Hoá nước', 2, 260, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081033', 'Mạng lưới thoát nước mưa & nước thải', 3, 261, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081034', 'Đồ án ML thoát nước mưa và nước thải', 1, 262, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081035', 'Xử lý nước thải', 4, 263, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081036', 'Hóa nước & Hóa môi trường', 3, 264, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081037', 'Luật xây dựng, Luật BV môi trường', 2, 265, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081038', 'ĐA thi công CT Cấp thoát nước', 1, 266, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081039', 'Thi công CT Cấp thoát nước', 2, 267, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081040', 'Đồ án xử lý nước thải', 2, 268, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081041', 'Mạng lưới thoát nước mưa & nước thải', 3, 269, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081042', 'Đồ án xử lý nước thải', 1, 270, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081043', 'Cấp nước và xử lý nước cấp', 2, 271, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081044', 'Đồ án tổng hợp cấp nước', 1, 272, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081045', 'Thoát nước và xử lý nước thải', 2, 273, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081046', 'Đồ án tổng hợp thoát nước', 1, 274, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081050', 'Đồ án CT thu và trạm bơm', 2, 275, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081051', 'Đồ án cấp nước DD và CN', 2, 276, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081052', 'Đồ án thoát nước DD và CN', 2, 277, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081053', 'Đồ án XL nước thiên nhiên', 2, 278, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081054', 'Đồ án CTN bên trong CT', 2, 279, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081055', 'Cấp thoát nước bên trong CT', 4, 280, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081056', 'Vi sinh vật nước', 2, 281, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081057', 'Đồ án xử lý nước thải', 2, 282, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081058', 'Vi sinh vật nước', 3, 283, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081060', 'Xử lý phế thải rắn', 3, 284, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081079', 'Thực tập cán bộ kỹ thuật', 2, 285, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081080', 'Thực tập  CB Kỹ  thuật', 4, 286, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081081', 'Đồ án tốt nghiệp', 10, 287, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081101', 'Cấp nước đô thị', 3, 288, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081103', 'Thoát nước đô thị', 2, 289, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081122', 'Cấp thoát nước bên trong nhà', 4, 290, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081124', 'Thoát nước đô thị', 3, 291, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081130', 'XL nước CN và nước thải', 4, 292, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081150', 'Đồ án cấp thoát nước', 2, 293, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081601', 'Cấp thoát nước CT đô thị', 2, 294, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081626', 'Cấp thoát nước', 2, 295, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081901', 'Cấp nước cho khu đô thị', 1, 296, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('081902', 'Thoát và thu hồi xử Lý nước thải', 2, 297, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082001', 'Sinh thái học', 2, 298, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082002', 'Cấp thoát nước trong nhà', 4, 299, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082003', 'Đồ án CTN trong nhà', 2, 300, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082011', 'Sinh thái học-bảo vệ MT', 4, 301, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082012', 'Thực tập công nhân + TQ', 4, 302, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082013', 'Máy thuỷ lực', 2, 303, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('082051', 'Máy thủy lực', 3, 304, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('083101', 'Cấp thoát nước', 4, 305, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('083110', 'Cap Thoat Nuoc', 3, 306, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090901', 'Bảo vệ môi trường', 2, 307, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090902', 'Sinh thái học', 2, 308, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090905', 'Cơ sở vi sinh trong KTMT', 4, 309, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090906', 'Thực tập công nhân', 4, 310, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090907', 'Quản lý và quy hoạch MT', 4, 311, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090908', 'Quan trắc, phân tích, CLMT', 2, 312, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090909', 'Thực tập quan trắc & PT CLMT', 1, 313, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090910', 'Xử lý chất thải rắn', 5, 314, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090911', 'Đồ án xử lý chất thải rắn', 2, 315, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090912', 'Sản xuất sạch hơn', 2, 316, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090913', 'Quy trình công nghệ MT 1', 2, 317, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090914', 'Quy trình CN môi trường 2', 2, 318, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090915', 'XL ô nhiễm MTKK bên trong CT', 4, 319, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090916', 'ĐA XL ô nhiễm  MTKK bên trong CT', 2, 320, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090917', 'Cơ sở vi sinh trong KTMT', 2, 321, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090918', 'Bảo vệ MTKK & XL khí thải', 4, 322, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090919', 'Đồ án BV MTKK & XLKT', 2, 323, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090920', 'Thi công an toàn lao động', 3, 324, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090921', 'Thực tập Cán bộ kỹ thuật', 6, 325, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090922', 'Đồ án Tốt nghiệp', 15, 326, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090923', 'Quan trắc, phân tích MT', 3, 327, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090924', 'Máy động lực', 2, 328, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090925', 'Thi công và an toàn lao động', 2, 329, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090926', 'Thuỷ khí động lực', 3, 330, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090927', 'Xử lý chất thải lỏng', 5, 331, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090928', 'Đồ án xử lý chất thải lỏng', 2, 332, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090929', 'Quản lý tổng hợp nguồn nước', 2, 333, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090930', 'Xử lý ô nhiễm MTKK bên trong CT', 3, 334, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090931', 'ĐA  XL ô nhiễm MTKK bên trong CT', 1, 335, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090932', 'Xử lý khí thải bên ngoài CT', 3, 336, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090933', 'Đồ án XL khí thải bên ngoài CT', 1, 337, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090934', 'Xử lý chất thải rắn', 3, 338, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090935', 'Đồ án xử lý chất thải rắn', 1, 339, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090936', 'Qui hoạch  & QL môi trường', 3, 340, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090937', 'Độc học môi truờng', 2, 341, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090938', 'Kiểm soát chất thải nguy hại', 2, 342, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090939', 'Vệ sinh sinh thái', 2, 343, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090940', 'Thí nghiệm Vi sinh vật', 1, 344, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090941', 'Xử lý chất thải lỏng', 3, 345, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090942', 'Đồ án  xử lý chất thải lỏng', 1, 346, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090943', 'Thi công  đô thị', 2, 347, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090951', '', 10, 348, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090980', 'Thực tập  cán bộ kỹ thuật', 4, 349, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('090981', 'Đồ án tốt nghiệp', 10, 350, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091004', 'Sinh thái học & bảo vệ MT', 4, 351, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091017', 'Quản lý chất thải rắn', 3, 352, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091018', 'Quản lý  chất thải rắn', 2, 353, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091123', 'Quản lý MT đô thị và khu CN', 2, 354, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091501', 'Bảo vệ môi trường', 2, 355, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091502', 'Cơ sở Sinh thái học', 2, 356, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091513', 'Quản lý chất thải rắn', 3, 357, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091601', 'Kỹ thuật môi trường', 2, 358, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091901', 'Sinh thái công nghiệp', 1, 359, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('091903', 'Vệ sinh và môi trường', 1, 360, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100101', 'Bảo vệ môi trường', 2, 361, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100201', 'Môi trường và PT bền vững', 2, 362, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100301', 'Cơ sở môi trường sinh thái', 2, 363, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100302', 'Hệ thống kỹ thuật trong CT', 2, 364, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100901', 'Bảo vệ khí MT & XL khí thải', 4, 365, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('100922', 'Đồ án BV KMT & XL khí thải', 2, 366, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101009', 'Mạng điện', 3, 367, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101023', 'Bảo vệ nguồn nước', 3, 368, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101024', 'Xử lý phế thải rắn', 3, 369, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101025', 'Mạng điện trong nhà & CT', 2, 370, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101101', 'Khảo sát môi trường', 2, 371, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101102', 'Thực tập CB kỹ thuật', 6, 372, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101103', 'Thông gió 2', 3, 373, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101104', 'Đồ án thông gió 2', 2, 374, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101105', 'Mạng điện sinh hoạt', 5, 375, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101106', 'Đồ án mạng điện & điện động lực', 2, 376, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101107', 'Thông gió chuyên sâu', 5, 377, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101108', 'Kỹ thuật lạnh', 4, 378, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101109', 'Đồ án kỹ thuật lạnh', 2, 379, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101110', 'Đồ án Mạng điện', 2, 380, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101111', 'Điều hoà không khí', 4, 381, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101112', 'Đồ án Điều hoà không khí', 2, 382, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101113', 'Tự động hoá', 3, 383, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101114', 'Thi công ngành', 3, 384, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101115', 'Tự động hoá', 3, 385, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101116', 'Sản xuất sạch hơn', 2, 386, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101117', 'Thi công và an toàn LĐ', 4, 387, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101118', 'Mạng điện & điện động lực', 4, 388, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101119', 'Thực tập công nhân', 4, 389, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101120', 'Kỹ thuật lạnh', 5, 390, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101121', 'Dụng cụ đo thông số MT', 3, 391, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101122', 'Đồ án Tốt nghiệp', 15, 392, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101123', 'Cấp ga và khí nén', 3, 393, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101124', 'Đồ án Cấp ga và khí nén', 1, 394, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101125', 'Thực tập Khảo sát MT', 2, 395, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101126', 'Thang máy', 2, 396, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101127', 'Mạng điện & TT liên lạc', 2, 397, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101128', 'Tự động hoá', 2, 398, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101129', 'Thang máy, thang cuốn', 2, 399, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101130', 'Thực tập Khảo sát MT', 1, 400, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101131', 'Điều tiết không khí', 4, 401, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101132', 'Xử lý khí thải', 3, 402, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101133', 'Đồ án xử lý khí thải', 2, 403, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101134', 'Đồ án Thông gió', 1, 404, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101135', 'Điện chiếu sáng & điện động lực', 3, 405, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101136', 'Đồ án điện chiếu sáng & ĐĐL', 1, 406, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101137', 'Thông tin liên lạc báo động', 2, 407, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101138', 'Kỹ thuật lạnh', 3, 408, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101139', 'Đồ án kỹ thuật lạnh', 1, 409, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101140', 'Kiểm soát & BV MT không khí', 2, 410, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101141', 'Thi công hệ thống kỹ thuật', 2, 411, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101142', 'Xử lý khí thải', 2, 412, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101143', 'Máy bơm, máy quạt', 2, 413, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101144', 'Đồ án xử lý khí thải', 1, 414, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101145', 'Điều hoà không khí', 3, 415, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101146', 'Đồ án điều hoà không khí', 1, 416, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101147', 'Hệ thống phòng & chữa cháy', 2, 417, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101148', 'Thiết bị đo môi trường', 2, 418, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101149', 'TT Quan trắc môi trường khí', 2, 419, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101150', 'Bảo vệ môi trường khí', 2, 420, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101151', 'Đồ án kỹ thuật lạnh', 2, 421, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101152', 'Đồ án Thông gió chuyên sâu', 2, 422, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101153', 'Đồ án điều tiết không khí', 2, 423, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101154', 'Mạng điện và Thông tin liên lạc', 3, 424, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101155', 'Khảo sát và Bảo vệ MT khí', 2, 425, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101160', 'Thuc Tap Cbkt-tham Quan', 6, 426, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101162', 'Đồ án Tốt Nghiệp', 15, 427, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101180', 'Thực tập  CB Kỹ thuật', 4, 428, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101181', 'Đồ án tốt nghiệp', 10, 429, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101212', 'Thuc Tap Cn + Tq', 4, 430, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101601', 'Thông gió & điều hòa không khí', 2, 431, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101621', 'Thông gió 1', 2, 432, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101901', 'Môi trường', 2, 433, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101902', 'ảnh hưởng CSHT đến M.Trường', 1, 434, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('101903', 'Vệ Sinh và Môi Trường', 1, 435, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('102002', 'Thông gió 1', 3, 436, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('102003', 'Máy bơm máy quạt', 3, 437, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('102004', 'Mạng điện và Điện động lực', 3, 438, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('102050', 'Thông gió', 4, 439, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('103101', 'Môi trường sinh thái', 2, 440, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('110201', 'Kỹ thuật nhiệt', 2, 441, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('110809', 'Kỹ Thuật nhiệt', 4, 442, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('110901', 'Thiết bị nhiệt', 3, 443, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111101', 'Thiết bị nhiệt', 4, 444, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111103', 'Sử dụng hợp lý năng lượng', 2, 445, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111104', 'Nhiệt động kỹ thuật(HP1)', 2, 446, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111105', 'Truyền Nhiệt (HP2)', 2, 447, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111124', 'Kỹ thuật nhiệt CS', 4, 448, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111150', 'Đồ án kỹ thuật sấy', 2, 449, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('111151', 'Kỹ thuật sấy', 5, 450, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('112000', 'Kỹ thuật Nhiệt 1', 3, 451, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('112001', 'Kỹ thuật nhiệt 2', 2, 452, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('112003', 'Thiết bị nhiệt', 4, 453, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('112004', 'Đồ án thiết bị nhiệt', 2, 454, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('112050', 'Cơ sở kỹ thuật nhiệt', 3, 455, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120307', 'Thiết kế thi công cầu', 3, 456, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120401', 'Thiết kế cầu BTCT+ĐA', 5, 457, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120402', 'Thực tập công nhân', 4, 458, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120403', 'Thực tập cán bộ kỹ thuật', 4, 459, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120404', 'Đồ án tốt nghiệp', 10, 460, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120405', 'Cầu Đá,Gỗ,K.thác cầu', 2, 461, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120406', 'T.Kế và Thi công hầm+ĐA', 4, 462, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120410', 'Thiết kế và Xây dựng mố trụ cầu', 2, 463, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120411', 'Xây dựng cầu', 5, 464, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120412', 'Đồ án Xây dựng cầu', 2, 465, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120415', 'Thiết kế và Xây dựng cầu BTCT1', 3, 466, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120416', 'Thiết kế và xây dựng cầu BTCT2', 3, 467, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120422', 'Đồ án Lập các phương án cầu', 1, 468, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120425', 'Đồ án Thiết kế Cầu bê tông cốt thép', 1, 469, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120426', 'Thiết kế và xây dựng cầu thép 2', 2, 470, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120435', 'Thiết kế Xây dựng cầu thép 1', 3, 471, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120445', 'Đồ án Thiết kế Xây dựng cầu thép', 1, 472, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120450', 'Nhập môn cầu', 2, 473, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120451', 'Thiết kế Cầu bê tông cốt thép', 5, 474, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120452', 'Đồ án Thiết kế Cầu bê tông cốt thép', 2, 475, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120453', 'Thiết kế cầu thép', 4, 476, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120454', 'Đồ án Thiết kế cầu thép', 2, 477, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120455', 'Khai thác kiểm định cầu', 2, 478, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120456', 'Chuyên đề cầu', 2, 479, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120457', 'Thiết Kế Và Xây dựng hầm', 5, 480, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120458', 'Đồ án Thiết kế và Xây dựng hầm', 2, 481, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120459', 'Xây dựng cầu', 3, 482, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120460', 'Thiết kế và xây dựng hầm giao thông 1', 3, 483, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120461', 'Thiết kế và xây dựng hầm giao thông 2', 2, 484, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120476', 'Thiết kế và xây dựng hầm giao thông', 2, 485, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('120485', 'Đồ án Thiết kế và XD hầm giao thông', 1, 486, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `monhoc` (`ma_mon`, `ten_mon`, `so_tin_chi`, `id`, `so_tiet_ly_thuyet`, `so_tiet_thuc_hanh`, `ma_hoc_phan_tien_quyet`, `tai_lieu`, `date_created`, `date_updated`) VALUES
('120486', 'Tin học ứng dụng cầu', 2, 487, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121711', 'Xây dựng cầu', 5, 488, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121712', 'Đồ án xây dựng cầu', 2, 489, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121750', 'Thiết kế Cầu bê tông cốt thép', 4, 490, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121751', 'Thiết kế cầu thép', 3, 491, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121752', 'Đồ án Thiết kế Cầu bê tông cốt thép', 2, 492, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121754', 'Đồ án Thiết kế cầu thép', 2, 493, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121755', 'Thiết kế Cầu bê tông cốt thép', 5, 494, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121756', 'Đồ án xây dựng cầu', 2, 495, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121757', 'Thiết kế và Xây dựng cầu và hầm', 6, 496, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121758', 'Xây dựng cầu', 3, 497, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121901', 'Thiết kế cầu đại cương 1', 2, 498, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121902', 'Thiết kế cầu đại cương 2', 4, 499, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121903', 'Duy tu công trình cầu', 2, 500, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121904', 'Công trình ngầm', 2, 501, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121905', 'Đồ án cầu 1', 1, 502, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121906', 'Đồ án cầu 2', 1, 503, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121907', 'Chuyên đề cầu', 2, 504, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('121908', 'Tham quan các công trường', 1, 505, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123101', 'Thiết kế cầu', 5, 506, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123102', 'Thi công Cầu', 6, 507, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123103', 'Đồ án TK và XD Cầu', 2, 508, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123104', 'Kt Thii công cầu', 6, 509, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123106', 'Đồ án Tk Va Tc Cau', 2, 510, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123111', 'Thiết kế cầu', 5, 511, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123112', 'Kỹ thuật thi công cầu', 3, 512, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('123113', 'Đồ án Thi công cầu', 2, 513, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130201', 'Cơ học đất', 4, 514, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130202', 'Nền móng +ĐA', 3, 515, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130203', 'Nền móng', 3, 516, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130204', 'Đồ án Nền móng', 2, 517, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130211', 'Cơ học đất', 3, 518, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130213', 'Nền móng', 2, 519, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130214', 'Đồ án nền móng', 1, 520, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130215', 'Cơ học đất Nền móng', 2, 521, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('130350', 'Kết cấu hệ móng đặc biệt', 2, 522, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131610', 'Cơ học đất Nền móng', 2, 523, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131611', 'Cơ học đất nền móng', 2, 524, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131901', 'Cơ học đất và đá', 3, 525, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131902', 'Móng và tường chắn', 2, 526, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131903', 'Địa Kỹ thuật ứng dụng', 2, 527, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('131904', 'Móng &Tường chắn ứng dụng', 2, 528, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('132102', 'Do An Nen Mong', 3, 529, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('133101', 'Cơ học đất', 4, 530, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('133102', 'Nền móng', 3, 531, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('133103', 'Đồ án nền móng', 2, 532, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('140201', 'Trắc địa', 4, 533, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('140202', 'Thực tập Trắc địa', 1, 534, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('140203', 'Công nghệ Gis', 2, 535, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('140211', 'Trắc địa', 3, 536, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('140212', 'Trắc địa', 2, 537, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141301', 'Trắc địa', 2, 538, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141401', 'Trắc địa', 2, 539, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141506', 'Trắc địa', 3, 540, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141601', 'Trắc Địa', 2, 541, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141602', 'Sử dụng bản đồ & hệ thống Gis', 2, 542, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141703', 'Trắc địa và GIS', 5, 543, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('141901', 'Trắc địa & H.thống thông tin toàn cầu', 2, 544, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142401', 'Trắc địa cơ sở 1', 3, 545, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142402', 'Thực tập Trắc địa cơ sở', 2, 546, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142403', 'Lý thuyết sai số 1', 2, 547, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142404', 'Thực hành máy Trắc địa', 1, 548, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142405', 'Tin học chuyên ngành', 2, 549, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142406', 'Vẽ địa hình', 2, 550, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142407', 'Cơ sở bản đồ', 4, 551, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142408', 'Cơ sở dữ liệu bản đồ số', 2, 552, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142410', 'Trắc địa cao cấp đại cương 1', 3, 553, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142411', 'Trắc địa cao cấp đại cương 2', 3, 554, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142412', 'Đồ án Trắc địa cao cấp', 1, 555, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142413', 'Cơ sở trắc địa công trình', 4, 556, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142414', 'Đo điện tử GPS', 2, 557, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142415', 'Cơ sở đo ảnh 1', 3, 558, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142416', 'Hệ thống thông tin địa lý', 4, 559, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142417', 'Cơ sở viễn thám', 3, 560, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142418', 'Đồ án  Cơ sở Trắc địa công trình', 1, 561, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142422', 'Quan trắc biến dạng', 2, 562, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142425', 'Cơ sở đo ảnh 2', 2, 563, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142426', 'Đồ án Cơ sở đo ảnh', 1, 564, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142430', 'Trắc địa cơ sở 2', 2, 565, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142431', 'Lý thuyết sai số 2', 2, 566, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142432', 'Trắc địa CT chuyên ngành', 3, 567, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142433', 'Kinh tế trắc địa', 2, 568, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142441', 'Thực tập công nhân + tham quan', 4, 569, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142442', 'Thực tập cán bộ kỹ thuật + TQ', 4, 570, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142443', 'Đồ án tốt nghiệp', 10, 571, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142501', 'Địa chính đại cương', 4, 572, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142502', 'Đồ án Địa chính đại cương', 1, 573, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142601', 'Trắc địa công trình ngầm', 2, 574, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('142602', 'Quản lý thông tin đất đai', 2, 575, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('143101', 'Trắc địa', 3, 576, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('143102', 'Thực tập trắc địa', 1, 577, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('143110', 'Do Dac', 4, 578, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150201', 'Địa chất công trình', 4, 579, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150202', 'Thực tập Địa chất công trình', 1, 580, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150203', 'Thực tập ĐCCT và ĐC TV', 1, 581, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150204', 'Tham quan Địa chất', 0, 582, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150211', 'Địa chất công trình', 2, 583, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150212', 'Địa chất CT&ĐCTV', 3, 584, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150213', 'Địa chất CT- Địa chất TV', 2, 585, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('150807', 'Khoáng vật và T.học', 2, 586, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('151901', 'Địa chất công trình', 3, 587, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('153101', 'Địa chất công trình', 3, 588, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('153102', 'Thực Tập Địa chất công trình', 1, 589, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160312', 'Thiết kế thi công đường', 3, 590, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160401', 'Thủy văn', 1, 591, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160402', 'Thiết kế Đường Ôtô 1+ĐA', 4, 592, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160403', 'Thiết kế Đường Ôtô 2 +ĐA', 4, 593, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160404', 'Xây dựng đường 1', 3, 594, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160405', 'Xây dựng đường 2+ĐA', 4, 595, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160406', 'Khai thác và thí nghiệm đường', 3, 596, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160407', 'Công trình giao thông đô thị', 2, 597, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160408', 'Thiết kế và xây dựng DS', 2, 598, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160409', 'Thiết kế và Xây dựng sân bay', 3, 599, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160411', 'Đường sắt', 2, 600, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160412', 'Thủy văn', 3, 601, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160413', 'Đồ án Thiết kế đường 2', 2, 602, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160414', 'Xây dựng đường', 6, 603, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160415', 'Đồ án Xây dựng đường', 2, 604, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160420', 'Cảng hàng không và sân bay', 2, 605, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160421', 'Thiết kế HH và KSTK đường  bộ', 3, 606, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160422', 'Đồ án Thiết kế HH CT đường', 1, 607, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160423', 'Thiết kế nền mặt đường', 3, 608, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160424', 'Đồ án Thiết kế nền mặt đường', 1, 609, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160425', 'Quy hoạch  GTVT và mạng lưới ĐB', 2, 610, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160426', 'Thiết kế hình học và KSTK đường bộ', 2, 611, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160450', 'Thiết kế đường 1', 4, 612, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160451', 'Đồ ánThiết kế đường 1', 2, 613, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160452', 'Thiết kế đường 2', 4, 614, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160453', 'Xây dựng đường', 3, 615, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160454', 'Công trình  giao thông đô thị', 4, 616, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160455', 'Chuyên đề đường', 2, 617, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160463', 'Xây dựng đường và đánh giá chất lượng', 2, 618, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160464', 'Kỹ thuật giao thông', 2, 619, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160465', 'Đồ án Kỹ thuật giao thông', 1, 620, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160466', 'Xây dựng đường và đánh giá chất lượng', 3, 621, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160467', 'Đồ án Xây dựng đường', 1, 622, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160468', 'Kinh tế quản lý và khai thác đường', 2, 623, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160469', 'Giao thông và đường đô thị', 2, 624, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160486', 'Tin học ứng dụng đường', 2, 625, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160510', 'Đường sắt và Đường Ô tô', 2, 626, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('160611', 'Thiết kế thi công đường', 3, 627, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161001', 'Thực tập cán bộ kỹ thuật', 6, 628, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161002', 'Đồ án tốt nghiệp', 12, 629, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161003', 'Thực tập công nhân', 4, 630, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161707', 'Giao thông và đường đô thị', 2, 631, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161712', 'Thuỷ văn', 2, 632, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161750', 'Thiết kế đường', 4, 633, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161751', 'Thiết kế đường thành phố', 3, 634, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161752', 'Thiết kế đường sân bay', 2, 635, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161753', 'Đồ án Đường', 2, 636, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161754', 'TK đường và GT đô thị', 3, 637, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161755', 'XD và tổ chức TC đường', 4, 638, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161756', 'Đồ án XD và TCTC đường', 2, 639, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161757', 'Khai thác và KĐ đường', 2, 640, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161758', 'Thuỷ văn', 2, 641, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161759', 'Thiết kế đường ôtô 2', 3, 642, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161760', 'Đồ án Tkế đường ôtô2', 2, 643, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161901', 'Vật liệu cho hạ tầng G.Thông V.Tải', 2, 644, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161902', 'Đường 1', 4, 645, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161903', 'Đường 2', 2, 646, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161904', 'Hạ tầng sân bay', 1, 647, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161905', 'Chính sách giao thông', 2, 648, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161906', 'Đường sắt', 2, 649, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161907', 'Tổ chức & Quản lý G.Thông đô thị', 3, 650, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161908', 'A.toàn & K.thác H.Thống G.Thông', 2, 651, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161909', 'Đánh giá KTTC Dự án KTH', 2, 652, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161911', 'Đồ án đường 1', 1, 653, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161912', 'Chuyên đề đường', 2, 654, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('161913', 'Đồ án đường 2', 1, 655, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163101', 'Thiết kế đường', 5, 656, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163102', 'Thi công đường', 3, 657, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163103', 'Đồ án đường', 2, 658, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163104', 'Đồ án thiết kế đường', 2, 659, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163105', 'TK và XD Đường 2', 4, 660, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163106', 'TK và XD Đường 1', 4, 661, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163108', 'Thi công đường', 3, 662, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163109', 'Đồ án TK và XD Đường', 2, 663, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163110', 'Công trình giao thông', 4, 664, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163111', 'Thiết kế cầu', 5, 665, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163112', 'Thi công Cầu', 3, 666, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('163113', 'Đồ án Cầu', 2, 667, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170203', '', 0, 668, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170501', 'Tham quan chuyên ngành', 2, 669, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170502', 'Thi công CT cảng đường thuỷ 1', 3, 670, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170505', 'Đồ án Quy hoạch cảng', 1, 671, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170506', 'Thực tập đo đạc hải văn', 1, 672, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170508', 'Kinh tế, quản lý và khai thác CĐT', 2, 673, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170509', 'Chỉnh trị  cửa sông ven biển', 3, 674, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170511', 'Thực tập công nhân', 4, 675, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170512', 'Thực tập CBKT (5T)', 6, 676, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170513', 'Đồ án Tốt nghiệp', 15, 677, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170515', 'Đồ án Quy hoạch cảng', 2, 678, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170516', 'Công trình cảng 1', 3, 679, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170517', 'Đồ án Công trình cảng 1', 2, 680, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170518', 'Công trình cảng 2', 3, 681, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170519', 'Đồ án Công trình cảng 2', 2, 682, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170520', 'Thi công cảng-Đường thuỷ 1', 4, 683, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170521', 'Đồ án Thi công cảng-Đ.thuỷ 1', 2, 684, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170522', 'Thi công cảng-Đường thuỷ 2', 4, 685, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170523', 'Đồ án Thi công cảng-Đ.thuỷ 2', 2, 686, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170524', 'Công trình TC trong XĐT', 3, 687, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170525', 'Đồ án Xưởng đóng tàu', 2, 688, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170526', 'Đường thuỷ nội địa 2', 4, 689, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170527', 'Tự động hoá thiết kế CT cảng', 3, 690, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170530', 'Động lực học sông và chỉnh trị sông', 2, 691, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170531', 'Thi công công trình cảng - ĐT 2', 3, 692, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170532', 'Đồ án Thi công công trình cảng - ĐT', 1, 693, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170550', 'Quy hoạch cảng', 3, 694, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170551', 'Thực tập Hải văn công trình', 2, 695, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170552', 'Hải văn công trình', 3, 696, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170553', 'Đường thuỷ nội địa 1', 3, 697, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170555', 'Thi công cảng - Đường thuỷ', 6, 698, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170557', 'Quy hoạch cảng', 4, 699, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170561', 'Công trình bến cảng 1', 2, 700, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170562', 'ĐLH dòng sông và chỉnh trị sông', 3, 701, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170563', 'Đê chắn sóng và công trình ven bờ', 2, 702, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170564', 'Đồ án Đê chắn sóng và CT chỉnh trị', 1, 703, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170565', 'Đồ án CTTC trong Xưởng đóng tàu', 1, 704, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170569', 'Đồ án tốt nghiệp', 10, 705, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170570', 'Thực tập cán bộ kỹ thuật + TQ', 4, 706, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170571', 'Đồ án công trình bến cảng 1', 1, 707, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170572', 'Tự động hoá thiết kế CT cảng - ĐT', 2, 708, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170581', 'Công trình bến cảng 2', 2, 709, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170591', 'Đồ án Công trình bến cảng 2', 1, 710, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170650', 'Cảng và CT giao thông thuỷ', 3, 711, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170651', 'Cảng Và giao thông thuỷ', 2, 712, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170674', 'Công trình đường thuỷ', 2, 713, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170675', 'Cảng và giao thông thuỷ', 2, 714, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170701', 'Cảng biển', 3, 715, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170702', 'Đồ án Cảng biển', 2, 716, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170703', 'Cảng biển', 2, 717, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('170704', 'ĐA Cảng biển', 1, 718, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('171901', 'Quy H.Cảng & C.Trình đường sông', 2, 719, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('171902', 'Trầm tích & Hình thái sông', 2, 720, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('171903', 'Thiết kế cảng & Công trình phụ Trợ', 3, 721, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('171913', 'Thiết kế cảng & Công trình phụ trợ', 4, 722, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('173101', 'Công trình Cang-duong Thuy', 4, 723, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180102', 'Gd quốc phòng 2', 3, 724, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180202', 'Tk Va Tctloi', 6, 725, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180203', 'Da Tk Va Tctl', 2, 726, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180314', 'Công trình thủy', 3, 727, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180469', 'Giao thông và đường đô thị', 2, 728, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180505', 'Công trình thuỷ lợi', 2, 729, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180511', 'Công trình thủy lợi', 2, 730, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180513', 'Công trình thủy lợi', 2, 731, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180550', 'Công trình thuỷ lợi', 4, 732, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180601', 'Kỹ thuật thi công thuỷ lợi', 2, 733, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180602', 'Máy thủy lực', 3, 734, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180603', 'Thủy công 1+ ĐA', 4, 735, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180604', 'Thuỷ công 2 + ĐA', 5, 736, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180605', 'T.Công công trình 1+ĐA', 4, 737, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180606', 'T.Công công trình TH 2', 4, 738, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180607', 'Nhà máy thủy điện+ĐA', 4, 739, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180608', 'CT trạm Thuỷ điện', 4, 740, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180609', 'Thực tập công nhân', 4, 741, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180610', 'Thực tập CBKT', 6, 742, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180611', 'Đồ án Tốt nghiệp', 15, 743, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180612', 'Các Dụng Cụ Đo Lường', 1, 744, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180613', 'Đồ án Thuỷ năng', 2, 745, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180615', 'Đồ án Thuỷ công 1', 2, 746, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180616', 'Thuỷ công 2', 5, 747, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180617', 'Đồ án Thuỷ công 2', 2, 748, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180618', 'Thi công công trình thuỷ 1', 4, 749, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180619', 'Đồ án Thi công công trình thuỷ 1', 2, 750, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180620', 'Thi công công trình thuỷ 2', 4, 751, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180621', 'Đồ án Thi công thuỷ  2', 2, 752, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180622', 'Nhà máy thuỷ điện', 3, 753, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180623', 'Đồ án Nhà máy thuỷ điện', 2, 754, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180625', 'Máy thuỷ lực', 2, 755, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180630', 'Thuỷ năng', 2, 756, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180631', 'Đồ án Thuỷ năng', 1, 757, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180650', 'Thuỷ năng', 3, 758, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180651', 'Thuỷ công 1', 4, 759, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180652', 'Máy thuỷ lực', 4, 760, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180653', 'Thuỷ nông và trạm bơm', 3, 761, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180655', 'Tự động hoá thiết kế công trình', 3, 762, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180656', 'Công trình nhà máy thuỷ điện', 3, 763, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180657', 'Thuỷ công 2', 4, 764, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180658', 'Thi công thuỷ lợi', 6, 765, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180659', 'Tuốc bin nước', 3, 766, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180660', 'Máy bơm và trạm bơm', 2, 767, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180661', 'Tự động hoá thiết kế công trình', 2, 768, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180662', 'Thi công thuỷ lợi 1', 3, 769, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180663', 'Thi công thuỷ lợi 2', 3, 770, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180670', 'Thuỷ công 1', 3, 771, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180671', 'Đồ án Thuỷ công 1', 1, 772, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180672', 'Thuỷ công 2', 2, 773, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180673', 'Đồ án Thuỷ công 2', 1, 774, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180674', 'Công trình trên tuyến năng lượng của TTD', 3, 775, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180675', 'Nhà máy thuỷ điện', 2, 776, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180676', 'Đồ án Nhà máy thuỷ điện', 1, 777, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180677', 'Thi công công trình thuỷ lợi 2', 2, 778, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180678', 'Đồ án Thi công công trình thuỷ lợi 2', 1, 779, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180679', 'Thuỷ nông và trạm bơm', 2, 780, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180680', 'Cửa van thép', 2, 781, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180681', 'Thi công công trình thuỷ lợi 1', 3, 782, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180691', 'Đồ án Thi công CT thuỷ lợi 1', 1, 783, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180692', 'Thực tập cán bộ kỹ thuật + TQ', 4, 784, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180693', 'Đồ án tốt nghiệp', 10, 785, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180697', 'Tin học chuyên ngành', 2, 786, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180698', 'Quy hoạch thuỷ lợi', 2, 787, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('180699', 'Kinh tế thuỷ lợi', 2, 788, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181750', 'Trạm Thuỷ điện', 5, 789, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181751', 'Đồ án trạm thuỷ điện', 2, 790, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181752', 'Thuỷ công', 5, 791, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181753', 'Đồ án Thuỷ công', 2, 792, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181754', 'Thi công thuỷ lợi', 4, 793, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181755', 'Đồ án thi công thuỷ lợi', 2, 794, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181757', 'Thuỷ công 2', 4, 795, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181901', 'Các công trình thủy lợi', 1, 796, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181902', 'K.niệm về Quy hoạch C.Trình T.Lợi', 2, 797, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181903', 'Quản lý nguồn nước', 2, 798, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181904', 'Thiết kế công trình thủy', 1, 799, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181905', 'Thiết kế đập & C.Trình Phụ Trợ', 3, 800, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181906', 'Thiết kế công trình thủy nông', 2, 801, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181907', 'Các giải pháp pháp chống lũ', 2, 802, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181908', 'Duy tu & bảo dưỡng C.Trình thủy', 1, 803, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181909', 'Máy thuỷ lực', 1, 804, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181910', 'Các dụng cụ đo & đo Lường', 1, 805, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('181914', 'Thiết kế công trình thuỷ', 2, 806, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('183101', 'Thuỷ công', 3, 807, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('183102', 'Thuỷ năng, thuỷ điện', 3, 808, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('183105', 'TK&TC công trình thuỷ lợi', 3, 809, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('183106', 'Đồ án TK CT Thuỷ lợi', 2, 810, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('183110', 'Công trình thuỷ', 4, 811, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190201', 'Thủy lực', 4, 812, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190202', 'Thuỷ lực đại cương', 3, 813, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190211', 'Thủy lực Đại cương', 3, 814, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190505', 'Thủy văn', 3, 815, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190506', 'Thực tập Thủy văn', 1, 816, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190507', 'Hải văn công trình', 3, 817, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190515', 'Thủy văn và phòng chống TT', 2, 818, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190602', 'Thủy văn công trình', 4, 819, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190603', 'Thực tập Thủy văn', 2, 820, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190604', 'Thủy lực công trình', 3, 821, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190620', 'Thủy văn công trình', 2, 822, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190630', 'Thực tập đo đạc KT thủy văn', 1, 823, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('190809', 'Thủy khí động lực', 4, 824, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191001', 'Thủy lực và thủy văn', 3, 825, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191606', 'CS Tạo Hình K.Trúc', 3, 826, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191607', 'Cơ sở tạo hình kiến trúc', 2, 827, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191702', 'Thuỷ văn', 2, 828, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191751', 'Thủy lực & Thủy văn CT', 4, 829, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191901', 'Thủy lực cơ sở', 2, 830, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191902', 'Thủy văn học', 2, 831, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191903', 'Cơ học chất lỏng 1&2', 4, 832, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191904', 'Cơ học Ch Lỏng', 2, 833, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191905', 'Cơ học chất lỏng', 2, 834, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('191906', 'Cơ học chất lỏng nâng cao', 1, 835, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('192008', 'Thuỷ khí động học', 5, 836, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('193101', 'Thủy Lực Đại Cương', 4, 837, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('193102', 'Thuy Luc 2', 2, 838, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('193103', 'Thuỷ văn công trình', 3, 839, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('193104', 'Chuyên đề', 3, 840, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('193105', 'Thực tập thuỷ văn công trình', 1, 841, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200101', 'ăn Mòn Của MT Biển', 1, 842, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200102', 'Thiết kế CT Biển', 4, 843, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200103', 'Móng Đặc Chủng', 1, 844, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200104', 'Truyền âm dưới biển', 1, 845, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200105', 'Thiết Kế CT Biển', 4, 846, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200701', 'Các PP tính toán kết cấu& PMUD', 3, 847, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200702', 'Lý thuyết độ tin cậy -Tuổi thọ CT', 3, 848, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200703', 'Môi trường biển', 4, 849, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200704', 'Thực tập Khí tượng hải văn', 1, 850, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200705', 'Kinh tế biển - luật biển', 1, 851, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200706', 'Công nghiệp dầu khí và QHCT ngoài khơi', 2, 852, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200707', 'Đồ án Công trình bảo vệ bờ biển', 1, 853, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200708', 'CTB mềm và phương tiện nổi', 2, 854, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200709', 'Động lực học CTB', 3, 855, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200710', 'Công trình biển cố định', 2, 856, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200711', 'Công trình đường ống và dầu khí', 2, 857, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200712', 'Đồ án công trình đường ống và dầu khí', 1, 858, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200713', 'Cơ sở Kỹ thuật thi công công trình biển', 2, 859, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200714', 'Thi công công trình biển 2', 2, 860, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200715', 'Thực tập công nhân', 4, 861, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200716', 'Thực tập CBKT + TQ', 6, 862, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200717', 'Đồ án Tốt nghiệp', 15, 863, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200719', 'Đồ án Đường ống, BC, TB', 2, 864, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200720', 'Ctrình biển cố định1', 4, 865, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200721', 'Đồ án Công trình biển cố định 1', 2, 866, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200722', 'Đồ án thi công công trình biển 2', 1, 867, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200723', 'Công nghiệp dầu khí và Quy hoạch CTB', 2, 868, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200724', 'ĐLH cửa sông và ven biển', 2, 869, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200725', 'Ctb Co Dinh 1', 5, 870, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200726', 'Ngôn ngữ lập trình ứng dụng', 2, 871, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200727', 'Công trình dịch vụ kinh tế ven biển', 2, 872, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200728', 'Đồ án công trình dịch vụ k.tế ven biển', 1, 873, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200729', 'Công trình biển cố định 1', 2, 874, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200730', 'Kinh Te Bien+luat Bien', 2, 875, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200731', 'Đồ án Công trình biển cố định 1', 1, 876, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200732', 'Công trình biển cố định 2', 2, 877, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200733', 'Đồ án Công trình biển cố định 2', 1, 878, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200734', 'Thi công công trình ven biển', 2, 879, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200735', 'Đồ án thi công công trình ven biển', 1, 880, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200736', 'Bể chứa dầu khí', 2, 881, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200737', 'Đồ án bể chứa dầu khí', 1, 882, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200738', 'Tiêu chuẩn quy phạm', 2, 883, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200739', 'Lý thuyết độ tin cậy của KCCT', 3, 884, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200740', 'Phương pháp số và các PMUD', 3, 885, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200741', 'Môi trường biển tác động lên công trình', 3, 886, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200742', 'Ăn mòn VLXD trong môi trường biển', 2, 887, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200743', 'Công trình bảo vệ bờ biển', 2, 888, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200750', 'Đường ống, Bể chứa, Trạm bơm', 4, 889, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200751', 'Công trình biển cố định 2', 2, 890, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200752', 'Công trình bảo vệ bờ biển', 2, 891, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200753', 'Công trình biển mềm', 3, 892, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200754', 'Thi công công trình biển 1', 3, 893, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200755', 'Thi công công trình biển 2', 3, 894, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200756', 'Động lực học công trình biển', 2, 895, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200757', 'Đồ án thi công công trình biển', 2, 896, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200758', 'Đồ án Công trình biển cố định 2', 2, 897, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200759', 'Lý thuyết độ tin cậy', 4, 898, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200760', 'Các phần mềm ứng dụng', 4, 899, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200762', 'Thi công công trình biển', 6, 900, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200780', 'Thực tập Cán Bộ Kỹ Thuật', 4, 901, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('200781', 'Đồ án tốt nghiệp', 10, 902, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201901', 'Độ tin cậy & Tuổi thọ KC công trình', 2, 903, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201902', 'Kh. niện quy hoạch C.Trình ven biển', 2, 904, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201903', 'Môi trường biển', 2, 905, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201904', 'Tác động của sóng lên C.Trình', 2, 906, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201905', 'Hình thái bờ biển & Bảo vệ bờ', 1, 907, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201906', 'Phương pháp tính kết cấu', 1, 908, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201907', 'Động lực ngẫu nhiên kết cấu C.trình', 1, 909, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201908', 'PP tính K.cấu & ứng dụng phần mềm', 3, 910, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201909', 'Thực tập công nhân', 4, 911, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201910', 'Tham quan công trường', 3, 912, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201911', 'Thực tập CBKT', 5, 913, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201912', 'Đồ án tốt nghiệp', 15, 914, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('201913', 'Công cụ mô hình hóa bằng số', 1, 915, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220301', 'Đồ án Tốt nghiệp', 15, 916, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220302', 'Thực tập cán bộ kỹ thuật', 6, 917, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220304', 'Chấm sơ khảo', 0, 918, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220801', 'Hoá Silicat', 4, 919, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220802', 'tham quan chuyên ngành', 0, 920, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220803', 'Đồ án thiết bị nhiệt', 1, 921, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220804', 'Thiết bị nhiệt', 3, 922, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220805', 'CN chất kết dính vô cơ', 5, 923, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220806', 'CN chất kết dính vô cơ', 4, 924, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220807', 'Đồ án CN chất kết dính vô cơ', 1, 925, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220808', 'Công nghệ gốm XD', 5, 926, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220809', 'Công nghệ gốm XD', 4, 927, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220810', 'Đồ án Công nghệ gốm XD', 1, 928, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220827', 'Công nghệ bê tông xi măng 2', 4, 929, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220840', 'Đồ án CN bê tông xi măng', 1, 930, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220849', 'VL dùng cho các công trình thuỷ', 2, 931, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220850', 'Thiết bị nhiệt', 5, 932, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220851', 'Đồ án Thiết bị nhiệt', 2, 933, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220852', 'Đồ án chất kết dính vô cơ', 2, 934, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220853', 'Đồ án Công nghệ gốm XD', 2, 935, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220854', 'Đồ án công nghệ BTXM2', 2, 936, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220855', 'Thực tập CN + TQ', 4, 937, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220856', 'Thực tập CB kỹ thuật', 6, 938, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220857', 'Đồ án Tốt nghiệp', 15, 939, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220858', 'Vật liệu cách nhiệt', 2, 940, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220859', 'Vật liệu cách nhiệt', 3, 941, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220860', 'Đồ án Thiết bị nhiệt', 2, 942, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220861', 'Công nghệ bê tông xi măng', 4, 943, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220862', 'Công nghệ Bê tông xi măng 1', 4, 944, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220866', 'Công nghệ Bê tông xi măng 1', 2, 945, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220867', 'Công nghệ Bê tông xi măng 2', 5, 946, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220869', 'Vật liệu cách nhiệt', 3, 947, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220870', 'Hóa Silicát', 3, 948, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220871', 'Công nghệ BT chịu nhiệt', 2, 949, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220872', 'Công nghệ BT Polyme', 2, 950, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220873', 'An toàn LĐ trong các nhà máy SXVLXD', 2, 951, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220876', 'Vật liệu chịu lửa', 2, 952, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220878', 'Công nghệ bê tông xi măng 2', 3, 953, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220879', 'Đồ án công nghệ BTXM', 1, 954, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220880', 'Thực tập cán bộ kỹ thuật', 4, 955, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220881', 'Đồ án tốt nghiệp', 10, 956, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('220890', 'Thuỷ tinh xây dựng', 2, 957, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('221251', 'Công nghệ sản xuất vật liệu XD', 3, 958, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230201', 'Vật liệu xây dựng', 5, 959, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230211', 'Vật liệu xây dựng', 3, 960, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230212', 'Vật liệu xây dựng', 2, 961, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230401', 'Thực tập công nhân', 4, 962, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230402', 'Thực tập cán bộ kỹ thuật', 6, 963, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230403', 'Đồ án Tốt nghiệp', 15, 964, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230801', 'Vật liệu xây dựng', 0, 965, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230802', 'Thực hành TN VLXD', 1, 966, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230850', 'Vật liệu xây dựng', 5, 967, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('230874', 'Vật liệu làm đường', 2, 968, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('231604', 'Vật Liệu Xây Dựng', 3, 969, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('231651', 'Vật liệu xây dựng', 2, 970, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('231901', 'Kỹ thuật vật liệu', 2, 971, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `monhoc` (`ma_mon`, `ten_mon`, `so_tin_chi`, `id`, `so_tiet_ly_thuyet`, `so_tiet_thuc_hanh`, `ma_hoc_phan_tien_quyet`, `tai_lieu`, `date_created`, `date_updated`) VALUES
('231902', 'Vật liệu xây dựng', 3, 972, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('231903', 'Thí nghiệm vật liệu', 2, 973, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('232002', 'Vật liệu xây dựng', 4, 974, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('232101', 'Vật liệu xây dựng', 3, 975, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240101', 'Hóa học đại cương A1', 5, 976, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240102', 'Thực hành hoá ĐC', 1, 977, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240110', 'Co So Ly Thuyet Hoa Hoc', 5, 978, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240111', 'Hóa học đại cương', 3, 979, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240121', 'Hóa học đại cương', 5, 980, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240122', 'Thực hành hóa học DC', 1, 981, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240131', 'Hoá học đại cương', 2, 982, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240801', 'Hóa học vô cơ & các vật liệu vô cơ', 3, 983, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240802', 'Hóa hữu cơ & Polyme', 3, 984, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240803', 'Hóa học các vật liệu vô cơ', 4, 985, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240804', 'Vật liệu Polyme', 4, 986, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240805', 'Hóa lý', 4, 987, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240806', 'Pthh Trong Vlxd', 4, 988, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240808', 'Hoá keo', 2, 989, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240815', 'Hóa lý - Hóa keo', 3, 990, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240816', 'Hóa phân tích', 3, 991, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240850', 'Công nghệ hoá học', 3, 992, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240851', 'Công nghệ hóa học', 2, 993, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240901', 'Cơ sở hoá lý trong KTMT', 3, 994, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('240902', 'Cơ sở hóa lý trong KT môi trường', 2, 995, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('241121', 'Độc tố học sinh thái', 2, 996, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('241901', 'Hoá học', 6, 997, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('241902', 'Nguyên lý hóa công nghiệp', 2, 998, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('242001', 'Hoá môi trường', 4, 999, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('242002', 'Hoá môi trường', 3, 1000, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('242011', 'Hóa môi trường', 2, 1001, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('243100', 'Hoá ôn tập', 3, 1002, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('243101', 'Hoá đại cương', 4, 1003, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250101', 'Vật lí 1', 3, 1004, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250102', 'Vật lí 2', 2, 1005, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250103', 'Thực hành vật lí', 1, 1006, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250104', 'Thuc Hanh Vat Ly A2', 2, 1007, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250110', 'Vật lý Đại cương A1', 4, 1008, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250121', 'Vật lý đại cương A1', 4, 1009, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250122', 'Vật lý đại cương (A2)', 3, 1010, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250123', 'Thực hành Vật lý ĐC (A1)', 1, 1011, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250124', 'Thực hành Vật lý ĐC (A2)', 1, 1012, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250201', 'Vật lý đại cương a1', 4, 1013, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250202', 'Vật lý đại cương (a2)', 3, 1014, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('250301', 'Bai Tap Ly', 0, 1015, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251602', 'Thực tập công nhân', 3, 1016, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251604', 'Tham quan Kiến trúc', 4, 1017, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251605', 'Đồ án Tổng hợp', 6, 1018, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251606', 'Thực tập CBKT+TQ', 5, 1019, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251607', 'Đồ án Tốt nghiệp', 19, 1020, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251608', 'Đồ án tổng hợp', 6, 1021, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251901', 'Vật lý 1', 6, 1022, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251902', 'Vật lý 2', 6, 1023, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251903', 'Vật lý 3 (Điện)', 4, 1024, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251904', 'Vật lý 4 (Nhiệt)', 3, 1025, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251905', 'Vật lý 5 (Cơ lý thuyết)', 4, 1026, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251906', 'Vật lý 6 (Cơ đại cương)', 3, 1027, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251907', 'Vật lý 7 (Điện tử)', 3, 1028, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('251908', 'Vật lý 2', 5, 1029, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('253100', 'Vật lý ôn tập', 4, 1030, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('253101', 'Vật Lý Đại Cương 1', 4, 1031, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('253102', 'Vật lý đại cương 2', 2, 1032, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('253104', 'Vat Ly 2 (ke Ca Tn)', 4, 1033, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('260803', 'Cơ sở cơ khí 1', 3, 1034, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('260804', 'Cơ sở cơ khí 2', 4, 1035, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('260813', 'Cơ sở kỹ thuật cơ khí 1', 2, 1036, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('260814', 'Cơ sở cơ khí 2', 2, 1037, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('260850', 'Thực tập cơ khí', 1, 1038, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261001', 'Thực tập cơ khí', 1, 1039, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261002', 'Thực tập cơ khí', 1, 1040, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261050', 'Cơ sở cơ khí', 4, 1041, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261051', 'Cơ sở cơ khí', 2, 1042, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261201', 'Kỹ thuật gia công cơ khí', 4, 1043, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261202', 'Thực tập CN + TQ', 4, 1044, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261205', 'Nguyên lý máy', 3, 1045, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261210', 'Đồ án Nguyên lý máy', 2, 1046, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261211', 'Chi tiết máy', 5, 1047, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261212', 'Đồ án Chi tiết máy', 2, 1048, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261213', 'Chi tiết máy', 4, 1049, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261250', 'Vật liệu cơ khí', 4, 1050, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261251', 'Nguyên lý máy', 4, 1051, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261252', 'Đồ án Nguyên lý máy', 2, 1052, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261253', 'Dung sai & kỹ thuật đo', 2, 1053, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261254', 'Công nghệ gia công kim loại', 5, 1054, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261255', 'Đồ án chi tiết máy', 2, 1055, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261257', 'Thực tập CN cơ khí', 4, 1056, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261258', 'Đồ án chi tiết máy', 1, 1057, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261260', 'Vật liệu cơ khí', 3, 1058, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261301', 'Thực tập công nhân', 4, 1059, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261302', 'Thực tập CBKT & TQ', 6, 1060, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261303', 'Đồ án tốt nghiệp', 15, 1061, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261450', 'Thực tập công nhân', 4, 1062, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261451', 'Thực tập CBKT', 6, 1063, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261452', 'Đồ án Tốt nghiệp  15t', 15, 1064, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('261464', 'Đồ án Tốt nghiệp', 15, 1065, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('262001', 'Cơ sở cơ khí', 4, 1066, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('263107', 'Thuc Tap Cong Nhan', 4, 1067, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('2662', 'Thực tập CN + TQ', 4, 1068, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('2663', 'Thực tập CB Kỹ thuật', 6, 1069, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270201', 'Kỹ thuật điện', 3, 1070, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270202', 'Kỹ thuật điện tử', 1, 1071, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270211', 'Kỹ thuật điện', 2, 1072, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270810', 'Kỹ thuật điện', 4, 1073, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270811', 'Điện tử công nghiệp', 2, 1074, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270812', 'Kỹ thuật điện tử', 2, 1075, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('270850', 'Tự động hoá', 2, 1076, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271020', 'Điện động lực', 2, 1077, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271128', 'Tự động hóa', 2, 1078, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271207', 'Điện tử công suất', 4, 1079, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271215', 'Kỹ thuật điện tử', 3, 1080, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271232', 'Điều khiển tự động', 2, 1081, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271242', 'Điện tử công suất', 2, 1082, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271243', 'Điện tử công suất', 3, 1083, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271246', 'Đồ án trang bị điện', 1, 1084, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271250', 'Kỹ thuật điện 2', 2, 1085, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271251', 'Điều khiển tự động', 4, 1086, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271252', 'Trang bị điện', 5, 1087, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271253', 'Đồ án trang bị điện', 2, 1088, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271260', 'Trang bị điện', 4, 1089, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271261', 'Trang bị điện', 3, 1090, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271601', 'Hệ Thống điện công trình', 2, 1091, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271610', 'Điện kỹ thuật', 2, 1092, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271702', 'Kỹ thuật điện tử', 3, 1093, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271750', 'Kỹ thuật điện tử', 3, 1094, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271901', 'Mạch và năng lượng điện', 2, 1095, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271902', 'Thiết bị và cảm biến', 2, 1096, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('271903', 'Năng lượng và Viễn thông', 2, 1097, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('272001', 'Kỹ thuật điện tử', 3, 1098, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('272013', 'Kỹ thuật điện tử', 3, 1099, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('273101', 'Kỹ thuật điện', 4, 1100, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280201', 'Máy xây dựng', 3, 1101, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280211', 'Máy xây dựng', 2, 1102, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280802', 'Máy sản xuất vật liệu XD', 5, 1103, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280804', 'Máy sản xuất vật liệu XD', 3, 1104, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280805', 'Đồ án Máy sản xuất vật liệu XD', 1, 1105, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280850', 'Máy nâng chuyển', 2, 1106, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('280851', 'Đồ án Máy sản xuất vật liệu XD', 2, 1107, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281101', 'Qlcl Marketing', 2, 1108, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281102', 'Thực tập CB kỹ thuật', 6, 1109, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281103', 'Đồ án Tốt nghiệp', 15, 1110, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281112', 'Máy thi công', 5, 1111, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281114', 'Máy sản xuất vật liệu XD', 5, 1112, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281120', 'An Toàn Lao Động', 2, 1113, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281121', 'Nghiên cứu TN máy XD', 2, 1114, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281122', 'Cơ giới hoá xây dựng', 5, 1115, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281126', 'Kết cấu thép máy xây dựng', 3, 1116, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281132', 'Đồ án máy thi công', 2, 1117, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281142', 'Đồ án cơ giới hoá', 2, 1118, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281150', 'Ô tô máy kéo', 5, 1119, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281151', 'Khai thác máy xây dựng', 4, 1120, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281152', 'Tin học ứng dụng', 3, 1121, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281153', 'Truyền động thủy khí', 3, 1122, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281154', 'Cơ sở thiết kế máy xây dựng', 4, 1123, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281155', 'Máy nâng chuyển', 4, 1124, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281156', 'Đồ án Máy nâng chuyển', 2, 1125, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281157', 'Máy làm đất', 4, 1126, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281158', 'Đồ án máy làm đất', 2, 1127, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281159', 'Máy và thiết bị làm đường', 2, 1128, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281162', 'Thực tập cán bộ kỹ thuật', 6, 1129, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281172', 'Đồ án tốt nghiệp', 15, 1130, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281178', 'Đồ án Máy sản xuất vật liệu XD', 2, 1131, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281180', 'QL Chất lượng - Marketting', 2, 1132, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281192', 'Máy và thiết bị chuyên dùng', 3, 1133, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281193', 'Máy nâng & cơ giới CT lắp ghép', 4, 1134, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281194', 'Máy làm đất & CGH công tác LĐ', 5, 1135, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281195', 'Máy & CGH công tác bê tông', 4, 1136, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281196', 'Đồ án MN & CGH công tác', 2, 1137, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281197', 'Đồ án máy LĐ & CGH côngtác đất', 2, 1138, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281198', 'Đồ án máy & CGH công tác bê tông', 2, 1139, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281204', 'Máy sản xuất vật liệu xây dựng', 3, 1140, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281205', 'Đồ án Máy sản xuất vật liệu XD', 1, 1141, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281221', 'NC thực nghiệm máy XD', 2, 1142, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281226', 'Kết cấu thép máy xây dựng', 3, 1143, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281233', 'Máy làm đất', 3, 1144, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281234', 'Đồ án máy làm đất', 1, 1145, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281244', 'Máy & thiết bị chuyên dùng', 2, 1146, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281245', 'Tin học ứng dụng', 2, 1147, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281247', 'Cơ sở Thiết kế máy xây dựng', 3, 1148, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281275', 'Máy nâng chuyển', 3, 1149, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281276', 'Đồ án Máy nâng chuyển', 1, 1150, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281277', 'Đồ án kết cấu thép máy XD', 1, 1151, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281280', 'Thực tập Cán bộ kỹ thuật', 4, 1152, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('281281', 'Đồ án tốt nghiệp', 10, 1153, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('283101', 'Máy xây dựng', 3, 1154, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291601', 'Vẽ Mỹ Thuật 1', 4, 1155, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291602', 'Vẽ Mỹ Thuật 2', 5, 1156, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291603', 'Vẽ Mỹ Thuật 3', 5, 1157, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291604', 'Vẽ Mỹ Thuật 4', 5, 1158, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291605', 'Công Thái Học', 2, 1159, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291606', 'Trang Trí cơ bản 1', 3, 1160, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291607', 'Lịch Sử nghệ thuật', 3, 1161, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291608', 'Nội Thất', 3, 1162, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291609', 'Lịch sử nội thất', 2, 1163, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291610', 'Lịch sử Design', 2, 1164, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291611', 'Vẽ Mỹ Thuật 1', 2, 1165, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291612', 'Vẽ Mỹ Thuật 2', 2, 1166, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291613', 'Vẽ Mỹ Thuật 3', 4, 1167, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291614', 'Vẽ Mỹ Thuật 4', 2, 1168, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291615', 'Trang trí cơ bản 2', 2, 1169, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291616', 'Kỹ Thuật thể hiện mô hình KT', 2, 1170, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291617', 'Lý thuyết nội thất', 2, 1171, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291618', 'Thiết kế đồ họa', 2, 1172, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291619', 'Mỹ Thuật 5', 3, 1173, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291620', 'Kỹ thuật thể hiện chất liệu', 3, 1174, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291621', 'Nghệ thuật ảnh', 2, 1175, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291622', 'Trang trí cơ bản 1', 3, 1176, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291623', 'Vẽ Mỹ Thuật 3', 2, 1177, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291624', 'Vẽ mỹ thuật 3', 3, 1178, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291625', 'Vẽ mỹ thuật 4', 3, 1179, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291626', 'Đồ án TK nội thất 1', 2, 1180, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291627', 'Đồ án TK nội thất 2', 2, 1181, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291628', 'Đồ án TK nội thất 3', 3, 1182, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291629', 'Đồ án TK nội thất 4', 3, 1183, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291630', 'Đồ án TK nội thất 5', 2, 1184, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291631', 'Đồ án TK nội thất 6', 3, 1185, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291632', 'Đồ án TK nội thất 7', 3, 1186, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291633', 'Đồ án TK nội thất 8', 3, 1187, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291634', 'Thẩm mỹ Công nghiệp', 2, 1188, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291635', 'Trang trí chuyên ngành 2', 2, 1189, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291636', 'Chuyên đề nội thất', 2, 1190, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291650', 'Điêu Khắc', 4, 1191, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('291651', 'Điêu khắc', 2, 1192, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('3', 'Lịch Sử Nghệ Thuật', 2, 1193, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300101', 'Hình hoạ', 2, 1194, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300102', 'Vẽ kỹ thuật', 2, 1195, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300121', 'Vẽ kỹ thuật', 2, 1196, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300201', 'Hình hoạ', 2, 1197, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300202', 'Vẽ kỹ thuật 2', 2, 1198, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300203', 'Vẽ kỹ thuật 1', 4, 1199, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('300211', 'Hình họa', 3, 1200, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301205', 'Vẽ kỹ thuật cơ khí', 3, 1201, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301215', 'Vẽ KT cơ khí', 2, 1202, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301604', 'Vẽ kỹ thuật -Autocad', 3, 1203, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301606', 'Hình họa', 4, 1204, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301607', 'Vẽ kỹ thuật + Autocad', 2, 1205, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301608', 'Hình họa 1', 2, 1206, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301616', 'Hình họa 1', 3, 1207, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301617', 'Hình họa 2', 2, 1208, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301901', 'Hình họa', 2, 1209, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('301902', 'Vẽ kỹ thuật', 2, 1210, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('303101', 'Hình hoạ', 3, 1211, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('303102', 'Vẽ kỹ thuật', 4, 1212, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310106', 'Đồ án Kiến trúc DD-CN', 1, 1213, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310302', 'Kiến trúc 1', 3, 1214, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310305', 'Kiến trúc 2', 2, 1215, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310306', 'Đồ án Kiến trúc', 1, 1216, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310403', 'Kiến trúc DD và CN', 2, 1217, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310404', 'Đồ án Kiến trúc DD và CN', 1, 1218, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310506', 'Kiến trúc công nghiệp', 2, 1219, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310606', 'Kiến trúc', 2, 1220, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310701', 'Kiến trúc DD và CN', 2, 1221, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310702', 'Kiến trúc DD và CN', 3, 1222, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310703', 'Đồ án Kiến trúc DD và CN', 2, 1223, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310704', 'Đồ án kiến trúc', 1, 1224, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310850', 'Kiến trúc DD và CN', 4, 1225, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310851', 'Đồ án Kiến trúc', 2, 1226, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310853', 'Kiến trúc dân dụng & công nghiệp', 2, 1227, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('310854', 'Đồ án Kiến trúc dân dụng & công nghiệp', 1, 1228, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311005', 'Kiến trúc DD-CN', 2, 1229, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311006', 'Đồ án Kiến trúc DD-CN', 1, 1230, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311301', 'Kiến trúc 1', 3, 1231, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311302', 'Kiến trúc 2', 2, 1232, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311303', 'Đồ án kiến trúc', 1, 1233, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311450', 'Kiến trúc 1', 2, 1234, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311452', 'Đồ án Kiến trúc', 2, 1235, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311601', 'Kiến trúc công nghiệp 1', 3, 1236, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311602', 'Kiến trúc công nghiệp 2', 2, 1237, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311603', 'Chuyên đề cấu tạo kiến trúc', 1, 1238, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311604', 'Đồ án CTCN & đầu mối hạ tầng KT', 2, 1239, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311605', 'chuyên đề công nghiệp', 1, 1240, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311606', 'Kiến Trúc CN 1', 5, 1241, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311607', 'Đồ án Kiến Trúc CN 1', 3, 1242, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311608', 'Đồ án Kiến Trúc CN 2', 5, 1243, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311609', 'Chuyên đề công nghiệp', 2, 1244, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311610', 'Kiến Trúc CN 2', 3, 1245, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311611', 'Đồ án kiến trúc CN1', 2, 1246, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311612', 'Đồ án kiến trúc CN 2', 2, 1247, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311613', 'KTCN&CT đầu mối hạ tầng KT', 2, 1248, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311650', 'Thiết kế ý tưởng 3', 1, 1249, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311660', 'Chuyên Đề công nghiệp', 2, 1250, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311750', 'Cơ sở Kiến trúc', 4, 1251, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('311751', 'Đồ án Cs Kien trúc', 2, 1252, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('312001', 'Kiến trúc DD và CN', 4, 1253, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('312002', 'Đồ án Kiến trúc', 2, 1254, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('313101', 'Quy hoạch đô thị', 2, 1255, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('320201', 'Quy hoạch đô thị', 2, 1256, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('320202', 'Qui hoạch đô thị', 2, 1257, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('320212', 'Cơ sở QH và Kiến trúc', 2, 1258, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('320350', 'Hạ tầng cơ sở KT, Q.H', 2, 1259, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('320601', 'Đồ án Tốt nghiệp', 19, 1260, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321001', 'Đồ án Tốt nghiệp', 19, 1261, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321401', 'Qui hoạch đô thị', 2, 1262, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321402', 'Qui hoạch đô thị 1', 4, 1263, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321403', 'CTKT hạ tầng cơ sở', 2, 1264, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321404', 'Đồ án Qui hoach đô thị', 2, 1265, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321405', 'Đồ án qui hoạch ĐT', 1, 1266, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321601', 'Kỹ thuật đô thị', 2, 1267, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321602', 'Cơ sở tạo hình kiến trúc', 2, 1268, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321603', 'Chuyên đề quy hoạch', 1, 1269, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321604', 'Lịch sử Kiến trúc', 4, 1270, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321605', 'Quy trình& PP lập quy hoạch', 2, 1271, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321606', 'Kỹ thuật đô thị', 3, 1272, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321607', 'Xã hội học', 2, 1273, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321608', 'Đồ án Qui hoạch 1', 3, 1274, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321609', 'Đồ án Qui hoạch 2', 5, 1275, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321610', 'Lịch sử nghệ thuật', 2, 1276, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321611', 'Mỹ học', 2, 1277, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321612', 'Cảnh Quan Kiến Trúc', 2, 1278, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321614', 'Mỹ học & Xã hội học', 3, 1279, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321615', 'Đồ án công trình CN&đầu mối hạ tầng KT', 2, 1280, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321616', 'KTCN&C.trình đầu mối hạ tầng K.Thuật', 2, 1281, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321617', 'Lịch sử kiến trúc', 3, 1282, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321618', 'Chuyên đề qui hoạch', 2, 1283, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321620', 'Xã hội hoc', 3, 1284, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321621', 'Cơ sở văn hóa & Địa lí kinh tế VN', 2, 1285, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321622', 'QH hệ thống điện & Thông tin', 2, 1286, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321623', 'Khí hậu XD & Kiểm soát tiếng ồn', 3, 1287, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321624', 'Lịch sử Kiến trúc', 5, 1288, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321625', 'Sinh thái đô thị & QH môi trường', 2, 1289, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321626', 'Sử dụng bản đồ & hệ thồng Gis', 2, 1290, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321627', 'Q.Lý quy hoạch và lập dự án đầu tư', 2, 1291, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321628', 'Q.Hoạch hệ thống giao thông', 3, 1292, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321629', 'Q.Hoạch san nền thoát nước', 2, 1293, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321630', 'L.luận phê bình KT & QH+Đô thị hóa', 2, 1294, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321631', 'Cơ sở qui hoạch', 2, 1295, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321632', 'Đồ án Kiến trúc QH 1', 2, 1296, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321633', 'Quy hoạch đô thị 1', 2, 1297, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321634', 'Quy hoạch đô thị 2', 4, 1298, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321635', 'Đồ án qui hoạch đô thị 2', 2, 1299, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321636', 'Qui hoạch đô thị', 3, 1300, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321637', 'Đồ án qui hoạch 3', 2, 1301, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321638', 'Đồ án qui hoạch 4', 2, 1302, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321639', 'Đồ án qui hoạch 5', 3, 1303, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321640', 'Đồ án qui hoạch 6', 3, 1304, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321641', 'Đồ án qui hoạch 7', 4, 1305, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321642', 'Qui hoạch đô thị 2', 2, 1306, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321649', 'Đô thị hóa', 2, 1307, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321650', 'Qui hoạch đô thị nông thôn (CN)', 6, 1308, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321651', 'QH & kiến trúc cảnh quan', 3, 1309, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321652', 'QH vùng & qui hoạch nông thôn', 3, 1310, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321653', 'Thiết kế đô thị', 2, 1311, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321654', 'Bảo tồn di sản đô thị', 2, 1312, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321655', 'QL đô thị + Chính sách đô thị', 2, 1313, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321656', 'Chuyên đề kiến trúc', 2, 1314, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321657', 'Chuyên đề QH - 1', 2, 1315, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321658', 'Chuyên đề QH - 2', 2, 1316, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321659', 'Qui trình & PP lập QH', 2, 1317, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321660', 'Chuyên đề Qui hoạch', 2, 1318, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321661', 'Cấp thoát nước & CT & đô thj', 2, 1319, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321901', 'Xã hội đô thị', 1, 1320, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321902', 'Đô thị hóa & Quy hoạch đô thị', 2, 1321, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321903', 'Lập nhóm phân tích hiện trạng ĐT', 3, 1322, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321904', 'Những quyết sách PT đô thi', 3, 1323, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321905', 'Q.hoạch giao thông đô thị', 1, 1324, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321906', 'Đường và hệ thống Tín Hiệu', 1, 1325, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321907', 'Hình thái học đô thị', 2, 1326, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321908', 'Hướng dẫn tổ chức dự án', 4, 1327, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321909', 'Thực hành dự án đô thị', 16, 1328, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321910', 'Đồ án hạ tầng', 2, 1329, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321911', 'Chuyên đề qui hoạch', 2, 1330, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('321912', 'Tham quan công trường', 3, 1331, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('322002', 'Quy hoạch ĐT và XHH', 4, 1332, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('322101', 'Đồ án Tốt nghiệp', 19, 1333, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('323101', 'Quy hoạch đô thị', 2, 1334, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330202', 'Kiến trúc 1', 3, 1335, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330301', 'Kiến trúc 1', 4, 1336, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330302', 'Kiến trúc 1', 3, 1337, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330304', 'Đồ án Kiến trúc', 2, 1338, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330305', 'Kiến trúc 2', 2, 1339, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330306', 'Đồ án kiến trúc', 1, 1340, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330350', 'Kiến trúc 2', 3, 1341, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330851', 'Kiến trúc dân dụng & công nghiệp', 2, 1342, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('330852', 'Đồ án Kiến trúc dân dụng & CN', 1, 1343, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331005', 'Kiến trúc dân dụng - CN', 2, 1344, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331006', 'Đồ án kiến trúc', 1, 1345, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331201', 'Kiến trúc DD CN + ĐA', 3, 1346, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331202', 'Kiến trúc dân dụng CN', 3, 1347, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331203', 'Đồ án Kiến trúc DD CN', 2, 1348, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331301', 'Kiến trúc', 4, 1349, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331302', 'Đồ án kiến trúc', 2, 1350, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331450', 'Kiến Trúc 1', 2, 1351, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331451', 'Kiến trúc 2', 3, 1352, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331452', 'Đồ án Kiến trúc', 2, 1353, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331601', 'Cơ sở kiến trúc', 3, 1354, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331602', 'Cơ sơ kiến trúc 1', 3, 1355, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331603', 'Cơ sở kiến trúc 2', 2, 1356, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331604', 'Nguyên lý thiết kế kiến trúc DD1', 2, 1357, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331605', 'Nguyên lý thiết kế kiến trúc DD2', 2, 1358, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331606', 'Đồ án nội thất', 2, 1359, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331607', 'Cơ sở kiến trúc - 2', 3, 1360, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331608', 'Cơ Sở Kiến trúc 1', 4, 1361, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331609', 'Cơ Sở Kiến trúc 2', 4, 1362, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331610', 'Lý thuyết Kiến trúc', 3, 1363, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331611', 'Đồ án Kiến Trúc DD 1', 3, 1364, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331612', 'Đồ án Kiến Trúc DD 2', 3, 1365, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331613', 'Chuyên đề nội thất', 1, 1366, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331614', 'Chuyên đề trang thiết bị CT', 1, 1367, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331615', 'Chuyên đề dân dụng', 2, 1368, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331616', 'Đồ án Kiến Trúc DD 3', 3, 1369, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331617', 'Đồ án Kiến Trúc DD 4', 4, 1370, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331618', 'Đồ án Kiến Trúc DD 5', 4, 1371, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331619', 'Đồ án Kiến Trúc DD 6', 5, 1372, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331620', 'Đồ án Kiến Trúc DD 7', 5, 1373, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331621', 'Đồ án Kiến Trúc DD 8', 5, 1374, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331622', 'Thực tập vẽ ghi', 1, 1375, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331623', 'Thực tập Vẽ Ghi', 1, 1376, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331624', 'Thực tập Vẽ ghi', 2, 1377, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331625', 'Đồ án kiến trúc DD 1', 2, 1378, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331626', 'Đồ án kiến trúc DD 2', 2, 1379, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331627', 'Đồ án kiến trúc DD 3', 2, 1380, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331628', 'Đồ án kiến trúc DD 4', 2, 1381, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331629', 'Đồ án kiến trúc DD 5', 2, 1382, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331630', 'Đồ án kiến trúc DD 6', 2, 1383, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331631', 'Đồ án kiến trúc DD 7', 2, 1384, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331632', 'Đồ án kiến trúc DD 8', 2, 1385, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331633', 'Nội thất', 2, 1386, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331634', 'Cấu tạo kiến trúc', 3, 1387, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331635', 'Chuyên đề dân dụng', 1, 1388, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331636', 'Thiết kế ý tưởng 3', 1, 1389, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331637', 'Trang thiết bị công trình', 2, 1390, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331648', 'Kiến trúc nhà ở', 2, 1391, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331649', 'kiến trúc nhà công cộng', 2, 1392, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331650', 'Kiến Trúc Nhà ở', 2, 1393, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331651', 'Kiến Trúc Nhà Công Cộng', 3, 1394, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331652', 'Cấu Tạo Nhà Dân Dụng', 4, 1395, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331653', 'Lịch Sử Đô Thị', 2, 1396, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331654', 'Thiết Kế ý tưởng 1', 1, 1397, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331655', 'Thiết Kế ý tưởng 2', 1, 1398, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331656', 'Thiết Kế ý tưởng 4', 1, 1399, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331657', 'Thiết Kế ý tưởng 5', 1, 1400, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331658', 'Cấu tạo kiến trúc nhà dân dụng DD', 3, 1401, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331660', 'Chuyên đề kiến trúc DD', 2, 1402, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331661', 'Chuyên đề lý thuyết', 2, 1403, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331662', 'Thiết kế kiến trúc DD 1', 2, 1404, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331750', 'Cơ sở kiến trúc', 4, 1405, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331751', 'Đồ án Cơ sở kiến trúc', 2, 1406, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331901', 'Kiến trúc', 2, 1407, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331902', 'Đồ án Kiến trúc', 1, 1408, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331903', 'Chuyên đề 1(Quy hoạch)', 2, 1409, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331904', 'Chuyên đê 2 (K.Thuật hạ tầng ĐT)', 2, 1410, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331905', 'Tham quan công trường', 3, 1411, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331906', 'Xã hội học đô thị', 1, 1412, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('331907', 'Những quyết sách PT đô thị', 3, 1413, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('333101', 'Kiến trúc dân dụng', 4, 1414, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('333102', 'Đồ án kiến trúc', 2, 1415, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('340101', 'Khí hậu xây dựng', 2, 1416, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('340301', 'Vật lý Kiến trúc', 2, 1417, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('340306', 'Vật Lý Kiến Trúc', 2, 1418, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('340804', 'Vật lý kiến trúc', 2, 1419, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341101', 'Chống ô nhiễm tiếng ồn', 2, 1420, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341111', 'Chống ô Nhiễm Tiếng ồn', 2, 1421, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341601', 'Vật lý kiến trúc 1', 3, 1422, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341602', 'vật lý kiến trúc 2', 2, 1423, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341603', 'K.trúc sinh khí hậu & chiếu sáng', 3, 1424, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341604', 'Âm học kiến trúc', 2, 1425, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341605', 'Chuyên đề Kiến trúc Môi trường', 1, 1426, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341606', 'Khí hậu XD & kiểm soát tiếng ồn', 3, 1427, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341607', 'Vật Lý Kiến Trúc 1', 4, 1428, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341608', 'Vật Lý Kiến Trúc 2', 2, 1429, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341609', 'Môi Trường', 2, 1430, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341610', 'Chiếu sáng Đô thị', 2, 1431, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341611', 'Chuyên đề vật lý kiến trúc', 1, 1432, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341612', 'Sinh thái ĐT&QH môi trường', 2, 1433, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341618', 'Vật lý kiến trúc 2', 3, 1434, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341901', 'Vật lý kiến trúc (Âm học)', 1, 1435, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341902', 'Con người & Môi trường', 1, 1436, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341903', 'Sinh thái công nghiệp', 1, 1437, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('341904', 'Nhiệt và âm thanh', 2, 1438, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('342001', 'Khí hậu xây dựng', 2, 1439, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('342002', 'Khí hậu học xây dựng', 3, 1440, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351601', 'Lịch sử kiến trúc', 3, 1441, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351602', 'Lý thuyết sáng tác kiến trúc', 2, 1442, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351603', 'Lý thuyết sáng tác & cơ sở tạo hình KT', 3, 1443, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351604', 'Lịch sử nghệ thuật,Mĩ học & Xã hội học', 3, 1444, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351605', 'Thiết kế ý tưởng 1', 1, 1445, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351606', 'Vẽ ghi', 2, 1446, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351607', 'chuyên đề lý thuyết', 1, 1447, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351608', 'Chuyên đề lý thuyết kiến trúc', 2, 1448, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351609', 'Lịch Sử nội thất', 2, 1449, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351610', 'Chuyên đề (lý thuyết kiến trúc)', 2, 1450, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351611', 'Cơ sở kiến trúc 1', 3, 1451, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351612', 'Cơ sở kiến trúc 2', 2, 1452, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351613', 'Cơ sở tạo hình kiến trúc', 2, 1453, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351614', 'Vẽ ghi', 2, 1454, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351615', 'Lịch sử kiến trúc', 3, 1455, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351616', 'Đồ án dân dụng 1', 2, 1456, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351617', 'Đồ án dân dụng 2', 2, 1457, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351618', 'Thiết kế ý tưởng 1', 1, 1458, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351619', 'Thực tập CN + TQ', 1, 1459, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351620', 'Thực tập CN + TQ', 2, 1460, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351621', 'Thực tập CBKT', 3, 1461, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351622', 'Đồ án tốt nghiệp', 10, 1462, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `monhoc` (`ma_mon`, `ten_mon`, `so_tin_chi`, `id`, `so_tiet_ly_thuyet`, `so_tiet_thuc_hanh`, `ma_hoc_phan_tien_quyet`, `tai_lieu`, `date_created`, `date_updated`) VALUES
('351623', 'Đồ án tổng hợp', 3, 1463, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351624', 'Đồ án tổng hợp', 4, 1464, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351625', 'Cơ sở kiến trúc', 3, 1465, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('351626', 'TT CB kỹ thuật', 5, 1466, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360121', 'Nhập môn quản trị học', 3, 1467, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360201', 'Kinh tế xây dựng', 3, 1468, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360215', 'Kinh tế xây dựng  1', 2, 1469, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360250', 'Kinh tế xây dựng 1', 3, 1470, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360251', 'Kinh tế xây dựng 2', 2, 1471, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360301', 'Kinh tế xây dựng 2', 2, 1472, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360351', 'Kinh tế xây dựng 2', 2, 1473, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360450', 'Quản lý dự án', 2, 1474, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360451', 'Kinh tế xây dựng 2', 2, 1475, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360501', 'Kinh tế Xây dựng 2', 2, 1476, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360601', 'Kinh tế xây dựng 2', 2, 1477, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360801', 'Kinh tế công nghệ VLXD', 2, 1478, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360802', 'TCQL xí nghiệp', 2, 1479, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360809', 'Kinh tế CN VLXD', 3, 1480, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360810', 'TCQL xí nghiệp', 4, 1481, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('360901', 'Kinh tế môi trường', 2, 1482, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361001', 'Kinh tế XD', 3, 1483, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361002', 'Kinh tế môi trường', 2, 1484, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361101', 'Kinh tế  ngành', 2, 1485, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361103', 'Kinh tế môi trường', 3, 1486, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361201', 'Kinh tế xây dựng 2', 2, 1487, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361301', 'Kinh Tế xây dựng 2', 2, 1488, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361302', 'Kinh tế xây dựng 2', 3, 1489, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361303', 'Đồ án Kinh tế xây dựng', 1, 1490, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361304', 'Kinh tế đầu tư', 2, 1491, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361305', 'Đồ án Kinh tế đầu tư', 1, 1492, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361306', 'Quản lý dự án', 2, 1493, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361401', 'Kinh tế đô thị', 4, 1494, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361402', 'Kinh tế xây dựng 2', 2, 1495, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361403', 'Pt và đánh giá Dadt', 3, 1496, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361404', 'QL đất đai và CTĐT', 2, 1497, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361405', 'Đồ án  Kinh Tế  đô Thị', 2, 1498, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361406', 'Đồ án Pt và Dg DA đầu tư', 2, 1499, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361407', 'Kinh tế XD2 & Nghiệp vụ đấu thầu', 3, 1500, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361408', 'Phân tích  & đánh giá DAĐT', 2, 1501, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361409', 'Đồ án  PT & đánh giá DAĐT', 1, 1502, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361410', 'Kinh tế đô thị', 2, 1503, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361411', 'Đồ án kinh tế Đô thị', 1, 1504, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361450', 'Kinh tế XD2', 5, 1505, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361451', 'Đồ án Kinh tế XD', 2, 1506, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361452', 'Kinh tế đầu tư', 3, 1507, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361453', 'Kinh tế máy', 2, 1508, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361454', 'Nhập môn quản trị KD', 2, 1509, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361480', 'Thực tập công nhân', 4, 1510, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361481', 'Đồ án tốt nghiệp', 10, 1511, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361482', 'Thực tập cán bộ kỹ thuật', 4, 1512, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361601', 'Quản lý&lập dự án đầu tư', 2, 1513, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361620', 'Kinh Tế Xây Dựng', 3, 1514, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361621', 'Kinh Tế Xây Dựng', 2, 1515, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361901', 'Cơ sở quản trị kinh doanh', 2, 1516, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361902', 'Kinh tế vận tải', 2, 1517, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('361903', 'Khung luật', 1, 1518, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('362050', 'Kinh tế môi trường', 3, 1519, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('362501', 'Quản lý đất đai và CT đô thị', 2, 1520, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371101', 'QLCL & MAKETING', 2, 1521, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371301', 'Kinh tế học', 3, 1522, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371302', 'Maketing', 2, 1523, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371303', 'Maketing', 3, 1524, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371304', 'Thống kê trong xây dựng', 2, 1525, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371305', 'Tài chính DNXD', 2, 1526, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371306', 'Phân tích hoạt động SXKD', 2, 1527, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371307', 'Hạch toán kế toán', 3, 1528, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371308', 'Marketing trong xây dựng', 2, 1529, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371401', 'Kinh tế công cộng', 2, 1530, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371402', 'HT kế toán & PTKTĐT', 4, 1531, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371403', 'Tai Chinh Do Thi', 3, 1532, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371404', 'Hạch toán kế toán', 3, 1533, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371405', 'PT hoạt động KTDN', 2, 1534, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371406', 'PT hoạt động kinh tế', 4, 1535, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371407', 'Thống kê xây dựng', 3, 1536, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371408', 'Kinh tế công cộng', 2, 1537, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371409', 'Tài chính đô thị', 2, 1538, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371410', 'Hạch toán KT trong DN', 2, 1539, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371411', 'Phân tích KT trong DN có HDDV', 2, 1540, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371412', 'Kế toán doanh nghiệp kinh doanh bất động', 2, 1541, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371421', 'Tài chính và tín dụng BĐS', 2, 1542, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371423', 'Phân tích hoạt động DNKD Bất động sản', 2, 1543, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371450', 'Thống kê doanh nghiệp XD', 4, 1544, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371451', 'Tài chính xây dựng', 4, 1545, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371452', 'Hạch toán kế toán', 5, 1546, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371453', 'Phân tích hoạt động KT', 3, 1547, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371454', 'Maketing xây dựng', 3, 1548, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371490', 'Kinh tế học', 4, 1549, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371901', 'Kinh tế vĩ mô 1', 1, 1550, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371902', 'Kinh tế vĩ mô 2', 1, 1551, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371903', 'Kế toán quản trị', 1, 1552, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371904', 'Bảo hộ sáng chế', 1, 1553, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371905', 'Kinh tế (Nghiêp vụ)', 1, 1554, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371906', 'Kinh tế đại cương', 2, 1555, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371907', 'Kinh tế đại cưong I + II', 2, 1556, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('371908', 'Kinh tế vận tải', 2, 1557, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('380101', 'Pháp luật đại cương', 3, 1558, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('380201', 'Pháp luật Việt Nam ĐC', 3, 1559, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('380202', 'Luật xây dựng', 2, 1560, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('380203', 'Luật kinh tế', 2, 1561, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('380211', 'Pháp luật Việt Nam ĐC', 2, 1562, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381301', 'Mô hình toán KT& Tin ƯD', 3, 1563, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381302', 'Tổ chức xây dựng 1', 2, 1564, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381303', 'Pháp luật trong xây dựng', 2, 1565, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381304', 'Tổ chức xây dựng 2', 2, 1566, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381305', 'ĐA Tổ chức xây dựng', 1, 1567, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381306', 'Định mức kỹ thuật trong XD', 3, 1568, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381307', 'Đồ án định mức KT trong XD', 1, 1569, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381308', 'Kế hoạch dự báo', 2, 1570, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381401', 'Tin học ứng dụng', 2, 1571, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381402', 'Định giá sản phẩm', 3, 1572, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381403', 'Tổ  chức & XD CTĐT', 3, 1573, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381404', 'Tin học trong QLĐT', 2, 1574, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381405', 'Kế hoạch XD đô thị', 2, 1575, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381406', 'Mô hình toán kinh tế', 2, 1576, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381407', 'Đồ án TC & XD CTDT', 2, 1577, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381408', 'Xã hội học đô thị', 2, 1578, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381409', 'Tổ chức & XDCT đô thị', 3, 1579, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381410', 'Định mức KTXD & DVCC', 3, 1580, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381411', 'PL trong QLXD đô thị', 2, 1581, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381412', 'Đồ án tổ chức & XDCTĐT', 1, 1582, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381413', 'Định mức KTXD & DVCTĐT', 3, 1583, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381414', 'Định giá  sản phẩm hàng hóa', 2, 1584, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381415', 'Quản lý đô thị', 2, 1585, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381416', 'Đồ án  ĐM KTXD & DVCTĐT', 1, 1586, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381417', 'Kế hoạch hoá đầu tư & kinh doanh BĐS', 2, 1587, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381418', 'Quản lý rủi ro đầu tư & kinh doanh BĐS', 2, 1588, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381419', 'Định giá bất động sản', 3, 1589, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381420', 'Đồ án định giá BĐS', 1, 1590, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381421', 'Thẩm định & GS đánh giá dự án đầu tư BĐS', 2, 1591, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381422', 'Quản lý & khai thác công trình BĐS', 2, 1592, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381423', 'Phân tích hoạt động DNKD BĐS', 2, 1593, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381450', 'Định giá  sản phẩm', 2, 1594, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381451', 'Phân tích HT kinh tế', 2, 1595, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381452', 'Định mức kinh tế', 4, 1596, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381453', 'Đồ án định mức', 2, 1597, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381454', 'Mô hình toán kinh tế', 4, 1598, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381455', 'Luật kinh tế', 2, 1599, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381456', 'Kế hoạch dự báo', 4, 1600, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381457', 'Định giá sản phẩm', 3, 1601, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381458', 'Giám định xây dựng', 2, 1602, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381459', 'Tổ chức xây dựng 1', 3, 1603, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381460', 'Tổ chức  xây dựng 2', 3, 1604, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381461', 'Đồ án Tổ chức xây dựng', 2, 1605, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381462', 'Tin học ứng dụng', 2, 1606, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381465', 'Nhập môn Quản trị KD', 2, 1607, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381479', 'Thực tập công nhân', 4, 1608, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381480', 'Thực tập CB kỹ thuật', 4, 1609, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381481', 'Đồ án tốt nghiệp', 10, 1610, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381482', 'Thực tập CB kỹ thuật', 4, 1611, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381601', 'Pháp luật ĐC', 2, 1612, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381901', 'Pháp luật đại cương', 2, 1613, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381902', 'Hợp đồng', 1, 1614, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381903', 'Chiến lược và tổ chức xí nghiệp', 1, 1615, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('381904', 'Khung Luật', 1, 1616, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('382001', 'Luật kinh tế', 2, 1617, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('382002', 'PL trong ĐT & XD', 2, 1618, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390101', 'Đại số', 5, 1619, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390102', 'Giải tích 1', 5, 1620, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390103', 'Giải tích 2', 5, 1621, 0, 0, '390102', '', '0000-00-00 00:00:00', '2017-11-19 06:41:04'),
('390111', 'Đại số tuyến tính', 3, 1622, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390121', 'Giải tích 1', 3, 1623, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390126', 'Toan cao cấp (A4)', 3, 1624, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390131', 'Toán 1', 8, 1625, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390132', 'Toán 2', 7, 1626, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390133', 'Xác suất thống kê', 4, 1627, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('390141', 'Giải tích 2', 4, 1628, 0, 0, '390121', '', '0000-00-00 00:00:00', '2017-11-19 06:41:25'),
('391604', 'Đại số', 2, 1629, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391605', 'Giải tích', 3, 1630, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391609', 'Toán 1', 3, 1631, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391610', 'Toán 2', 3, 1632, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391619', 'Toán 1', 4, 1633, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391620', 'Toán 2', 4, 1634, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391702', 'Đảm bảo toán học cho TH', 4, 1635, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391703', 'Toán học tính toán', 3, 1636, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391728', 'Toán học tính toán', 3, 1637, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391901', 'Toán 1', 8, 1638, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391902', 'Toán 2', 7, 1639, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391903', 'Toán 3', 7, 1640, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391904', 'Xác suất thống kê', 4, 1641, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391905', 'Phương pháp tính', 3, 1642, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391906', 'Toán 6 (Fourier)', 2, 1643, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391907', 'Toán 7 (Giải tích số)', 2, 1644, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391908', 'Toán 8 (Hàm phức )', 2, 1645, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391909', 'Phương pháp thống kê', 1, 1646, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391910', 'Công cụ mô hình hóa bằng số', 1, 1647, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('391911', 'Toán 6 (Fourier)', 1, 1648, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('393100', 'Toán Ôn tập', 6, 1649, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('393101', 'Toán cao cấp A1', 5, 1650, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('393102', 'Toán cao cấp 2', 4, 1651, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('393103', 'Toán cao cấp A3', 6, 1652, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('393107', 'Toán cao cấp A1', 6, 1653, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('400101', 'Xác suất thống kê', 2, 1654, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('400124', 'Phương pháp tính', 2, 1655, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('400127', 'Xác suất thống kê', 3, 1656, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401701', 'Logic học ĐC', 2, 1657, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401702', 'Toán rời rạc', 4, 1658, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401703', 'Toán học tính toán', 3, 1659, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401705', 'Biến đổi t.phân & PTĐHR', 2, 1660, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401712', 'Toan roi rac', 3, 1661, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401801', 'Logic học', 2, 1662, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401804', 'Tối ưu và ĐK học', 5, 1663, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401806', 'Lý thuyết đồ thị', 2, 1664, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401807', 'XSTK ứng dụng', 2, 1665, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401808', 'Automat & NNHT', 2, 1666, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401816', 'Lý thuyết điều khiển', 2, 1667, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401901', 'Toán 1', 8, 1668, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401902', 'Toán 2', 7, 1669, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401903', 'Toán 3', 7, 1670, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401904', 'Xác suất thống kê', 4, 1671, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401905', 'Phương pháp tính', 3, 1672, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401906', 'Biến đổi Fourier & tối ưu hóa', 2, 1673, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401907', 'Toán 7 (Giải tích & tối ưu hóa)', 2, 1674, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('401908', 'Toán 8 ( Hàm phức )', 2, 1675, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('402109', 'Lý thuyết tối ưu', 2, 1676, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410101', 'Kinh tế chính trị MLN', 5, 1677, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410102', 'Triết học Mác - Lênin', 5, 1678, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410103', 'Chủ nghĩa XH Khoa học', 4, 1679, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410104', 'Lich sử Đảng', 4, 1680, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410105', 'VB và lưu trữ học DC', 2, 1681, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410106', 'Tâm lý học đại cương', 3, 1682, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410108', 'Tư tưởng Hồ Chí Minh', 3, 1683, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410109', 'Chính trị cuối khoá', 0, 1684, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410112', 'Tư tưởng Hồ Chí Minh', 2, 1685, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410113', 'Đường lối CM của Đảng cộng sản VN', 3, 1686, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410124', 'Kinh tế chính trị 1', 5, 1687, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410125', 'Kinh tế chính trị 2', 3, 1688, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410202', 'Triết học Mác - Lênin 1', 3, 1689, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('410203', 'Triết học Mác - Lênin 2', 3, 1690, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('411601', 'kinh tế Chính Trị', 3, 1691, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('411602', 'Lịch sử Đảng', 4, 1692, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('413103', 'Tư tưởng Hồ Chí Minh', 4, 1693, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('413104', 'Lịch sử Đảng', 4, 1694, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('413105', 'Van Ban Va Luu Tru', 2, 1695, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420101', 'Những N.lý CB của CN Mác-Lênin (Phần 1)', 2, 1696, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420102', 'Những N.lý CB của CN Mác-Lênin (Phần 2)', 3, 1697, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420121', 'Kinh tế chính trị', 5, 1698, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420122', 'Triết học Mác - Lênin', 6, 1699, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420123', 'Kinh tế chính trị 2', 3, 1700, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('420131', 'Kinh Tế Chính Trị MLN', 5, 1701, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('421901', 'Những N.Lý CB của CN Mác-LêNin (Phần 1)', 3, 1702, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('421902', 'Những N.Lý CB của CN Mác-LeNin (Phần2)', 4, 1703, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('423101', 'Kinh Te Chinh Tri', 3, 1704, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('423102', 'Kinh Te C.tri Maclenin 2', 4, 1705, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('430101', 'Giáo dục thể chất 1', 1, 1706, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('430102', 'Giáo dục thể chất 2', 1, 1707, 0, 0, '430101', '', '0000-00-00 00:00:00', '2017-11-19 09:39:37'),
('430103', 'Giáo dục thể chất 3', 1, 1708, 0, 0, '430102', '', '0000-00-00 00:00:00', '2017-11-19 09:39:58'),
('430104', 'Giáo dục thể chất 4', 1, 1709, 0, 0, '430103', '', '0000-00-00 00:00:00', '2017-11-19 09:40:14'),
('430105', 'Giáo dục thể chất 5', 1, 1710, 0, 0, '430104', '', '0000-00-00 00:00:00', '2017-11-19 09:40:35'),
('430111', 'Thể chất 1', 1, 1711, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440101', 'Ngoại ngữ 1', 6, 1712, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440102', 'Ngoại Ngữ 2', 7, 1713, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440103', 'Ngoại Ngữ 3', 7, 1714, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440104', 'Pháp 3', 0, 1715, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440105', 'Ngoại ngữ chuyên ngành', 5, 1716, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440106', 'Ngoại ngữ 2', 2, 1717, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440107', 'Ngoại ngữ 2A', 1, 1718, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440111', 'Ngoại ngữ 1', 5, 1719, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440112', 'Ngoại ngữ 2', 5, 1720, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440121', 'Ngoại ngữ 1', 3, 1721, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440122', 'Ngoại ngữ (2)', 6, 1722, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440123', 'Ngoại Ngữ (3)', 6, 1723, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440131', 'Tiếng Anh', 8, 1724, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440132', 'Ngoai Ngu 2', 8, 1725, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440141', 'Ngoại ngữ 2', 3, 1726, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440150', 'Tiếng Anh bổ sung', 4, 1727, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440151', 'Tiếng Anh TOEIC 1', 4, 1728, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440152', 'Tiếng Anh TOEIC 2', 4, 1729, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440153', 'Tiếng Anh TOEIC 3', 4, 1730, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440201', 'Cơ sở ngôn ngữ học', 2, 1731, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440204', 'Ngoại ngữ chuyên ngành', 3, 1732, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440214', 'Ngoại ngữ chuyên ngành', 2, 1733, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440223', 'Ngoại ngữ (3)', 3, 1734, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440301', 'Ngoại ngữ 1', 8, 1735, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440304', 'Ngoại ngữ 4 (T.pháp)', 3, 1736, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440305', 'Ngoại ngữ 5(T.Pháp)', 3, 1737, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440306', 'Ngoại ngữ 6(T.Pháp)', 3, 1738, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440307', 'Ngoại ngữ 7(T.Pháp)', 3, 1739, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440308', 'Ngoại ngữ 8(T.Pháp)', 3, 1740, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440309', 'Ngoại ngữ 9(T.Pháp)', 3, 1741, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('440801', 'Từ vựng T.Pháp chuyên ngành', 3, 1742, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441601', 'Ngoại ngữ 1', 3, 1743, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441602', 'Ngoại ngữ 2', 3, 1744, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441901', 'Ngoại ngữ 1(Anh)', 8, 1745, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441902', 'Ngoại ngữ 2(Anh)', 8, 1746, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441903', 'Ngoại ngữ 3(Anh)', 3, 1747, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441904', 'Ngoại ngữ 4(Pháp1)', 5, 1748, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441905', 'Ngoại ngữ (Pháp2)', 8, 1749, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441906', 'Tiếng pháp 3', 5, 1750, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441907', 'Ngoại ngữ (Tiếng Pháp3)', 3, 1751, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441908', 'Ngoại ngữ(Tiếng Pháp 4)', 3, 1752, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441909', 'Ngoại ngữ {Tiếng Pháp5}', 3, 1753, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441910', 'Ngoại ngữ 1 (Tiếng pháp 1)', 5, 1754, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441911', 'Tiếng pháp 2', 5, 1755, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441912', 'Tiếng anh 2', 8, 1756, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441913', 'Tiếng anh 1', 5, 1757, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441914', 'Tiếng pháp 1', 10, 1758, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441915', 'Tiếng pháp 2', 10, 1759, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441916', 'Ngoại ngữ 8(Tiếng pháp 6)', 3, 1760, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441917', 'Ngoại ngữ 9(Tiếng Pháp 7)', 3, 1761, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441918', 'Tiếng pháp 5', 3, 1762, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441919', 'Ngoại ngữ 5 (Anh 1)', 5, 1763, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441920', 'Tiếng pháp 4', 5, 1764, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441921', 'Ngoại ngữ 7 ( Anh 2)', 5, 1765, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441922', 'Ngoại ngữ 10 (Tiếng pháp 8)', 3, 1766, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441923', 'Ngoại ngữ 8 (Tiếng pháp 6)', 3, 1767, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441924', 'Ngoại ngữ 9 (pháp 7)', 3, 1768, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('441925', 'Ngoại ngữ 11 (tiếng pháp 9)', 3, 1769, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('443101', 'Ngoại ngữ 1', 4, 1770, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('443102', 'Ngoại ngữ 2', 4, 1771, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('443103', 'Ngoại ngữ 3', 4, 1772, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('443110', 'Ngoai Ngu', 4, 1773, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450101', 'Tin học đại cương', 3, 1774, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450111', 'Nhập môn tin học (A)', 5, 1775, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450112', 'Tin học đại cương', 4, 1776, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450131', 'Nhập Môn Tin Học (a)', 5, 1777, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450201', 'Tin học ứng dụng', 2, 1778, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450202', 'Tin học ứng dụng', 2, 1779, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450301', 'ứng dụng TH trong TKCT', 3, 1780, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450302', 'ƯD tin học trong thiết kế', 2, 1781, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450303', 'ƯD tin học trong thi công', 2, 1782, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450450', 'Tin học ứ.dụng (Đường)', 2, 1783, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450451', 'Tin học ứng dụng (Cầu)', 2, 1784, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450507', 'Autocad thiết kế công trình', 2, 1785, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450850', 'Tin học ứng dụng', 3, 1786, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('450903', 'Tin hoc ứng dụng (DT)', 2, 1787, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451001', 'Tin học ứng dụng (MN)', 2, 1788, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451102', 'Tin học ứng dụng (HK)', 2, 1789, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451611', 'Tin học đại cương', 3, 1790, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451650', 'Autocad', 2, 1791, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451709', 'Đồ hoạ máy tính 1', 3, 1792, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451710', 'Hệ và mạng máy', 3, 1793, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451711', 'Cơ sở hệ điều hành', 4, 1794, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451713', 'Đồ án hệ quản trị Cơ sở dữ liệu nâng cao', 1, 1795, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451723', 'Thực hành tin học 1', 2, 1796, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451729', 'Đồ hoạ máy tính 1', 2, 1797, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451730', 'Đồ hoạ máy tính 2', 2, 1798, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451731', 'Đồ án đồ hoạ máy tính', 1, 1799, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451750', 'Kỹ thuật vi xử lý', 4, 1800, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451751', 'PP số trong CHKC', 3, 1801, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451752', 'Hệ quản trị Cơ sở dữ liệu', 4, 1802, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451753', 'Lập trình hệ thống', 3, 1803, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451754', 'Các phần mềm ứng dụng', 3, 1804, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451755', 'COMPUTER GRAPHIC', 3, 1805, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451756', 'Autocad', 4, 1806, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451757', 'Ngôn ngữ C/C++', 3, 1807, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451758', 'Thực tập công nhân', 4, 1808, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451759', 'Thực tập Cán bộ KT', 6, 1809, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451760', 'Đồ án Tốt nghiệp', 15, 1810, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451761', 'Thuật toán và Cấu trúc dữ liệu', 3, 1811, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451762', 'Thuật toán &  Cấu trúc dữ liệu nâng cao', 2, 1812, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451763', 'Đồ án tự động hoá thiết kế', 1, 1813, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451764', 'Lập trình phân tích Kết cấu công trình', 2, 1814, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451765', 'Tự động hoá Thiết kế', 2, 1815, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451766', 'Chuyên Đề tin học 2', 3, 1816, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451780', 'Thực tập Cán bộ kỹ thuật', 4, 1817, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451781', 'Đồ án tốt nghiệp', 10, 1818, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451810', 'Đồ hoạ máy tính 2', 3, 1819, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451811', 'Đồ án đồ hoạ máy tính 2', 2, 1820, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451812', 'Hệ quản trị Cơ sở dữ liệu 1', 2, 1821, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('451901', 'Tin học đại cương', 5, 1822, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452001', 'Tin học ứng dụng', 3, 1823, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452050', 'Tin học ứng dụng', 3, 1824, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452101', 'AutoCAD nâng cao', 3, 1825, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452102', 'Lập trình trong CAD', 3, 1826, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452103', 'Ngôn ngữ lập trình', 5, 1827, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452106', 'Chuyên đề tin học 1', 2, 1828, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452107', 'Lập trình phân tích kết cấu công trình', 3, 1829, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452108', 'Các phần mềm ứng dụng trong Xây dựng', 3, 1830, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452109', 'Chuyên đề tin học 2', 2, 1831, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452111', 'Autocad nâng cao', 2, 1832, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452112', 'Lập trình trong CAD', 2, 1833, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452113', 'Ngôn ngữ Lập trình', 3, 1834, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('452118', 'Các phần mềm ứng dụng trong Xây dựng', 2, 1835, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('453101', 'Tin học ứng dụng', 3, 1836, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('453102', 'Tin học đại cương', 4, 1837, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('453110', 'Tin Hoc Dai Cuong', 4, 1838, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461701', 'Xử lý số tín hiệu', 3, 1839, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461702', 'Ngôn ngữ LT C & C++', 5, 1840, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461703', 'Kiến trúc máy tính', 3, 1841, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461704', 'Mô hình hoá mô phỏng', 4, 1842, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461705', 'Cơ sở hệ điều hành', 3, 1843, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461706', 'Mạng máy tính', 3, 1844, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461707', 'Phương pháp lập trình hướng đối tượng', 4, 1845, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461708', 'Đồ án Phương pháp lập trình hướng ĐT', 2, 1846, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461709', 'Kỹ thuật vi xử lý 1', 3, 1847, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461710', 'Lập trình hệ thống mạng', 5, 1848, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461711', 'Đồ án Lập trình hệ thống mạng', 2, 1849, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461712', 'Mạng máy tính nâng cao', 4, 1850, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461713', 'Đồ án Mạng máy tính nâng cao', 2, 1851, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461714', 'Mạng máy tính', 2, 1852, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461715', 'An toàn và bảo mật thông tin', 3, 1853, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461716', 'Trí tuệ nhân tạo', 3, 1854, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461718', 'Hệ chuyên gia', 3, 1855, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461719', 'Đồ án Mô hình hoá mô phỏng', 2, 1856, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461720', 'Lập trình ứng dụng mạng', 5, 1857, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461721', 'Đồ án lập trình ứng dụng mạng', 2, 1858, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461722', 'Logic mờ và điều khiển mờ', 4, 1859, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461723', 'Chuyên đề 5', 4, 1860, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461724', 'Chuyên đề 4', 3, 1861, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461725', 'Cơ sở hệ điều hành', 2, 1862, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461727', 'Ngôn ngữ lập trình C++', 3, 1863, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461730', 'Phương pháp lập trình hướng đối tượng', 3, 1864, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461731', 'Đồ án phương pháp lập trình hướng ĐT', 1, 1865, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461736', 'CS lý thuyết truyền tin', 2, 1866, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461737', 'Kỹ thuật truyền số liệu', 3, 1867, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461746', 'Mạng máy tính', 2, 1868, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461751', 'An toàn bảo mật thông tin', 2, 1869, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461761', 'Trí tuệ nhân tạo', 2, 1870, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461781', 'Hệ chuyên gia', 2, 1871, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461782', 'Chuyên đề 1', 3, 1872, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461783', 'Chuyên đề 2', 3, 1873, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461784', 'Chuyên đề 3', 3, 1874, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461785', 'An ninh mạng', 3, 1875, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461801', 'Kỹ thuật số', 3, 1876, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461804', 'Cơ sở lý thuyết truyền tin', 3, 1877, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461810', 'Kỹ thuật vi xử lý 2', 3, 1878, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461821', 'Kthuật truyền số liệu', 4, 1879, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('461824', 'Thực hành tin học 2', 2, 1880, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471701', 'Thuật toán và cấu trúc dữ liệu', 5, 1881, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471702', 'Ngôn ngữ lập trình', 5, 1882, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471703', 'Đồ hoạ máy tính 2', 3, 1883, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471704', 'Đồ án đồ hoạ máy tính', 2, 1884, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471705', 'Cấu trúc DL và giải thuật', 3, 1885, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471706', 'Cơ sở dữ liệu 1', 3, 1886, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471707', 'Hệ quản trị cơ sở DL', 3, 1887, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471708', 'Đồ án hệ quản trị CSDL', 2, 1888, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471709', 'Công nghệ phần mềm 1', 4, 1889, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471710', 'Đồ hoạ máy tính 1', 3, 1890, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471711', 'Thuật toán', 3, 1891, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471712', 'Công nghệ phần mềm 2', 3, 1892, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471713', 'Đồ án c.nghệ phần mềm 2', 2, 1893, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471714', 'Đồ án công nghệ phần mềm', 2, 1894, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471715', 'Công nghệ WEB', 5, 1895, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471716', 'Lập trình LINUX', 5, 1896, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471717', 'Hệ quản trị cơ sở DL', 2, 1897, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471718', 'Đồ án công nghệ WEB', 2, 1898, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471719', 'CAD và LT trong CAD', 5, 1899, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471720', 'C# và môi trường NET', 5, 1900, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471721', 'Lập trình trên MT Window', 3, 1901, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471722', 'PM nguồn mở và TK WEB', 5, 1902, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471723', 'Nhận dạng, XL tiếng nói', 3, 1903, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471724', 'Lập trình phân tích kết cấu CT', 3, 1904, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471725', 'C.nghệ đa phương tiện', 3, 1905, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471726', 'Thuật toán và CTDL', 2, 1906, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471727', 'Cơ sở dữ liệu 1', 2, 1907, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471728', 'Đồ án Hệ quản trị CSDL', 1, 1908, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471729', 'Đồ họa máy tính1', 2, 1909, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471730', 'Lập trình trên MT Windows', 2, 1910, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471731', 'Công nghệ WEB', 2, 1911, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471732', 'Công nghệ phần mềm', 2, 1912, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471733', 'Phân tích & thiết kế HTTT', 2, 1913, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471734', 'Đồ án Phân tích & thiết kế HTTT', 1, 1914, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471735', 'Đồ hoạ máy tính 2', 2, 1915, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471736', 'LT trên MT Windows', 2, 1916, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471737', 'Ngoại ngữ chuyên ngành', 2, 1917, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471738', 'N.dạng xử lý tiếng nói', 2, 1918, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471740', 'Đồ án đồ hoạ máy tính', 1, 1919, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471741', 'Đồ án công nghệ PM', 1, 1920, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471742', 'Logic mờ & điều khiển mờ', 3, 1921, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471743', 'Mạng máy tính NC', 3, 1922, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471744', 'Đồ án Mạng máy tính NC', 1, 1923, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471745', 'Mô hình hoá & mô phỏng', 3, 1924, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471746', 'Đồ án mô hình hoá & mô phỏng', 1, 1925, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471752', 'Quản lý dự án CNTT', 2, 1926, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471753', 'Công nghệ đa phương tiện', 2, 1927, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471771', 'Công nghệ WEB nâng cao', 2, 1928, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471772', 'C# và MT NET', 4, 1929, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471773', 'Phần mềm nguồn mở & TK WEB', 4, 1930, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471774', 'Lập trình LINUX', 3, 1931, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471775', 'Ltrình hệ thống mạng', 4, 1932, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471776', 'Đồ án LT mạng hệ thống', 1, 1933, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471777', 'LT ứng dụng mạng', 4, 1934, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471778', 'Đồ án lập trình ứng dụng mạng', 1, 1935, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471780', 'Nhập môn CSDL', 2, 1936, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471781', 'Cơ sở dữ liệu nâng cao', 2, 1937, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471782', 'Công nghệ đa PT', 2, 1938, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471783', 'Đồ án tổng hợp ( CN TT)', 1, 1939, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471784', 'Lập trình trong MT nhúng', 3, 1940, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471803', 'Phân tích và TKế HTTT', 3, 1941, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471804', 'Đồ án ptích và TKế HTTT', 2, 1942, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471811', 'Đồ án Cơ sở dữ liệu', 1, 1943, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471812', 'Cơ sở dữ liệu 2', 3, 1944, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471817', 'Lập trình hệ thống', 3, 1945, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('471821', 'Đồ án Cơ sở dữ liệu', 2, 1946, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480101', 'Giáo dục quốc phòng 1', 2, 1947, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480102', 'Giáo dục Quốc phòng 2', 3, 1948, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480103', 'Giáo dục quốc phòng 3', 2, 1949, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480104', 'Giáo dục Quốc phòng 4', 3, 1950, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480105', 'Giáo dục Quốc phòng 4', 3, 1951, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `monhoc` (`ma_mon`, `ten_mon`, `so_tin_chi`, `id`, `so_tiet_ly_thuyet`, `so_tiet_thuc_hanh`, `ma_hoc_phan_tien_quyet`, `tai_lieu`, `date_created`, `date_updated`) VALUES
('480106', 'Giáo dục Quốc phòng 1', 3, 1952, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480107', 'Giáo dục quốc phòng 2', 2, 1953, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480109', 'Giáo dục quốc phòng 3', 3, 1954, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480112', 'Giáo dục quốc phòng 1.3', 4, 1955, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('480301', 'Giáo dục quốc phòng 3 (BT)', 9, 1956, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('491280', 'Thực tập Cán bộ kỹ thuật', 4, 1957, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('491281', 'Đồ án tốt nghiệp', 10, 1958, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492301', 'Ô tô máy kéo', 4, 1959, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492302', 'Khai thác máy XD', 3, 1960, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492303', 'Máy nâng & CGH CLG', 3, 1961, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492304', 'Đồ án máy nâng & CGH CLG', 1, 1962, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492305', 'Máy làm đất & CGH CTĐ', 3, 1963, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492306', 'Đồ án máy LĐ & CGH CTĐ', 1, 1964, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492307', 'Máy & CGH CTBT', 3, 1965, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492308', 'Đồ án máy & CG CTBT', 1, 1966, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492309', 'Tổ chức thi công bằng CG', 3, 1967, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('492310', 'Đồ án TC thi công bằng CG', 1, 1968, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('493103', 'Thuỷ văn', 3, 1969, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('493104', 'Thực tập thuỷ văn', 1, 1970, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('501901', 'Tham quan công trường', 1, 1971, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('510201', 'Pháp luật Việt Nam đại cương', 2, 1972, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511301', 'Quản lý dự án XD', 2, 1973, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511302', 'Luật xây dựng', 2, 1974, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511304', 'Quản lý đô thị', 2, 1975, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511305', 'Pháp luật đầu tư và kinh doanh BĐS', 2, 1976, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511306', 'Môi giới và giao dịch BĐS', 3, 1977, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511307', 'Pháp luật trong xây dựng', 2, 1978, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('511308', 'Quản lý dự án', 2, 1979, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('51605', 'Đồ án hạ tầng', 1, 1980, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521301', 'Marketing trong xây dựng', 2, 1981, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521302', 'Mô hình toán kinh tế', 3, 1982, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521303', 'Xã hội học đô thị', 2, 1983, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521304', 'Marketing BĐS', 2, 1984, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521305', 'Kinh tế bất động sản', 2, 1985, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521306', 'Đồ án kinh tế bất động sản', 1, 1986, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521307', 'Tin học ứng dụng QL bất động sản', 3, 1987, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521308', 'Thực tập công nhân', 4, 1988, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521309', 'Thực tập cán bộ kỹ thuật', 4, 1989, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521310', 'Đồ án tốt nghiệp', 10, 1990, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('521311', 'Quản lý và khai thác công trình BĐS', 2, 1991, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531713', 'Kiến trúc máy tính', 2, 1992, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531720', 'Lập trình trên môi trường Windows', 2, 1993, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531723', 'Thực hành TH1', 2, 1994, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531732', 'Xử lý số tín hiệu', 2, 1995, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531733', 'Kỹ thuật số', 2, 1996, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531734', 'Kỹ thuật vi xử lý 1', 2, 1997, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531735', 'Kỹ thuật ví xử lý 2', 2, 1998, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531753', 'Kiến trúc máy tính', 2, 1999, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531815', 'Lập trình hệ thống', 2, 2000, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('531824', 'Thực hành TH 2', 2, 2001, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541601', 'LS kiến trúc & LS nghệ thuật', 3, 2002, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541602', 'Kiến Trúc cảnh quan', 2, 2003, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541603', 'Mỹ học & Xã hội học đô thị', 2, 2004, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541604', 'Đồ án kiến trúc cảnh quan', 2, 2005, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541605', 'Chuyên đề kiến trúc cảnh quan', 1, 2006, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541606', 'LS Nghệ thuật, Mỹ học & Xã hội học', 3, 2007, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541607', 'Cơ sở văn hóa &Địa lý kinh tế VN', 2, 2008, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541608', 'Kiến trúc cảnh quan', 3, 2009, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541609', 'Lịch sử đô thị', 2, 2010, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('541610', 'Chuyên đề cảnh quan', 2, 2011, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551601', 'Chuyên đề quy hoạch hạ tầng', 1, 2012, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551602', 'Đồ án quy hoạch hạ tầng', 2, 2013, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551603', 'Quy hoạch san nền thoát nươc', 2, 2014, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551604', 'Qui hoạch hệ thống điện&thông tin', 2, 2015, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551605', 'Quy hoạch hệ thống G.Tthông', 2, 2016, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551901', 'Chuyên đề 2 (K.T hạ tầng đô thị)', 2, 2017, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551902', 'Qui hoạch giao thông đô thị', 1, 2018, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551903', 'Đường Và hệ thống tín hiệu', 1, 2019, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551904', 'Đô thị hóa & QH đô thi', 2, 2020, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551905', 'Đồ án hạ tầng', 1, 2021, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551906', 'Những quyết sách PT đô thị', 3, 2022, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551908', 'Hướng dẫn tổ chức dự án', 4, 2023, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('551909', 'Thực hành dự án đô thị', 16, 2024, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560101', 'Thuật ngữ chuyên ngành', 2, 2025, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560102', 'Pháp 3', 1, 2026, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560103', 'Pháp 4', 1, 2027, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560104', 'Pháp 5', 1, 2028, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560105', 'Pháp 6', 1, 2029, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560106', 'Pháp 7', 1, 2030, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560107', 'Pháp 8', 1, 2031, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560108', 'Pháp 9', 1, 2032, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560109', 'Tiếng Pháp 1', 3, 2033, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('560110', 'Tiếng Pháp 2', 3, 2034, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('571601', 'Công thái học', 2, 2035, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('571602', 'Kỹ thuật thể hiện mô hình KT', 2, 2036, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('571603', 'Lý thuyết nội thất', 2, 2037, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('571604', 'Thiết kế đồ họa', 2, 2038, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('571605', 'Lịch sử nghệ thuật', 2, 2039, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('990301', 'Đồ án tốt nghiệp', 10, 2040, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTA02', 'Kết cấu BTCT 2', 3, 2041, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTA03', 'Kết cấu nhà + ĐA', 4, 2042, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTA04', 'Kết cấu gạch đá', 1, 2043, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTN01', 'Kết Cấu Bê Tông Cốt Thép', 5, 2044, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTN02', 'Đồ án Bê Tông Cốt Thép', 1, 2045, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTP03', 'Kết Cấu BTCT', 5, 2046, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTP04', 'Đồ án Kết Cấu BTCT 1', 1, 2047, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTQ09', 'Bê tông cốt thép ứng lực', 1, 2048, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTQ1C', 'Kết cấu Bê tông cốt thép', 4, 2049, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTQ2C', 'Đố án  Kết cấu BTCT', 2, 2050, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BTX02', 'Kết cấu BTCT 1', 5, 2051, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CBE01', 'Các phần mềm ứng dụng', 3, 2052, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CBE02', 'Lý thuyết độ TC-T.thọ CT', 3, 2053, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CBE05', 'Kinh tế biển - Luật biển', 1, 2054, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CBS16', 'Thuc tap CBKT', 6, 2055, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CDQ1C', 'Cơ học đất - Nền móng', 5, 2056, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CDQ2C', 'Nền móng', 2, 2057, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CDZ01', 'Cơ học đất', 3, 2058, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CGD1C', 'CT Cảng - Đường Thủy', 4, 2059, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CGD2C', 'Đồ án CT Bến', 2, 2060, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CGD50', 'Cảng và GT đường thuỷ', 3, 2061, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CGD51', 'Cảng Và giao thông thuỷ', 2, 2062, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHA07', 'Thiết kế thi công cầu', 3, 2063, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB01', 'Nhập môn cầu', 1, 2064, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB02', 'Thiết kế cầu BTCT+ĐA', 5, 2065, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB03', 'Thiết kế cầu thép  +ĐA', 4, 2066, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB04', 'Xây dựng cầu+ĐA', 5, 2067, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB05', 'Cầu Đá,Gỗ,K.thác cầu', 2, 2068, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHB06', 'T.Kế và T.công hầm+ĐA', 4, 2069, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CHD1C', 'Cầu Đường Bộ', 3, 2070, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CKN60', 'Thực tập Cơ Khí (2T)', 2, 2071, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CLO01', 'Cơ học cơ sở 1', 5, 2072, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CLQ1C', 'Cơ học cơ sở', 4, 2073, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CLQ22', 'Cơ học cơ sở 2', 3, 2074, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CNA02', 'Cấp thoát nước', 2, 2075, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CND1C', 'Cấp thoát nước DD-CN', 5, 2076, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CND2C', 'Đồ án Cấp thoát nước DD-CN', 2, 2077, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COA01', 'Cơ học kết cấu 1', 5, 2078, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COA50', 'Ưng dụng TH trong TKCT', 3, 2079, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COE05', 'Ôn định công trình', 1, 2080, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COQ1C', 'Cơ Học Kết Cấu', 4, 2081, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COQ22', 'Cơ Học Kết Cấu 2', 3, 2082, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COT02', 'Cơ học vật rắn 4', 3, 2083, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COZ02', 'Cơ học kết cấu 2', 3, 2084, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('COZ03', 'Cơ học kết cấu 3', 2, 2085, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTD1C', 'Thực tập công nhân 4Tuần', 4, 2086, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTD2C', 'Thực tập cán bộ kỹ thuật', 5, 2087, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTD3C', 'Đồ án Tốt nghiệp', 15, 2088, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTD4C', 'Chuyên đề (XD-CD)', 2, 2089, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CVI15', 'C.nghệ sản xuất VLXD', 2, 2090, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CVI25', 'C.nghệ sản xuất VL-XD', 3, 2091, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DCQ1C', 'Địa chất công trình', 3, 2092, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DCT01', 'Địa chất công trình', 3, 2093, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DDQ1C', 'Đo đạc', 3, 2094, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DGD1C', 'T.Kế Và X.D Đường Ô-Tô', 4, 2095, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DGD2C', 'Đồ án Công Trình G.T', 2, 2096, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DGS13', 'Đồ án Đường 2', 1, 2097, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DIQ1C', 'Điện kỹ thuật', 2, 2098, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHO01', 'Hình họa', 2, 2099, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHO04', 'Vẽ kỹ thuật', 4, 2100, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHQ1C', 'Hình họa', 2, 2101, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHQ2C', 'Vễ kỹ thuật 1', 4, 2102, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHR02', 'Vẽ kỹ thuật bằng PC', 4, 2103, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HHZ01', 'Hình hoạ', 3, 2104, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('HOO1C', 'Hóa học đại cương', 3, 2105, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KDA01', 'Kiến trúc 1+ĐA', 4, 2106, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KDA02', 'Kiến trúc 2', 2, 2107, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KDE02', 'Kiến trúc DD và CN', 2, 2108, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KDE03', 'Đồ án Kiến trúc DD và CN', 1, 2109, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KHJ50', 'Tổ chức XD 1', 4, 2110, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KIQ1C', 'Kiến Trúc DD Và CN', 2, 2111, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KIQ2C', 'Đồ án Kiến trúc', 1, 2112, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KXA02', 'Thực tập CBKT', 6, 2113, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LAP1', 'Môn lặp 1', 1, 2114, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LAP2', 'Môn lặp 2', 2, 2115, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LAP3', 'Môn lặp 3', 3, 2116, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO05', 'VB và lưu trữ học DC', 2, 2117, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO06', 'Tâm lý học đại cương', 3, 2118, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO07', 'Soạn thảo văn bản', 2, 2119, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO10', 'Chính trị cuối khoá', 0, 2120, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO1C', 'Kinh tế chính trị MLN', 4, 2121, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO23', 'Kinh tế chính trị 2', 3, 2122, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO2C', 'Triết Học Mác Lê Nin', 4, 2123, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO3C', 'Chủ Nghĩa Xã Hội Kh', 3, 2124, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLO4C', 'Lich Sử Đảng', 3, 2125, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MLQ50', 'VB và lưu trữ học DC', 2, 2126, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MTN01', 'Thực tập Cơ khí', 1, 2127, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MTS01', 'Môi trường', 2, 2128, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MTZ01', 'Thực tập CN', 4, 2129, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MXQ1C', 'Máy Xây Dựng', 3, 2130, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MXZ01', 'Máy xây dựng', 2, 2131, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NCF03', 'Thực tập cơ khí', 1, 2132, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NCG02', 'Thực tập cơ khí', 2, 2133, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NNO1C', 'Ngoại Ngữ 1', 5, 2134, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NNO21', 'Ngoại ngữ 1', 8, 2135, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NNO2C', 'Ngoại Ngữ 2', 5, 2136, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NNQ23', 'Ngoại Ngữ (3)', 3, 2137, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SBQ1C', '', 4, 2138, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TCD1C', 'Tổ chức TC và An toàn LĐ', 4, 2139, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDA14', 'Công trình thủy', 3, 2140, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDC13', 'Công trình thủy lợi', 2, 2141, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD01', 'Thủy năng+ĐA', 4, 2142, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD02', 'Máy thủy lực', 3, 2143, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD03', 'Thủy công 1+ ĐA', 4, 2144, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD04', 'Thủy công 2+ ĐA', 5, 2145, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD05', 'T.Công công trình 1+ĐA', 4, 2146, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD06', 'T.Công công trình TH 2', 4, 2147, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD07', 'Nhà máy thủy điện+ĐA', 4, 2148, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD1C', 'Các Công Trình Thủy', 3, 2149, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD2C', 'Kỹ Thuật Thi Công CT', 5, 2150, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TDD3C', 'Đồ án CT Thủy Lợi', 2, 2151, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TGA02', 'Kết cấu thép 2+ĐA', 4, 2152, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TGA03', 'Kết cấu gỗ', 1, 2153, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TGA04', 'Kết cấu thép đặc biệt', 1, 2154, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TGQ1C', 'Kết cấu thép', 3, 2155, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TGZ01', 'Kết cấu thép 1', 2, 2156, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('THO01', 'Nhập Môn Tin Học', 5, 2157, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('THO1C', 'Nhập Môn Tin Học', 3, 2158, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('THO31', 'Nhập Môn Tin Học (a)', 5, 2159, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('THQ01', 'Tin học ứng dụng', 2, 2160, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('THZ01', 'Tin học ứng dụng', 2, 2161, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TLQ1C', 'Thủy lực', 3, 2162, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TLQ2C', 'Thủy văn', 2, 2163, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TLS06', 'Cơ học chất lỏng ( Nâng Cao )', 1, 2164, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TNL08', 'Thuỷ khí Động học', 5, 2165, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TNZ01', 'Thí nghiệm công trình', 2, 2166, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO1C', 'Toán cao cấp 1', 5, 2167, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO21', 'Toán cao cấp (A1)', 5, 2168, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO22', 'Toán cao cấp (A2)', 5, 2169, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO23', 'Toán cao cấp (a3)', 4, 2170, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO24', 'Toán cao cấp (a4)', 4, 2171, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO25', 'Toán xác suất Thống Kê', 3, 2172, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO27', 'Toán xác suất thống kê', 3, 2173, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO28', 'Toán xác suất thống kê', 3, 2174, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOO2C', 'Toán Cao Cấp 2', 5, 2175, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOOL', 'Toán{NgànhKTr}', 7, 2176, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOQ01', 'logic học', 2, 2177, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOQ06', 'Phương pháp tính', 1, 2178, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOQ23', 'Toán cao cấp (A3)', 2, 2179, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOQ26', 'Toán cao cấp (A4)', 3, 2180, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR01', 'Logic hoc', 2, 2181, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR02', 'Toán rời rạc', 3, 2182, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR04', 'Lý thuyết tối ưu và ĐKH', 5, 2183, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR05', 'Xác suất thống kê và UD', 3, 2184, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR06', 'Ly Thuyết đô Thị', 2, 2185, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR07', 'Xác suất thống kê UD', 2, 2186, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TOR08', 'Otomat', 2, 2187, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TXD1C', 'Kinh tế xây dựng', 3, 2188, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TXO02', 'Nhập Môn Quản Trị Học', 3, 2189, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TXO11', 'Nhập môn quản trị học', 3, 2190, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VLQ1C', 'Vật Liệu Xây Dựng', 4, 2191, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VLT01', 'Vật liệu xây dựng', 3, 2192, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYO01', 'Vật Lý Đại Cương 1', 4, 2193, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYO02', 'Vật Lý Đại Cương A2', 4, 2194, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYO13', 'Thí Nghiệm Lý', 2, 2195, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYO1C', 'Vật Lý Đại Cương', 4, 2196, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYO31', 'Vật Lý Dai Cuong 1', 6, 2197, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYQ01', 'Vật lý đại cương a1', 4, 2198, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('VYQ02', 'Vật lý đại cương (a2)', 3, 2199, 0, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `tieude` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `chi_tiet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `tieude`, `chi_tiet`, `mota`, `stt`, `date_created`, `date_updated`, `slug`) VALUES
(6, 'HỌP BAN CHỈ ĐẠO ĐỀ ÁN ĐỔI MỚI CHƯƠNG TRÌNH ĐÀO TẠO THEO CDIO', 'HỌP BAN CHỈ ĐẠO ĐỀ ÁN ĐỔI MỚI CHƯƠNG TRÌNH ĐÀO TẠO THEO CDIO', 'HỌP BAN CHỈ ĐẠO ĐỀ ÁN ĐỔI MỚI CHƯƠNG TRÌNH ĐÀO TẠO THEO CDIO', 6, '2017-12-12 23:10:00', '2017-12-12 23:10:00', 'hop-ban-chi-dao-de-an-doi-moi-chuong-trinh-dao-tao-theo-cdio-6'),
(7, 'Thông báo thay đổi lịch thi Tiếng Anh cơ bản 1', 'Thông báo thay đổi lịch thi Tiếng Anh cơ bản 1', 'Thông báo thay đổi lịch thi Tiếng Anh cơ bản 1', 1, '2017-12-12 23:10:51', '2017-12-12 23:10:51', 'thong-bao-thay-doi-lich-thi-tieng-anh-co-ban-1-7'),
(8, 'Thông báo về việc đăng ký học song bằng học kỳ II năm học 2017-2018', 'Thông báo về việc đăng ký học song bằng học kỳ II năm học 2017-2018 ', 'Thông báo về việc đăng ký học song bằng học kỳ II năm học 2017-2018', 2, '2017-12-12 23:11:13', '2017-12-12 23:11:14', 'thong-bao-ve-viec-dang-ky-hoc-song-bang-hoc-ky-ii-nam-hoc-2017-2018-8');

-- --------------------------------------------------------

--
-- Table structure for table `nganh_dao_tao`
--

CREATE TABLE `nganh_dao_tao` (
  `id` int(11) NOT NULL,
  `ma_nganh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nganh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `stt` int(11) NOT NULL,
  `so_hoc_ky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nganh_dao_tao`
--

INSERT INTO `nganh_dao_tao` (`id`, `ma_nganh`, `ten_nganh`, `date_created`, `date_updated`, `stt`, `so_hoc_ky`) VALUES
(1, '52580102', 'Kiến trúc', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 10),
(2, '52580105', 'Quy hoạch vùng và đô thị ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(3, '52580201_01', 'Kỹ thuật công trình xây dựng\r\n(chuyên ngành: Xây dựng Dân dụng và\r\nCông nghiệp)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(4, '52580201_02', 'Kỹ thuật công trình xây dựng\r\n(chuyên ngành: Hệ thống kỹ thuật trong\r\ncông trình)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(5, '52580201_03', 'Kỹ thuật công trình xây dựng\r\n(chuyên ngành: Xây dựng Cảng - Đường thuỷ)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(6, '52580201_04', 'Kỹ thuật công trình xây dựng\r\n(chuyên ngành: Xây dựng Thuỷ lợi - Thuỷ điện)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(7, '52580201_05', 'Kỹ thuật công trình xây dựng\r\n(chuyên ngành: Tin học xây dựng)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(8, '52580201_06', 'Kỹ thuật xây dựng công trình Giao thông\r\n(Chuyên ngành: Xây dựng Cầu đường)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 9),
(9, '52580205_01', 'Kỹ thuật xây dựng công trình Giao thông (Chuyên ngành: Xây dựng Cầu đường)', '2017-11-08 16:50:23', '2017-11-08 16:50:23', 0, 9),
(10, '52110104', 'Cấp thoát nước', '2017-11-08 16:50:55', '2017-11-08 16:50:55', 0, 9),
(11, '52480201', 'Công nghệ thông tin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` tinyint(4) NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `username`, `password`, `hoten`, `gioitinh`, `avatar`, `email`, `id_nhom`) VALUES
(2, 'admin', '25a895eaa2b5f677009866f1595b7266', 'admin', 0, '', '', 1),
(3, 'thanhnt', 'eb74cd3d436d8156f1fa6060c74cc744', 'Nguyễn Thị Thanh', 0, '', '', 2),
(4, 'manager', '57a93f0e5f1a388520ea465c622b00f1', 'manager', 0, '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nhomnguoidung`
--

CREATE TABLE `nhomnguoidung` (
  `id` int(11) NOT NULL,
  `tennhom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `id_phongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhomnguoidung`
--

INSERT INTO `nhomnguoidung` (`id`, `tennhom`, `type`, `id_phongban`) VALUES
(1, 'Admin', 0, 0),
(2, 'Biên tập viên', 0, 0),
(3, 'Quản lý CTĐT', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhom_tai_lieu`
--

CREATE TABLE `nhom_tai_lieu` (
  `id` int(11) NOT NULL,
  `ten_nhom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhom_tai_lieu`
--

INSERT INTO `nhom_tai_lieu` (`id`, `ten_nhom`, `stt`, `date_created`, `date_updated`) VALUES
(1, 'Tài liệu - Biểu mẫu', 1, '2017-10-02 00:00:00', '2017-11-07 00:00:00'),
(2, 'Văn bản - Hành chính', 2, '2017-09-01 00:00:00', '2017-10-08 00:00:00'),
(3, 'Quảng cáo', 3, '2017-11-09 15:32:07', '2017-11-09 15:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id` int(11) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `id_chucnang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`id`, `id_nhom`, `id_chucnang`) VALUES
(19, 1, 1),
(20, 1, 2),
(21, 1, 3),
(22, 1, 4),
(23, 1, 6),
(24, 1, 7),
(25, 1, 8),
(26, 1, 9),
(27, 1, 10),
(28, 1, 11),
(29, 1, 12),
(30, 1, 13),
(31, 1, 14),
(32, 1, 15),
(33, 1, 16),
(34, 1, 17),
(35, 1, 18),
(36, 1, 19),
(37, 2, 6),
(38, 3, 9),
(39, 3, 11),
(40, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `quyetdinh_chuandaura`
--

CREATE TABLE `quyetdinh_chuandaura` (
  `id` int(11) NOT NULL,
  `noidung` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quyetdinh_chuandaura`
--

INSERT INTO `quyetdinh_chuandaura` (`id`, `noidung`, `date_created`, `date_updated`) VALUES
(1, '<iframe src=\"https://drive.google.com/file/d/0BxozOh_K6jJydkpSM2VXNndFTW8/preview\" width=\"640\" height=\"480\"></iframe>', '0000-00-00 00:00:00', '2017-12-08 03:23:23'),
(2, 'thanh', '2017-12-13 00:00:00', '2017-12-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `quyetdinh_ctdt`
--

CREATE TABLE `quyetdinh_ctdt` (
  `id` int(11) NOT NULL,
  `noidung` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quyetdinh_ctdt`
--

INSERT INTO `quyetdinh_ctdt` (`id`, `noidung`, `date_created`, `date_updated`) VALUES
(1, '<iframe src=\"https://drive.google.com/file/d/0BxozOh_K6jJydkpSM2VXNndFTW8/preview\" width=\"100%\" height=\"480\"></iframe>', '2017-12-01 00:00:00', '2017-12-08 05:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `tai_lieu`
--

CREATE TABLE `tai_lieu` (
  `id` int(11) NOT NULL,
  `ten_tai_lieu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loai_link` int(11) NOT NULL,
  `link_tai_lieu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `luot_tai` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` date NOT NULL,
  `stt` int(11) NOT NULL,
  `ma_nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tai_lieu`
--

INSERT INTO `tai_lieu` (`id`, `ten_tai_lieu`, `mota`, `loai_link`, `link_tai_lieu`, `luot_xem`, `luot_tai`, `date_created`, `date_updated`, `stt`, `ma_nhom`) VALUES
(9, 'Tài liệu tập huấn xây dựng chương trình đào tạo theo CDIO 9/3/2017', 'Tập huấn xây dựng chương trình đào tạo theo CDIO 9/3/2017', 1, 'public/tailieu/-thi-th-4.pdf', 6, 0, '2017-12-08', '2017-12-12', 0, 2),
(10, 'Tạo slug tự động bằng PHP code', 'Tạo slug tự động bằng PHP code', 2, 'public/tailieu/-thi-th-41.pdf', 2, 3, '2017-12-12', '2017-12-12', 2, 2),
(11, 'PHP filesize() Function', 'PHP filesize() Function', 2, 'public/tailieu/KHA_HC_LP_TRNH_PYTHON_FOR_EVERYBODY_v1_0.pdf', 0, 0, '2017-12-12', '2017-12-12', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc_dinhkem`
--

CREATE TABLE `tintuc_dinhkem` (
  `id` int(11) NOT NULL,
  `id_tintuc` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc_dinhkem`
--

INSERT INTO `tintuc_dinhkem` (`id`, `id_tintuc`, `type`, `link`, `date_updated`, `date_created`) VALUES
(2, 1, 1, 'https://ckeditor.com/old/forums/Support/File-Browser-Uploader', '2017-12-08 00:34:11', '2017-12-08 00:34:11'),
(3, 1, 2, 'assets/tintuc/15578875a8de243.jpg', '2017-12-08 00:35:01', '2017-12-08 00:35:01'),
(5, 2, 2, 'assets/tintuc/IMG_05122017_160754_0.png', '2017-12-08 00:47:34', '2017-12-08 00:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `sdt`, `level`) VALUES
(1, 'thanh', 'thanh', 'thanh@gmail.com', '01234568599', 1),
(2, 'hoang', 'hoang', 'hoang@gmail.com', '0963125684', 1),
(3, 'hoa', 'hoa', 'hoa@gmail.com', '01214562855', 2),
(4, 'huyen', 'huyen', 'huyen@gmail.com', '01256854421', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vanban_dinhkem`
--

CREATE TABLE `vanban_dinhkem` (
  `id` int(11) NOT NULL,
  `id_vanban` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vanban_dinhkem`
--

INSERT INTO `vanban_dinhkem` (`id`, `id_vanban`, `type`, `link`, `date_updated`, `date_created`) VALUES
(1, 2, 1, 'https://ckeditor.com/old/forums/Support/File-Browser-Uploader', '2017-12-08 01:20:07', '2017-12-08 01:20:07'),
(2, 2, 2, 'assets/vanban/115754f13ae8cca.jpg', '2017-12-08 01:20:20', '2017-12-08 01:20:20'),
(3, 3, 1, 'http://www.cdio.nuce.edu.vn/#', '2017-12-10 22:56:00', '2017-12-10 22:56:00'),
(4, 3, 2, 'assets/vanban/banner_tester_web_-01(1).jpg', '2017-12-10 22:56:17', '2017-12-10 22:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `van_ban_dieu_hanh`
--

CREATE TABLE `van_ban_dieu_hanh` (
  `id` int(11) NOT NULL,
  `so_ky_hieu_vb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trich_yeu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `file_dinh_kem` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `van_ban_dieu_hanh`
--

INSERT INTO `van_ban_dieu_hanh` (`id`, `so_ky_hieu_vb`, `trich_yeu`, `noi_dung`, `date_created`, `date_updated`, `file_dinh_kem`, `stt`, `slug`) VALUES
(11, 'Kế hoạch xây dựng CTĐT theo CDIO', 'Kết luận cuộc họp thành lập nhóm chuyên trách triển khai xây dựng chương trình đào tạo đại học theo CDIO', 'Kết luận cuộc họp thành lập nhóm chuyên trách triển khai xây dựng chương trình đào tạo đại học theo CDIO', '2017-12-14 20:16:20', '2017-12-14 20:16:20', '', 3, 'ket-luan-cuoc-hop-thanh-lap-nhom-chuyen-trach-trien-khai-xay-dung-chuong-trinh-dao-tao-dai-hoc-theo-cdio-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ctdao_tao`
--
ALTER TABLE `ctdao_tao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_mon` (`ma_mon`),
  ADD KEY `ma_nganh` (`ma_nganh`);

--
-- Indexes for table `decuong`
--
ALTER TABLE `decuong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highdecuong`
--
ALTER TABLE `highdecuong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma` (`ma_mon`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nganh_dao_tao`
--
ALTER TABLE `nganh_dao_tao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `nhom_tai_lieu`
--
ALTER TABLE `nhom_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyetdinh_chuandaura`
--
ALTER TABLE `quyetdinh_chuandaura`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyetdinh_ctdt`
--
ALTER TABLE `quyetdinh_ctdt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_nhom` (`ma_nhom`);

--
-- Indexes for table `tintuc_dinhkem`
--
ALTER TABLE `tintuc_dinhkem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vanban_dinhkem`
--
ALTER TABLE `vanban_dinhkem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `van_ban_dieu_hanh`
--
ALTER TABLE `van_ban_dieu_hanh`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ctdao_tao`
--
ALTER TABLE `ctdao_tao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14238;
--
-- AUTO_INCREMENT for table `decuong`
--
ALTER TABLE `decuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `highdecuong`
--
ALTER TABLE `highdecuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2200;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nganh_dao_tao`
--
ALTER TABLE `nganh_dao_tao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nhom_tai_lieu`
--
ALTER TABLE `nhom_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `quyetdinh_chuandaura`
--
ALTER TABLE `quyetdinh_chuandaura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `quyetdinh_ctdt`
--
ALTER TABLE `quyetdinh_ctdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tintuc_dinhkem`
--
ALTER TABLE `tintuc_dinhkem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vanban_dinhkem`
--
ALTER TABLE `vanban_dinhkem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `van_ban_dieu_hanh`
--
ALTER TABLE `van_ban_dieu_hanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
