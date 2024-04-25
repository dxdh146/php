-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 08:31 AM
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
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaHoaDon` int(10) NOT NULL,
  `MaSanPham` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `Gia` decimal(19,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaHoaDon`, `MaSanPham`, `SoLuong`, `Gia`) VALUES
(1, 'SP001', 5, 15000),
(1, 'SP002', 3, 12000),
(1, 'SP010', 2, 22000),
(2, 'SP003', 4, 8000),
(2, 'SP012', 8, 8000),
(3, 'SP004', 3, 20000),
(3, 'SP005', 4, 18000),
(3, 'SP014', 5, 12000),
(4, 'SP006', 2, 16000),
(4, 'SP007', 3, 14000),
(4, 'SP016', 10, 6000),
(5, 'SP008', 4, 12000),
(5, 'SP017', 6, 8000),
(5, 'SP018', 5, 10000),
(6, 'SP009', 7, 10000),
(6, 'SP019', 4, 12000),
(7, 'SP011', 3, 18000),
(7, 'SP020', 4, 14000),
(7, 'SP021', 3, 16000),
(8, 'SP013', 5, 10000),
(8, 'SP022', 8, 8000),
(9, 'SP015', 6, 14000),
(9, 'SP023', 7, 10000),
(9, 'SP024', 4, 12000),
(10, 'SP001', 4, 15000),
(10, 'SP025', 10, 6000),
(11, 'SP002', 5, 12000),
(11, 'SP010', 3, 22000),
(11, 'SP011', 2, 18000),
(12, 'SP003', 6, 8000),
(12, 'SP012', 7, 8000),
(12, 'SP013', 4, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(10) NOT NULL,
  `NguoiDatHang` varchar(50) NOT NULL,
  `NguoiNhanHang` varchar(50) NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SoDienThoai` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongTien` decimal(19,0) NOT NULL,
  `TrangThaiDonHang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `NguoiDatHang`, `NguoiNhanHang`, `Email`, `DiaChi`, `SoDienThoai`, `NgayDatHang`, `TongTien`, `TrangThaiDonHang`) VALUES
(1, 'Nguyễn Văn An', 'Nguyễn Thị Hoa', 'nguyenvanan@gmail.com', '12 Ngõ 45 Phố Trần Đăng Ninh, Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', '0987654321', '2024-04-24 10:30:00', 250000, 'Đang giao hàng'),
(2, 'Trần Thị Lan', 'Trần Văn Minh', 'tranthilan@gmail.com', '34 Ngõ 78 Phố Bạch Mai, Phường Bạch Mai, Quận Hai Bà Trưng, Hà Nội', '0912345678', '2024-04-24 14:45:00', 180000, 'Đã giao hàng'),
(3, 'Phạm Hữu Thắng', 'Phạm Thị Hương', 'phamhuuthang@gmail.com', '16 Ngõ 22 Phố Tô Hiệu, Phường Bách Khoa, Quận Hai Bà Trưng, Hà Nội', '0901234567', '2024-04-24 09:15:00', 320000, 'Đang giao hàng'),
(4, 'Lê Văn Đức', 'Lê Thị Hồng', 'levanduc@gmail.com', '25 Ngõ 67 Phố Thái Hà, Phường Trung Liệt, Quận Đống Đa, Hà Nội', '0987612345', '2024-04-24 16:20:00', 210000, 'Đang chờ xử lý'),
(5, 'Hoàng Thị Thanh', 'Hoàng Văn Tùng', 'hoangthithanh@gmail.com', '8 Ngõ 34 Phố Nguyễn Chí Thanh, Phường Bát Xát, Quận Hà Đông, Hà Nội', '0901239876', '2024-04-24 11:00:00', 280000, 'Đang chờ xử lý'),
(6, 'Vũ Đình Quang', 'Vũ Thị Liên', 'vudinhquang@gmail.com', '42 Ngõ 19 Phố Tô Ngọc Vân, Phường Quỳnh Mai, Quận Hai Bà Trưng, Hà Nội', '0912345670', '2024-04-24 13:30:00', 190000, 'Đã giao hàng'),
(7, 'Đỗ Văn Hải', 'Đỗ Thị Lan', 'dovanhaii@gmail.com', '14 Ngõ 56 Phố Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', '0987612309', '2024-04-24 10:45:00', 260000, 'Đang giao hàng'),
(8, 'Nguyễn Thị Hà', 'Nguyễn Văn Hùng', 'nguyenthiha@gmail.com', '30 Ngõ 89 Phố Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Hà Nội', '0901234509', '2024-04-24 15:15:00', 195000, 'Đã giao hàng'),
(9, 'Trần Văn Nam', 'Trần Thị Hương', 'tranvannam@gmail.com', '18 Ngõ 23 Phố Khương Thượng, Phường Khương Trung, Quận Thanh Xuân, Hà Nội', '0987609812', '2024-04-24 09:30:00', 310000, 'Đang giao hàng'),
(10, 'Phạm Thị Linh', 'Phạm Văn Cường', 'phamthilinh@gmail.com', '27 Ngõ 45 Phố Hoàng Hoa Thám, Phường Bưởi, Quận Tây Hồ, Hà Nội', '0912340987', '2024-04-24 12:00:00', 240000, 'Đã giao hàng'),
(11, 'Lê Văn Dũng', 'Lê Thị Hương', 'levandung@gmail.com', '39 Ngõ 67 Phố Vĩnh Hưng, Phường Vĩnh Hưng, Quận Hoàng Mai, Hà Nội', '0987654309', '2024-04-24 10:15:00', 270000, 'Đang giao hàng'),
(12, 'Hoàng Thị Lan', 'Hoàng Văn Quân', 'hoangthilan@gmail.com', '11 Ngõ 23 Phố Lạc Trung, Phường Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', '0901238765', '2024-04-24 14:00:00', 220000, 'Đã giao hàng'),
(13, 'Vũ Đình Hải', 'Vũ Thị Hương', 'vudinhhai@gmail.com', '35 Ngõ 56 Phố Bạch Đằng, Phường Bạch Đằng, Quận Hai Bà Trưng, Hà Nội', '0987612345', '2024-04-24 11:30:00', 290000, 'Đang giao hàng'),
(14, 'Đỗ Văn Quang', 'Đỗ Thị Hà', 'dovanquang@gmail.com', '22 Ngõ 78 Phố Trần Bình Trọng, Phường Cát Linh, Quận Đống Đa, Hà Nội', '0901239078', '2024-04-24 09:45:00', 205000, 'Đã giao hàng'),
(15, 'Nguyễn Thị Hồng', 'Nguyễn Văn Dũng', 'nguyenthihong@gmail.com', '46 Ngõ 90 Phố Hoàng Ngân, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', '0987690123', '2024-04-24 13:00:00', 275000, 'Đang giao hàng'),
(16, 'Trần Văn Hùng', 'Trần Thị Tuyết', 'tranvanhung@gmail.com', '28 Ngõ 45 Phố Lạc Long Quân, Phường Xuân La, Quận Tây Hồ, Hà Nội', '0987654321', '2024-04-24 16:45:00', 185000, 'Đã giao hàng'),
(17, 'Phạm Thị Hà', 'Phạm Văn Đức', 'phamthiha@gmail.com', '19 Ngõ 23 Phố Bạch Mai, Phường Bạch Mai, Quận Hai Bà Trưng, Hà Nội', '0901234567', '2024-04-24 10:00:00', 230000, 'Đang chờ xử lý'),
(18, 'Lê Văn Hải', 'Lê Thị Hương', 'levanhaii@gmail.com', '33 Ngõ 67 Phố Trần Quốc Hoàn, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', '0987612345', '2024-04-24 14:30:00', 250000, 'Đã giao hàng'),
(19, 'Hoàng Thị Liên', 'Hoàng Văn Đức', 'hoangthilien@gmail.com', '6 Ngõ 34 Phố Tô Hiệu, Phường Bạch Đằng, Quận Hai Bà Trưng, Hà Nội', '0901239876', '2024-04-24 09:15:00', 210000, 'Đang giao hàng'),
(20, 'Vũ Đình Phương', 'Vũ Thị Lan', 'vudinhphuong@gmail.com', '40 Ngõ 19 Phố Hoàng Hoa Thám, Phường Bưởi, Quận Tây Hồ, Hà Nội', '0912345670', '2024-04-24 11:45:00', 280000, 'Đã giao hàng'),
(21, 'Đỗ Văn Hoàn', 'Đỗ Thị Hồng', 'dovanhoan@gmail.com', '24 Ngõ 56 Phố Khâm Thiên, Phường Khâm Thiên, Quận Đống Đa, Hà Nội', '0987612309', '2024-04-24 16:00:00', 190000, 'Đang giao hàng'),
(22, 'Nguyễn Thị Nga', 'Nguyễn Văn Tuấn', 'nguyenthinga@gmail.com', '31 Ngõ 89 Phố Trần Quốc Hoàn, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', '0901234509', '2024-04-24 10:30:00', 260000, 'Đã giao hàng'),
(23, 'Trần Văn Thành', 'Trần Thị Thảo', 'tranvanthanh@gmail.com', '17 Ngõ 23 Phố Nguyễn Trãi, Phường Thanh Xuân Trung, Quận Thanh Xuân, Hà Nội', '0987609812', '2024-04-24 13:45:00', 220000, 'Đang giao hàng'),
(24, 'Phạm Thị Hương', 'Phạm Văn Hải', 'phamthihuong@gmail.com', '26 Ngõ 45 Phố Bà Triệu, Phường Bách Khoa, Quận Hai Bà Trưng, Hà Nội', '0912340987', '2024-04-24 09:00:00', 295000, 'Đã giao hàng'),
(25, 'Lê Văn Phúc', 'Lê Thị Hồng', 'levanphuc@gmail.com', '38 Ngõ 67 Phố Trần Bình Trọng, Phường Cát Linh, Quận Đống Đa, Hà Nội', '0987654309', '2024-04-24 15:15:00', 235000, 'Đang giao hàng'),
(26, 'Hoàng Thị Mai', 'Hoàng Văn Hiệp', 'hoangthimai@gmail.com', '10 Ngõ 23 Phố Lạc Trung, Phường Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', '0901238765', '2024-04-24 11:00:00', 270000, 'Đã giao hàng'),
(27, 'Vũ Đình Tuấn', 'Vũ Thị Lan', 'vudinhtuan@gmail.com', '36 Ngõ 56 Phố Bà Triệu, Phường Bách Khoa, Quận Hai Bà Trưng, Hà Nội', '0987612345', '2024-04-24 14:15:00', 255000, 'Đang giao hàng'),
(28, 'Đỗ Văn Phương', 'Đỗ Thị Hương', 'dovanphuong@gmail.com', '21 Ngõ 78 Phố Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', '0901239078', '2024-04-24 10:45:00', 240000, 'Đang chờ xử lý'),
(29, 'Nguyễn Thị Thủy', 'Nguyễn Văn Đạt', 'nguyenthithuy@gmail.com', '47 Ngõ 90 Phố Bà Triệu, Phường Bách Khoa, Quận Hai Bà Trưng, Hà Nội', '0987690123', '2024-04-24 09:30:00', 285000, 'Đang giao hàng'),
(30, 'Trần Văn Đạt', 'Trần Thị Hồng', 'tranvandat@gmail.com', '29 Ngõ 45 Phố Trường Chinh, Phường Khương Thượng, Quận Đống Đa, Hà Nội', '0987654321', '2024-04-24 17:30:00', 310000, 'Đang chờ xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TenSanPham` varchar(50) NOT NULL,
  `Gia` decimal(10,0) NOT NULL,
  `HinhAnh` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SoLuongTon` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `Gia`, `HinhAnh`, `SoLuongTon`) VALUES
('SP001', 'Cà chua', 15000, 'cachua.jpg', 50),
('SP002', 'Cà rốt', 12000, 'carot.jpg', 60),
('SP003', 'Bắp cải', 8000, 'bapcai.jpg', 40),
('SP004', 'Súp lơ', 20000, 'suplo.jpg', 30),
('SP005', 'Cà tím', 18000, 'catim.jpg', 45),
('SP006', 'Bí đao', 16000, 'bidao.jpg', 35),
('SP007', 'Bí ngò', 14000, 'bingo.jpg', 40),
('SP008', 'Bầu', 12000, 'bau.jpg', 45),
('SP009', 'Mướp', 10000, 'muop.jpg', 55),
('SP010', 'Ớt chuông', 22000, 'otchuong.jpg', 25),
('SP011', 'Ớt hiểm', 18000, 'othiem.jpg', 30),
('SP012', 'Dưa leo', 8000, 'dualeo.jpg', 60),
('SP013', 'Dưa chuột', 10000, 'duachuot.jpg', 50),
('SP014', 'Khổ qua', 12000, 'khoqua.jpg', 45),
('SP015', 'Mướp đắng', 14000, 'muopdang.jpg', 40),
('SP016', 'Hành tây', 6000, 'hanhtay.jpg', 70),
('SP017', 'Tỏi', 8000, 'toi.jpg', 65),
('SP018', 'Gừng', 10000, 'gung.jpg', 55),
('SP019', 'Khoai tây', 12000, 'khoaitay.jpg', 50),
('SP020', 'Khoai môn', 14000, 'khoaimon.jpg', 45),
('SP021', 'Khoai lang', 16000, 'khoailang.jpg', 40),
('SP022', 'Củ cải trắng', 8000, 'cucaitrang.jpg', 60),
('SP023', 'Củ cải đỏ', 10000, 'cucaido.jpg', 55),
('SP024', 'Cà pháo', 12000, 'caphao.jpg', 50),
('SP025', 'Rau muống', 6000, 'raumuong.jpg', 75),
('SP026', 'Rau dền', 8000, 'rauden.jpg', 65),
('SP027', 'Rau ngót', 10000, 'raugot.jpg', 60),
('SP028', 'Rau cải ngọt', 12000, 'raucaingot.jpg', 55),
('SP029', 'Cải xoăn', 14000, 'caixoan.jpg', 50),
('SP030', 'Xà lách', 16000, 'xalach.jpg', 45),
('SP031', 'Cải bẹ xanh', 8000, 'caibexanh.jpg', 65),
('SP032', 'Cải thìa', 10000, 'caithia.jpg', 60),
('SP033', 'Húng quế', 6000, 'hungque.jpg', 80),
('SP034', 'Ngò rí', 8000, 'ngori.jpg', 70),
('SP035', 'Hành lá', 10000, 'hanhla.jpg', 65),
('SP036', 'Măng tây', 20000, 'mangtay.jpg', 40),
('SP037', 'Nấm rơm', 18000, 'namrom.jpg', 45),
('SP038', 'Nấm đùi gà', 22000, 'namduiga.jpg', 35),
('SP039', 'Cam', 15000, 'cam.jpg', 50),
('SP040', 'Quýt', 12000, 'quyt.jpg', 55),
('SP041', 'Bưởi', 18000, 'buoi.jpg', 45),
('SP042', 'Dứa', 20000, 'dua.jpg', 40),
('SP043', 'Táo', 16000, 'tao.jpg', 50),
('SP044', 'Lê', 14000, 'le.jpg', 55),
('SP045', 'Xoài', 18000, 'xoai.jpg', 45),
('SP046', 'Chôm chôm', 22000, 'chomchom.jpg', 40),
('SP047', 'Mận', 16000, 'man.jpg', 50),
('SP048', 'Dâu tây', 24000, 'dautay.jpg', 35),
('SP049', 'Nho', 28000, 'nho.jpg', 30),
('SP050', 'Dưa hấu', 10000, 'duahau.jpg', 60);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(10) NOT NULL,
  `TenTaiKhoan` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MatKhau` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `TenTaiKhoan`, `MatKhau`) VALUES
(1, 'admin', 'Admin@123'),
(2, 'nhanvien01', 'nv1@123'),
(3, 'PhamBaoAnh', 'baoanh2003'),
(4, 'nhanvien02', 'nv2@123'),
(5, 'dungle', 'lhdung03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaHoaDon`,`MaSanPham`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
