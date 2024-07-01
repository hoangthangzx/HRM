-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 02, 2024 lúc 06:16 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlynhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacluong`
--

CREATE TABLE `bacluong` (
  `pk` int(11) NOT NULL,
  `maBacLuong` int(11) DEFAULT NULL,
  `heSoLuong` binary(11) DEFAULT NULL,
  `phuCapVuotKhung` binary(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bacluong`
--

INSERT INTO `bacluong` (`pk`, `maBacLuong`, `heSoLuong`, `phuCapVuotKhung`, `version`) VALUES
(1, 1, 0x373030303030302e300000, 0x302e300000000000000000, NULL),
(2, 2, 0x3237373737373737000000, 0x302e300000000000000000, NULL),
(3, 3, 0x333030303030302e300000, 0x302e300000000000000000, NULL),
(4, 4, 0x333333333939392e300000, 0x302e300000000000000000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bomon`
--

CREATE TABLE `bomon` (
  `pk` int(11) NOT NULL,
  `tenBoMon` char(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bomon`
--

INSERT INTO `bomon` (`pk`, `tenBoMon`, `version`) VALUES
(1, 'Vật lý', NULL),
(2, 'Toán Giải tích', NULL),
(3, 'Đường lối CM của Đảng CSVN', NULL),
(4, 'Những NLCB của CN MácLênin', NULL),
(5, 'Cơ lý thuyết', NULL),
(6, 'Tư tưởng Hồ Chí Minh', NULL),
(7, 'Anh văn', NULL),
(8, 'Hình họa - VKT', NULL),
(9, 'Toán đại số', NULL),
(10, 'Thiết kế máy', NULL),
(11, 'Máy xây dựng', NULL),
(12, 'Cơ khí ô tô', NULL),
(13, 'Công nghệ GTVT', NULL),
(14, 'Điều khiển học', NULL),
(15, 'Mạng máy tính', NULL),
(16, 'Công nghệ phần mềm', NULL),
(17, 'Kỹ thuật điện tử', NULL),
(18, 'Kỹ thuật viễn thông', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `canbo`
--

CREATE TABLE `canbo` (
  `pk` int(11) NOT NULL,
  `soHieu` varchar(255) NOT NULL,
  `donViChucNang_pk` int(11) NOT NULL,
  `boMon_pk` int(11) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `ten` varchar(255) NOT NULL,
  `tenGoiKhac` varchar(255) DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` varchar(255) DEFAULT NULL,
  `noiSinh` varchar(255) DEFAULT NULL,
  `queQuan_pk` int(11) DEFAULT NULL,
  `danToc_pk` int(11) DEFAULT NULL,
  `tonGiao_pk` int(11) DEFAULT NULL,
  `soCmnd` varchar(30) DEFAULT NULL,
  `ngayCapCmnd` date DEFAULT NULL,
  `noiCapCmnd` varchar(255) DEFAULT NULL,
  `noiDKHoKhauThuongTru` varchar(255) DEFAULT NULL,
  `noiOHienNay` varchar(255) DEFAULT NULL,
  `ngheNghiepKhiTuyenDung` varchar(255) DEFAULT NULL,
  `coQuanTuyenDung` varchar(255) DEFAULT NULL,
  `ngayTuyenDung` date DEFAULT NULL,
  `chucVu_pk` int(11) DEFAULT NULL,
  `congViecDuocGiao` varchar(255) DEFAULT NULL,
  `chucDanh` varchar(255) DEFAULT NULL,
  `ngachCongChuc_pk` int(11) DEFAULT NULL,
  `bacLuong_pk` int(11) DEFAULT NULL,
  `ngayHuong` date DEFAULT NULL,
  `phuCapChucVu` binary(255) DEFAULT NULL,
  `phuCapKhac` binary(255) DEFAULT NULL,
  `trinhDoGiaoDucPt` varchar(255) DEFAULT NULL,
  `trinhDoChuyenMon` varchar(255) DEFAULT NULL,
  `hocVi` varchar(255) DEFAULT NULL,
  `hocHam` varchar(255) DEFAULT NULL,
  `ngayNhanHocVi` date DEFAULT NULL,
  `ngayNhanHocHam` date DEFAULT NULL,
  `lyLuanChinhTri` varchar(255) DEFAULT NULL,
  `quanLyNhaNuoc` varchar(255) DEFAULT NULL,
  `ngoaiNgu` varchar(255) DEFAULT NULL,
  `tinHoc` varchar(255) DEFAULT NULL,
  `ngayVaoDcsvnDuBi` date DEFAULT NULL,
  `ngayVaoDcsvnChinhThuc` date DEFAULT NULL,
  `thamGiaToChucCtxh` varchar(255) DEFAULT NULL,
  `ngayNhapNgu` date DEFAULT NULL,
  `ngayXuatNgu` date DEFAULT NULL,
  `quanHamCaoNhat` varchar(255) DEFAULT NULL,
  `danhHieuPhongTang` varchar(255) DEFAULT NULL,
  `soTruongCongTac` int(11) DEFAULT NULL,
  `khenThuong` varchar(255) DEFAULT NULL,
  `kyLuat` varchar(255) DEFAULT NULL,
  `tinhTrangSucKhoe` varchar(255) DEFAULT NULL,
  `chieuCao` binary(11) DEFAULT NULL,
  `canNang` binary(11) DEFAULT NULL,
  `nhomMau` varchar(255) DEFAULT NULL,
  `soBaoHiemXh` varchar(255) DEFAULT NULL,
  `laThuongBinh` varchar(255) DEFAULT NULL,
  `laConGiaDinhChinhSach` varchar(255) DEFAULT NULL,
  `nhanXet` varchar(255) DEFAULT NULL,
  `ngayVeHuu` date DEFAULT NULL,
  `ngayThoiViec` date DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `canbo`
--

INSERT INTO `canbo` (`pk`, `soHieu`, `donViChucNang_pk`, `boMon_pk`, `imageUrl`, `ten`, `tenGoiKhac`, `ngaySinh`, `gioiTinh`, `noiSinh`, `queQuan_pk`, `danToc_pk`, `tonGiao_pk`, `soCmnd`, `ngayCapCmnd`, `noiCapCmnd`, `noiDKHoKhauThuongTru`, `noiOHienNay`, `ngheNghiepKhiTuyenDung`, `coQuanTuyenDung`, `ngayTuyenDung`, `chucVu_pk`, `congViecDuocGiao`, `chucDanh`, `ngachCongChuc_pk`, `bacLuong_pk`, `ngayHuong`, `phuCapChucVu`, `phuCapKhac`, `trinhDoGiaoDucPt`, `trinhDoChuyenMon`, `hocVi`, `hocHam`, `ngayNhanHocVi`, `ngayNhanHocHam`, `lyLuanChinhTri`, `quanLyNhaNuoc`, `ngoaiNgu`, `tinHoc`, `ngayVaoDcsvnDuBi`, `ngayVaoDcsvnChinhThuc`, `thamGiaToChucCtxh`, `ngayNhapNgu`, `ngayXuatNgu`, `quanHamCaoNhat`, `danhHieuPhongTang`, `soTruongCongTac`, `khenThuong`, `kyLuat`, `tinhTrangSucKhoe`, `chieuCao`, `canNang`, `nhomMau`, `soBaoHiemXh`, `laThuongBinh`, `laConGiaDinhChinhSach`, `nhanXet`, `ngayVeHuu`, `ngayThoiViec`, `version`) VALUES
(1, 'CB012', 41, 2, NULL, 'Nguyen Van A', NULL, NULL, NULL, NULL, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'Nhân Vien', 59, 1, NULL, 0x322e33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x322e35000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x312e373100000000000000, 0x35362e3500000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'CB011', 41, 1, '', 'Hoang Thi C', '', '2024-05-15', '0', '', 5, 3, 2, '111', NULL, '', '', '', '', '', NULL, 4, '', 'Nhân Viên', 6, 3, '2024-05-27', 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '', '', '', '', NULL, NULL, '', '', '', '', NULL, NULL, '', NULL, NULL, '', '', NULL, '', '', '', 0x312e363800000000000000, 0x36302e3000000000000000, NULL, '', '', '', '', NULL, NULL, 4),
(28, 'CB345', 41, 4, '', 'Vũ Văn Điệp', '', NULL, '1', '', 4, 3, 3, '', NULL, '', '', '', '', '', NULL, 5, '', 'Nhân Viên', 2, 1, NULL, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '', '', '', '', NULL, NULL, '', '', '', '', NULL, NULL, '', NULL, NULL, '', '', NULL, '', '', '', 0x312e373100000000000000, 0x36352e3000000000000000, NULL, '', '', '', '', NULL, NULL, 5),
(35, 'cb2', 41, 3, '', 'test', '', NULL, '0', '', 7, 1, 6, '', NULL, '', '', '', '', '', NULL, 5, '', 'Giám Đốc', 59, 1, NULL, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '', '', '', '', NULL, NULL, '', '', '', '', NULL, NULL, '', NULL, NULL, '', '', NULL, '', '', '', 0x302e300000000000000000, 0x302e300000000000000000, NULL, '', '', '', '', NULL, NULL, 2),
(36, 'cb5', 11, 2, '', 'nguyen van b', 'abbc', '2017-05-23', '0', 'ho chi minh', 5, 2, 2, '', NULL, '', '', '', '', '', NULL, 5, '', 'nhân viên', 59, 4, NULL, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '', '', 'dai hoc', '', '2017-05-10', NULL, '', '', 'anh van b', '', '2017-05-11', '2017-05-17', 'doan thanh nien hcm', '2017-05-08', '2017-05-05', '', '', NULL, '', '', '', 0x312e373100000000000000, 0x34362e3000000000000000, NULL, '11221424', '', '', '', NULL, NULL, 2),
(130, '112', 14, NULL, NULL, 'dũng', 's', '2024-04-29', '0', 'ss', 3, 1, 1, '222', '2024-05-22', '22', 'ss', 'ss', 'ss', 'cty sg', '2024-05-21', 5, 'nhân viên', 'Nhân Viên', 2, 1, '2024-05-20', 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x302e30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '12/12', 'đại học', '', '', NULL, NULL, 'Sơ cấp', '', 'Anh văn', '', NULL, NULL, 'Đoàn thanh niên Cộng Sản Hồ Chí Minh', NULL, NULL, '', '', NULL, '', '', 'Tốt', 0x312e300000000000000000, 0x312e300000000000000000, 'B', '11111', '', '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `pk` int(11) NOT NULL,
  `tenChucVu` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`pk`, `tenChucVu`, `version`) VALUES
(2, 'Admin', NULL),
(3, 'Thực Tập Sinh', NULL),
(4, 'Giám đốc', NULL),
(5, 'Nhân viên', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachkhoangon`
--

CREATE TABLE `danhsachkhoangon` (
  `pk` int(11) NOT NULL,
  `donViChucNangDskg_pk` int(11) DEFAULT NULL,
  `hoTenCanBo` varchar(255) DEFAULT NULL,
  `soDienThoai` varchar(255) DEFAULT NULL,
  `soCmnd` varchar(255) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `ngayKyHopDong` date DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachkhoangon`
--

INSERT INTO `danhsachkhoangon` (`pk`, `donViChucNangDskg_pk`, `hoTenCanBo`, `soDienThoai`, `soCmnd`, `diaChi`, `ngayKyHopDong`, `version`) VALUES
(1, 10, 'Nguyen Van A', '0989777777', '122189876', 'Ho Chi Minh', '2017-05-07', NULL),
(25, 11, 'Nguyen Van BC', '0972328674', '12323223', 'ha noi', '2017-05-11', NULL),
(39, 12, 'Hoàng văn chung', '0982736256', '122134521', 'Mồ chí minh', '2017-05-20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachkiemnhiem`
--

CREATE TABLE `danhsachkiemnhiem` (
  `pk` int(11) NOT NULL,
  `donViChucNangDskn_pk` int(11) DEFAULT NULL,
  `canBoDskn_pk` int(11) DEFAULT NULL,
  `chucVuKiemNhiem` varchar(255) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachkiemnhiem`
--

INSERT INTO `danhsachkiemnhiem` (`pk`, `donViChucNangDskn_pk`, `canBoDskn_pk`, `chucVuKiemNhiem`, `tuNgay`, `denNgay`, `version`) VALUES
(1, 15, 2, 'Chuyên viên ban đào tạo', '2017-05-11', '2017-05-25', NULL),
(78, 41, 1, 'Giám đốc', '2024-05-10', '2024-05-15', 0),
(82, 41, 1, 'nhân viên', '2024-05-24', '2024-05-29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachthamnien`
--

CREATE TABLE `danhsachthamnien` (
  `pk` int(11) NOT NULL,
  `donViChucNangDstn_pk` int(11) DEFAULT NULL,
  `canBoDstn_pk` int(11) DEFAULT NULL,
  `mocTinhPhuCapTn` date DEFAULT NULL,
  `bacLuongDstn_pk` int(11) DEFAULT NULL,
  `phuCapChucVu` binary(255) DEFAULT NULL,
  `vuotKhung` binary(255) DEFAULT NULL,
  `tongHeSoLuong` binary(255) DEFAULT NULL,
  `phuCapGiangVien` binary(255) DEFAULT NULL,
  `soThangBiGiamTru` int(11) DEFAULT NULL,
  `thoiDiemTangPhuCapTn` date DEFAULT NULL,
  `ghiChuThoiDiemTang` varchar(255) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `ghiChuKhongPhuCapTn` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachthamnien`
--

INSERT INTO `danhsachthamnien` (`pk`, `donViChucNangDstn_pk`, `canBoDstn_pk`, `mocTinhPhuCapTn`, `bacLuongDstn_pk`, `phuCapChucVu`, `vuotKhung`, `tongHeSoLuong`, `phuCapGiangVien`, `soThangBiGiamTru`, `thoiDiemTangPhuCapTn`, `ghiChuThoiDiemTang`, `tuNgay`, `denNgay`, `ghiChuKhongPhuCapTn`, `version`) VALUES
(1, 12, 2, '2017-05-18', 1, 0x312e32000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x312e33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x342e38000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x312e35000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 1, '2017-05-12', 'Học nước ngoài', '2017-05-19', '2017-05-26', 'Không', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dantoc`
--

CREATE TABLE `dantoc` (
  `pk` int(11) NOT NULL,
  `tenDanToc` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dantoc`
--

INSERT INTO `dantoc` (`pk`, `tenDanToc`, `version`) VALUES
(1, 'Mường', NULL),
(2, 'Nùng', NULL),
(3, 'Kinh', NULL),
(4, 'Ê đê', NULL),
(5, 'Tày', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvichucnang`
--

CREATE TABLE `donvichucnang` (
  `pk` int(11) NOT NULL,
  `maDonVi` varchar(255) DEFAULT NULL,
  `tenDonVi` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvichucnang`
--

INSERT INTO `donvichucnang` (`pk`, `maDonVi`, `tenDonVi`, `version`) VALUES
(10, 'BGD', 'Ban Giám Đốc', NULL),
(11, '01', 'Ban công tác ', NULL),
(12, '02', 'Ban đào tạo', NULL),
(13, '03', 'Ban khảo thí và ĐBCL', NULL),
(14, '04', 'Ban Khoa học Công nghệ ', NULL),
(15, '05', 'Ban Quản lý', NULL),
(16, '06', 'Ban tài chính - Kế toán', NULL),
(17, '07', 'Ban Thiết bị quản trị', NULL),
(18, '08', 'Ban Tổ chức - Hành chính', NULL),
(19, '09', 'Ban dev', NULL),
(40, '11', 'Bộ môn Cầu - Hầm', NULL),
(41, '12', 'Kế toán', NULL),
(42, '13', 'Bộ môn Cơ khí', NULL),
(43, '14', 'Bộ môn Công trình', NULL),
(44, '15', 'Bộ môn Điện - Điện tử', NULL),
(45, '16', 'Bộ môn Đường bộ', NULL),
(46, '17', 'BM. Giáo dục thể chất', NULL),
(47, '18', 'BM. Vận tải - Kinh tế', NULL),
(48, '19', 'Trung tâm ĐTTH và CGCN GTVT', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvichucnang_bomon`
--

CREATE TABLE `donvichucnang_bomon` (
  `donViChucNang_pk` int(11) NOT NULL,
  `boMon_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvichucnang_ngachcongchuc`
--

CREATE TABLE `donvichucnang_ngachcongchuc` (
  `donViChucNang_pk` int(11) NOT NULL,
  `ngachcongchuc_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(142);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdongcanbo`
--

CREATE TABLE `hopdongcanbo` (
  `pk` int(11) NOT NULL,
  `donViChucNangHdcb_pk` int(11) DEFAULT NULL,
  `canBoHdcn_pk` int(11) DEFAULT NULL,
  `maHopDong` varchar(255) DEFAULT NULL,
  `tenHopDong` varchar(255) DEFAULT NULL,
  `chucVu` varchar(255) DEFAULT NULL,
  `loaiHopDongHdcb_pk` int(11) DEFAULT NULL,
  `ngayKy` date DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `trichYeuNoiDung` varchar(255) DEFAULT NULL,
  `fileHD` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdongcanbo`
--

INSERT INTO `hopdongcanbo` (`pk`, `donViChucNangHdcb_pk`, `canBoHdcn_pk`, `maHopDong`, `tenHopDong`, `chucVu`, `loaiHopDongHdcb_pk`, `ngayKy`, `tuNgay`, `denNgay`, `trichYeuNoiDung`, `fileHD`, `version`) VALUES
(2, 18, 28, '86/TCCB 2008', 'Hợp đồng lao động', 'Trưởng ban thư viện', 6, '2017-05-26', '2017-05-27', '2017-06-10', 'Hợp đồng 12 tháng', NULL, 1),
(108, 14, 36, '11', '11', '11', 5, '2024-05-22', '2024-05-16', '2024-05-08', '1', '1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdongnganhan`
--

CREATE TABLE `hopdongnganhan` (
  `pk` int(11) NOT NULL,
  `tenHopDong` varchar(255) DEFAULT NULL,
  `tenNhanVien` varchar(255) DEFAULT NULL,
  `ngayKy` date DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdongnganhan`
--

INSERT INTO `hopdongnganhan` (`pk`, `tenHopDong`, `tenNhanVien`, `ngayKy`, `tuNgay`, `denNgay`, `version`) VALUES
(7, 'Tuyển dụng lao động', 'Nguyễn Văn A', '2017-04-10', '2017-04-10', '2017-04-20', NULL),
(14, 'Tuyển dụng bảo vệ', 'Nguyễn Văn Tí', '2017-04-09', '2017-04-13', '2017-04-20', NULL),
(17, 'Tuyển dụng nhân sự', 'Không Như Ngọc', '2017-04-14', '2017-04-15', '2017-04-29', NULL),
(18, 'Sửa Cửa Kính C2', 'Trần Thị Bình B', '2017-04-26', '2017-04-26', '2017-04-30', NULL),
(69, 'abc', 'def', '2017-05-26', '2017-05-20', '2017-05-06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kekhaitaisan`
--

CREATE TABLE `kekhaitaisan` (
  `pk` int(11) NOT NULL,
  `donViChucNangKkts_pk` int(11) DEFAULT NULL,
  `canBoKkts_pk` int(11) DEFAULT NULL,
  `ngayKeKhai` date DEFAULT NULL,
  `fileKeKhai` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kekhaitaisan`
--

INSERT INTO `kekhaitaisan` (`pk`, `donViChucNangKkts_pk`, `canBoKkts_pk`, `ngayKeKhai`, `fileKeKhai`, `version`) VALUES
(1, 15, 28, '2017-05-18', NULL, NULL),
(2, 13, 1, '2017-05-06', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihopdong`
--

CREATE TABLE `loaihopdong` (
  `pk` int(11) NOT NULL,
  `tenLoaiHopDong` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaihopdong`
--

INSERT INTO `loaihopdong` (`pk`, `tenLoaiHopDong`, `version`) VALUES
(1, 'Hợp đồng làm việc không xác định thời hạn', NULL),
(2, 'Hợp đồng lao động 12 tháng', NULL),
(3, 'Hợp đồng thử việc', NULL),
(4, 'Hợp đồng lao động 3 tháng', NULL),
(5, 'Hợp đồng lao động 5 tháng', NULL),
(6, 'Hợp đồng lao động 24tháng', NULL),
(7, 'Hợp đồng lao động 36 tháng', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiquyetdinh`
--

CREATE TABLE `loaiquyetdinh` (
  `pk` int(11) NOT NULL,
  `tenLoaiQuyetDinh` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiquyetdinh`
--

INSERT INTO `loaiquyetdinh` (`pk`, `tenLoaiQuyetDinh`, `version`) VALUES
(1, 'Bổ nhiệm chức vu', NULL),
(2, 'Điều chuyển', NULL),
(3, 'Bổ nhiệm ', NULL),
(4, 'Cử đi học thạc sĩ trong nước', NULL),
(5, 'Cử đi học NCS nước ngoài', NULL),
(6, 'Cử đi bồi dưỡng nghiệp vụ', NULL),
(7, 'Cử đi công tác', NULL),
(8, 'Công nhận kết quả thi tuyển', NULL),
(9, 'Cửu đi học NCS nước ngoài(Gia hạn)', NULL),
(11, 'Nâng bậc lương', NULL),
(12, 'Nâng lương trước thời hạn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngachcongchuc`
--

CREATE TABLE `ngachcongchuc` (
  `pk` int(11) NOT NULL,
  `maNgach` varchar(255) DEFAULT NULL,
  `tenNgach` varchar(255) DEFAULT NULL,
  `soNamNangBacLuong` int(11) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `pkbacluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ngachcongchuc`
--

INSERT INTO `ngachcongchuc` (`pk`, `maNgach`, `tenNgach`, `soNamNangBacLuong`, `VERSION`, `pkbacluong`) VALUES
(2, 'CV', 'Chuyên viên', 2, 3, 1),
(3, 'CS', 'Cán sự', 2, 3, 4),
(4, 'NVDM', 'Nhân viên đánh máy', 2, 3, 2),
(5, 'NVKT', 'Nhân viên kỹ thuật', 2, 2, 1),
(6, 'NVTV', 'Nhân viên tạp vụ', 2, 2, 3),
(59, 'DEV', 'DEV', 3, 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngachcongchuc_bacluong`
--

CREATE TABLE `ngachcongchuc_bacluong` (
  `ngachCongChuc_pk` int(11) NOT NULL,
  `bacLuong_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghiphep`
--

CREATE TABLE `nghiphep` (
  `pk` int(11) NOT NULL,
  `canBo_pk` int(11) NOT NULL,
  `ngayBatDau` varchar(255) NOT NULL,
  `ngayKetThuc` varchar(255) NOT NULL,
  `lyDo` varchar(255) NOT NULL,
  `trangThai` varchar(50) DEFAULT 'Chờ Duyệt',
  `ngayYeuCau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nghiphep`
--

INSERT INTO `nghiphep` (`pk`, `canBo_pk`, `ngayBatDau`, `ngayKetThuc`, `lyDo`, `trangThai`, `ngayYeuCau`) VALUES
(2, 79, '2024-05-22', '2024-05-30', 'mc', 'Duyệt', '2024-05-22'),
(124, 28, '2024-05-24', '2024-05-24', 'om', 'Duyệt', '2024-05-30'),
(125, 1, '2024-05-24', '2024-05-10', 'qq', 'Chờ duyệt', '2024-05-23'),
(126, 35, '2024-05-25', '2024-05-30', 'ốm', 'Duyệt', '2024-05-22'),
(128, 35, '2024-05-24', '2024-05-17', 'qq', NULL, '2024-05-31'),
(133, 28, '2024-05-23', '2024-05-24', 'aa', 'Chờ duyệt', '2024-05-31'),
(134, 28, '2024-05-24', '2024-05-24', 'ZZ', NULL, '2024-05-23'),
(135, 2, '2024-05-24', '2024-05-25', 'aaa', 'Chờ duyệt', '2024-05-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhegiadinh`
--

CREATE TABLE `quanhegiadinh` (
  `pk` int(11) NOT NULL,
  `canBoQhgd_pk` int(11) DEFAULT NULL,
  `moiQuanHe` varchar(255) DEFAULT NULL,
  `hoTen` varchar(255) DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `queQuan` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatrinhcongtac`
--

CREATE TABLE `quatrinhcongtac` (
  `pk` int(11) NOT NULL,
  `donViChucNangQtct_pk` int(11) DEFAULT NULL,
  `canBoQtct_pk` int(11) DEFAULT NULL,
  `noiDungCongTac` varchar(255) DEFAULT NULL,
  `congTacTuNgay` date DEFAULT NULL,
  `congTacDenNgay` date DEFAULT NULL,
  `ghiChu` varchar(255) DEFAULT NULL,
  `nguoiKy` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatrinhdaotao`
--

CREATE TABLE `quatrinhdaotao` (
  `pk` int(11) NOT NULL,
  `donViChucNangQtdt_pk` int(11) DEFAULT NULL,
  `canBoQtdt_pk` int(11) DEFAULT NULL,
  `donViDaoTao` varchar(255) DEFAULT NULL,
  `hinhThucDaoTao` varchar(255) DEFAULT NULL,
  `chuyenNganhDaoTao` varchar(255) DEFAULT NULL,
  `tenBangCap` varchar(255) DEFAULT NULL,
  `hinhThucDihoc` varchar(255) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatrinhluong`
--

CREATE TABLE `quatrinhluong` (
  `pk` int(11) NOT NULL,
  `donViChucNangL_pk` int(11) DEFAULT NULL,
  `canBoL_pk` int(11) DEFAULT NULL,
  `ngachCongChucL_pk` int(11) DEFAULT NULL,
  `bacLuongL_pk` int(11) DEFAULT NULL,
  `thoiGianTinhHuong` date DEFAULT NULL,
  `phanTranPhuCap` int(11) DEFAULT NULL,
  `thoiGianTangLuong` date DEFAULT NULL,
  `thoiGianChamLenLuong` date DEFAULT NULL,
  `lyDoChamLenLuong` varchar(255) DEFAULT NULL,
  `thoiGianLenLuongSom` date DEFAULT NULL,
  `lyDoLenLuongSom` varchar(255) DEFAULT NULL,
  `ghiChu` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quequan`
--

CREATE TABLE `quequan` (
  `pk` int(11) NOT NULL,
  `tenQueQuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quequan`
--

INSERT INTO `quequan` (`pk`, `tenQueQuan`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bạc Liêu'),
(4, 'Bắc Cạn'),
(5, 'Bắc Giang'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Dương'),
(9, 'Bình Định'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Cần Thơ'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tây'),
(26, 'Hà Tĩnh'),
(27, 'Hải Dương'),
(28, 'Hải Phòng'),
(29, 'Hòa Bình'),
(30, 'Hồ Chí Minh'),
(31, 'Hậu Giang'),
(32, 'Hưng Yên'),
(33, 'Khánh Hòa'),
(34, 'Kiên Giang'),
(35, 'Kon Tum'),
(36, 'Lai Châu'),
(37, 'Lào Cai'),
(38, 'Lạng Sơn'),
(39, 'Lâm Đồng'),
(40, 'Long An'),
(41, 'Nam Định'),
(42, 'Nghệ An'),
(43, 'Ninh Bình'),
(44, 'Ninh Thuận'),
(45, 'Phú Thọ'),
(46, 'Phú Yên'),
(47, 'Quảng Bình'),
(48, 'Quảng Nam'),
(49, 'Quảng Ngãi'),
(50, 'Quảng Ninh'),
(51, 'Quảng Trị'),
(52, 'Sóc Trăng'),
(53, 'Sơn La'),
(54, 'Tây Ninh'),
(55, 'Thái Bình'),
(56, 'Thái Nguyên'),
(57, 'Thanh Hóa'),
(58, 'Thừa Thiên - Huế'),
(59, 'Tiền Giang'),
(60, 'Trà Vinh'),
(61, 'Tuyên Quang'),
(62, 'Vĩnh Long'),
(63, 'Vĩnh Phúc'),
(64, 'Yên Bái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyetdinh`
--

CREATE TABLE `quyetdinh` (
  `pk` int(11) NOT NULL,
  `donViChucNangQd_pk` int(11) DEFAULT NULL,
  `canBoQd_pk` int(11) DEFAULT NULL,
  `soQuyetDinh` varchar(255) DEFAULT NULL,
  `tenQuyetDinh` varchar(255) DEFAULT NULL,
  `loaiQuyetDinhQd_pk` int(11) DEFAULT NULL,
  `noiDungQuyetDinh` varchar(255) DEFAULT NULL,
  `ngayKy` date DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `nguoiKy` varchar(255) DEFAULT NULL,
  `fileKy` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyetdinh`
--

INSERT INTO `quyetdinh` (`pk`, `donViChucNangQd_pk`, `canBoQd_pk`, `soQuyetDinh`, `tenQuyetDinh`, `loaiQuyetDinhQd_pk`, `noiDungQuyetDinh`, `ngayKy`, `tuNgay`, `denNgay`, `nguoiKy`, `fileKy`, `version`) VALUES
(1, 18, 1, '2222/QĐ-ĐHGTVT 2015', 'Bổ nhiệm vào ngạch chuyên viên', 3, 'Bổ nhiệm vào ngạch chuyên viên', '2017-05-18', '2017-05-19', '2017-05-31', 'PGS. Trần Đắc Sử', '', NULL),
(84, 41, 2, '12', '21', 1, '1212', '2024-05-22', '2024-05-29', '2024-05-29', '21', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyetdinhkhenthuong`
--

CREATE TABLE `quyetdinhkhenthuong` (
  `pk` int(11) NOT NULL,
  `donViChucNangQdkt_pk` int(11) DEFAULT NULL,
  `canBoQdkt_pk` int(11) DEFAULT NULL,
  `soQuyetDinh` varchar(255) DEFAULT NULL,
  `tenQuyetDinh` varchar(255) DEFAULT NULL,
  `noiDungQuyetDinh` char(255) DEFAULT NULL,
  `ngayKy` date DEFAULT NULL,
  `nguoiKy` varchar(255) DEFAULT NULL,
  `fileKy` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyetdinhkhenthuong`
--

INSERT INTO `quyetdinhkhenthuong` (`pk`, `donViChucNangQdkt_pk`, `canBoQdkt_pk`, `soQuyetDinh`, `tenQuyetDinh`, `noiDungQuyetDinh`, `ngayKy`, `nguoiKy`, `fileKy`, `version`) VALUES
(1, 16, 28, '1926/QĐ-UBND 2015', 'Tặng huy hiệu Thành phố Hồ Chí Minh', 'Tặng huy hiệu thành phố hồ chí minh cho ca nhân, đã có thành tích hoàn thành xuất sắc nhiệm vụ liên tục trong sự nghiệp xây dựng và bảo vệ Thành phố', '2017-05-23', 'Hứa Ngọc Thuận', '', NULL),
(117, 41, 36, '112', '11', '11', '2024-05-31', 'huy', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyetdinhkyluat`
--

CREATE TABLE `quyetdinhkyluat` (
  `pk` int(11) NOT NULL,
  `donViChucNangQdkl_pk` int(11) DEFAULT NULL,
  `canBoQdkl_pk` int(11) DEFAULT NULL,
  `soQuyetDinh` char(255) DEFAULT NULL,
  `tenQuyetDinh` char(255) DEFAULT NULL,
  `noiDungQuyetDinh` char(255) DEFAULT NULL,
  `ngayKy` date DEFAULT NULL,
  `nguoiKy` char(255) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `fileKy` char(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyetdinhkyluat`
--

INSERT INTO `quyetdinhkyluat` (`pk`, `donViChucNangQdkl_pk`, `canBoQdkl_pk`, `soQuyetDinh`, `tenQuyetDinh`, `noiDungQuyetDinh`, `ngayKy`, `nguoiKy`, `tuNgay`, `denNgay`, `fileKy`, `version`) VALUES
(1, 11, 1, '1792/TCCB 2007', 'Kỷ luật cán bộ', 'Khiển trách ông A sai phạm trong quyết toán tiền', '2017-05-11', 'Nguyễn Văn B', '2017-05-12', '2017-05-31', '', 1),
(29, 41, 2, '1792/TCCB 2008', 'Kỷ luật cán bộ 2', 'Khiển trách', '2017-05-18', 'd', '2024-05-22', '2024-05-30', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien`
--

CREATE TABLE `sukien` (
  `pk` int(11) NOT NULL,
  `tenSuKien` varchar(255) NOT NULL,
  `moTa` text DEFAULT NULL,
  `ngayBatDau` varchar(255) NOT NULL,
  `ngayKetThuc` varchar(255) NOT NULL,
  `diaDiem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sukien`
--

INSERT INTO `sukien` (`pk`, `tenSuKien`, `moTa`, `ngayBatDau`, `ngayKetThuc`, `diaDiem`) VALUES
(1, '1', '1swwwwwwwwwwwwwwwwwwwwwwwwwwwasszzzzzzzzzzzzzzzzzz', '2024-05-21', '2024-05-30', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tongiao`
--

CREATE TABLE `tongiao` (
  `pk` int(11) NOT NULL,
  `tenTonGiao` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tongiao`
--

INSERT INTO `tongiao` (`pk`, `tenTonGiao`, `version`) VALUES
(1, 'Phật giáo', NULL),
(2, 'Thiên chúa giáo', NULL),
(3, 'Không', NULL),
(5, 'Tin lành', NULL),
(6, 'Cao đài', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bacluong`
--
ALTER TABLE `bacluong`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `bomon`
--
ALTER TABLE `bomon`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `danToc_pk` (`danToc_pk`),
  ADD KEY `tonGiao_pk` (`tonGiao_pk`),
  ADD KEY `chucVu_pk` (`chucVu_pk`),
  ADD KEY `ngachCongChuc_pk` (`ngachCongChuc_pk`),
  ADD KEY `bacLuong_pk` (`bacLuong_pk`),
  ADD KEY `donViChucNang_pk` (`donViChucNang_pk`),
  ADD KEY `boMon_pk` (`boMon_pk`),
  ADD KEY `queQuan_pk` (`queQuan_pk`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `danhsachkhoangon`
--
ALTER TABLE `danhsachkhoangon`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangDskg_pk` (`donViChucNangDskg_pk`);

--
-- Chỉ mục cho bảng `danhsachkiemnhiem`
--
ALTER TABLE `danhsachkiemnhiem`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangDskn_pk` (`donViChucNangDskn_pk`),
  ADD KEY `canBoDskn_pk` (`canBoDskn_pk`);

--
-- Chỉ mục cho bảng `danhsachthamnien`
--
ALTER TABLE `danhsachthamnien`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `bacLuongDstn_pk` (`bacLuongDstn_pk`),
  ADD KEY `donViChucNangDstn_pk` (`donViChucNangDstn_pk`),
  ADD KEY `canBoDstn_pk` (`canBoDstn_pk`);

--
-- Chỉ mục cho bảng `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `donvichucnang`
--
ALTER TABLE `donvichucnang`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `donvichucnang_bomon`
--
ALTER TABLE `donvichucnang_bomon`
  ADD PRIMARY KEY (`donViChucNang_pk`,`boMon_pk`),
  ADD UNIQUE KEY `UK_38ga44by1w5vgpyqmci4t96mj` (`boMon_pk`);

--
-- Chỉ mục cho bảng `donvichucnang_ngachcongchuc`
--
ALTER TABLE `donvichucnang_ngachcongchuc`
  ADD PRIMARY KEY (`donViChucNang_pk`,`ngachcongchuc_pk`),
  ADD UNIQUE KEY `UK_gyvnbrnvq9njxcm4td4l5fyph` (`ngachcongchuc_pk`);

--
-- Chỉ mục cho bảng `hopdongcanbo`
--
ALTER TABLE `hopdongcanbo`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangHdcb_pk` (`donViChucNangHdcb_pk`),
  ADD KEY `canBoHdcn_pk` (`canBoHdcn_pk`),
  ADD KEY `chucVuHdcb_pk` (`chucVu`),
  ADD KEY `loaiHopDongHdcb_pk` (`loaiHopDongHdcb_pk`);

--
-- Chỉ mục cho bảng `hopdongnganhan`
--
ALTER TABLE `hopdongnganhan`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `kekhaitaisan`
--
ALTER TABLE `kekhaitaisan`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangKkts_pk` (`donViChucNangKkts_pk`),
  ADD KEY `canBoKkts_pk` (`canBoKkts_pk`);

--
-- Chỉ mục cho bảng `loaihopdong`
--
ALTER TABLE `loaihopdong`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `loaiquyetdinh`
--
ALTER TABLE `loaiquyetdinh`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `ngachcongchuc`
--
ALTER TABLE `ngachcongchuc`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `ngachcongchuc_bacluong`
--
ALTER TABLE `ngachcongchuc_bacluong`
  ADD PRIMARY KEY (`ngachCongChuc_pk`,`bacLuong_pk`),
  ADD UNIQUE KEY `UK_6utgedkxxhb8atyt8l2k4yktq` (`bacLuong_pk`);

--
-- Chỉ mục cho bảng `nghiphep`
--
ALTER TABLE `nghiphep`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `FKg99k0l7jdy3hg1tgmqixc4qyc` (`canBo_pk`);

--
-- Chỉ mục cho bảng `quanhegiadinh`
--
ALTER TABLE `quanhegiadinh`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `canBoQhgd_pk` (`canBoQhgd_pk`);

--
-- Chỉ mục cho bảng `quatrinhcongtac`
--
ALTER TABLE `quatrinhcongtac`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangQtct_pk` (`donViChucNangQtct_pk`),
  ADD KEY `canBoQtct_pk` (`canBoQtct_pk`);

--
-- Chỉ mục cho bảng `quatrinhdaotao`
--
ALTER TABLE `quatrinhdaotao`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `canBoQtdt_pk` (`canBoQtdt_pk`),
  ADD KEY `donViChucNangQtdt_pk` (`donViChucNangQtdt_pk`);

--
-- Chỉ mục cho bảng `quatrinhluong`
--
ALTER TABLE `quatrinhluong`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangL_pk` (`donViChucNangL_pk`),
  ADD KEY `canBoL_pk` (`canBoL_pk`),
  ADD KEY `ngachCongChucL_pk` (`ngachCongChucL_pk`),
  ADD KEY `bacLuongL_pk` (`bacLuongL_pk`);

--
-- Chỉ mục cho bảng `quequan`
--
ALTER TABLE `quequan`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `quyetdinh`
--
ALTER TABLE `quyetdinh`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangQd_pk` (`donViChucNangQd_pk`),
  ADD KEY `canBoQd_pk` (`canBoQd_pk`),
  ADD KEY `loaiQuyetDinhQd_pk` (`loaiQuyetDinhQd_pk`);

--
-- Chỉ mục cho bảng `quyetdinhkhenthuong`
--
ALTER TABLE `quyetdinhkhenthuong`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangQdkt_pk` (`donViChucNangQdkt_pk`),
  ADD KEY `canBoQdkt_pk` (`canBoQdkt_pk`);

--
-- Chỉ mục cho bảng `quyetdinhkyluat`
--
ALTER TABLE `quyetdinhkyluat`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `donViChucNangQdkl_pk` (`donViChucNangQdkl_pk`),
  ADD KEY `canBoQdkl_pk` (`canBoQdkl_pk`);

--
-- Chỉ mục cho bảng `sukien`
--
ALTER TABLE `sukien`
  ADD PRIMARY KEY (`pk`);

--
-- Chỉ mục cho bảng `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`pk`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bacluong`
--
ALTER TABLE `bacluong`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `bomon`
--
ALTER TABLE `bomon`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `canbo`
--
ALTER TABLE `canbo`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `danhsachkhoangon`
--
ALTER TABLE `danhsachkhoangon`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `danhsachkiemnhiem`
--
ALTER TABLE `danhsachkiemnhiem`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `danhsachthamnien`
--
ALTER TABLE `danhsachthamnien`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `dantoc`
--
ALTER TABLE `dantoc`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `donvichucnang`
--
ALTER TABLE `donvichucnang`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `hopdongcanbo`
--
ALTER TABLE `hopdongcanbo`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `hopdongnganhan`
--
ALTER TABLE `hopdongnganhan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `kekhaitaisan`
--
ALTER TABLE `kekhaitaisan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaihopdong`
--
ALTER TABLE `loaihopdong`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `loaiquyetdinh`
--
ALTER TABLE `loaiquyetdinh`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `ngachcongchuc`
--
ALTER TABLE `ngachcongchuc`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `nghiphep`
--
ALTER TABLE `nghiphep`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `quanhegiadinh`
--
ALTER TABLE `quanhegiadinh`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quatrinhdaotao`
--
ALTER TABLE `quatrinhdaotao`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quatrinhluong`
--
ALTER TABLE `quatrinhluong`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quequan`
--
ALTER TABLE `quequan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `quyetdinh`
--
ALTER TABLE `quyetdinh`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `quyetdinhkhenthuong`
--
ALTER TABLE `quyetdinhkhenthuong`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `quyetdinhkyluat`
--
ALTER TABLE `quyetdinhkyluat`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sukien`
--
ALTER TABLE `sukien`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `tongiao`
--
ALTER TABLE `tongiao`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `canbo`
--
ALTER TABLE `canbo`
  ADD CONSTRAINT `bacLuong_pk` FOREIGN KEY (`bacLuong_pk`) REFERENCES `bacluong` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `boMon_pk` FOREIGN KEY (`boMon_pk`) REFERENCES `bomon` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chucVu_pk` FOREIGN KEY (`chucVu_pk`) REFERENCES `chucvu` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `danToc_pk` FOREIGN KEY (`danToc_pk`) REFERENCES `dantoc` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNang_pk` FOREIGN KEY (`donViChucNang_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ngachCongChuc_pk` FOREIGN KEY (`ngachCongChuc_pk`) REFERENCES `ngachcongchuc` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `queQuan_pk` FOREIGN KEY (`queQuan_pk`) REFERENCES `quequan` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tonGiao_pk` FOREIGN KEY (`tonGiao_pk`) REFERENCES `tongiao` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachkhoangon`
--
ALTER TABLE `danhsachkhoangon`
  ADD CONSTRAINT `donViChucNangDskg_pk` FOREIGN KEY (`donViChucNangDskg_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachkiemnhiem`
--
ALTER TABLE `danhsachkiemnhiem`
  ADD CONSTRAINT `canBoDskn_pk` FOREIGN KEY (`canBoDskn_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangDskn_pk` FOREIGN KEY (`donViChucNangDskn_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachthamnien`
--
ALTER TABLE `danhsachthamnien`
  ADD CONSTRAINT `bacLuongDstn_pk` FOREIGN KEY (`bacLuongDstn_pk`) REFERENCES `bacluong` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `canBoDstn_pk` FOREIGN KEY (`canBoDstn_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangDstn_pk` FOREIGN KEY (`donViChucNangDstn_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donvichucnang_bomon`
--
ALTER TABLE `donvichucnang_bomon`
  ADD CONSTRAINT `FK_donvichucnang_bomon_bomon` FOREIGN KEY (`boMon_pk`) REFERENCES `bomon` (`pk`),
  ADD CONSTRAINT `FK_donvichucnang_bomon_donvichucnang` FOREIGN KEY (`donViChucNang_pk`) REFERENCES `donvichucnang` (`pk`);

--
-- Các ràng buộc cho bảng `donvichucnang_ngachcongchuc`
--
ALTER TABLE `donvichucnang_ngachcongchuc`
  ADD CONSTRAINT `FK_donvichucnang_ngachcongchuc_donvichucnang` FOREIGN KEY (`donViChucNang_pk`) REFERENCES `donvichucnang` (`pk`),
  ADD CONSTRAINT `FK_donvichucnang_ngachcongchuc_ngachcongchuc` FOREIGN KEY (`ngachcongchuc_pk`) REFERENCES `ngachcongchuc` (`pk`);

--
-- Các ràng buộc cho bảng `hopdongcanbo`
--
ALTER TABLE `hopdongcanbo`
  ADD CONSTRAINT `canBoHdcn_pk` FOREIGN KEY (`canBoHdcn_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangHdcb_pk` FOREIGN KEY (`donViChucNangHdcb_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `loaiHopDongHdcb_pk` FOREIGN KEY (`loaiHopDongHdcb_pk`) REFERENCES `loaihopdong` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `kekhaitaisan`
--
ALTER TABLE `kekhaitaisan`
  ADD CONSTRAINT `canBoKkts_pk` FOREIGN KEY (`canBoKkts_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangKkts_pk` FOREIGN KEY (`donViChucNangKkts_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ngachcongchuc_bacluong`
--
ALTER TABLE `ngachcongchuc_bacluong`
  ADD CONSTRAINT `FK_ngachcongchuc_bacluong_bacluong` FOREIGN KEY (`bacLuong_pk`) REFERENCES `bacluong` (`pk`),
  ADD CONSTRAINT `FK_ngachcongchuc_bacluong_ngachcongchuc` FOREIGN KEY (`ngachCongChuc_pk`) REFERENCES `ngachcongchuc` (`pk`);

--
-- Các ràng buộc cho bảng `quanhegiadinh`
--
ALTER TABLE `quanhegiadinh`
  ADD CONSTRAINT `canBoQhgd_pk` FOREIGN KEY (`canBoQhgd_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quatrinhcongtac`
--
ALTER TABLE `quatrinhcongtac`
  ADD CONSTRAINT `canBoQtct_pk` FOREIGN KEY (`canBoQtct_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangQtct_pk` FOREIGN KEY (`donViChucNangQtct_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quatrinhdaotao`
--
ALTER TABLE `quatrinhdaotao`
  ADD CONSTRAINT `canBoQtdt_pk` FOREIGN KEY (`canBoQtdt_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangQtdt_pk` FOREIGN KEY (`donViChucNangQtdt_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quatrinhluong`
--
ALTER TABLE `quatrinhluong`
  ADD CONSTRAINT `bacLuongL_pk` FOREIGN KEY (`bacLuongL_pk`) REFERENCES `bacluong` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `canBoL_pk` FOREIGN KEY (`canBoL_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangL_pk` FOREIGN KEY (`donViChucNangL_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ngachCongChucL_pk` FOREIGN KEY (`ngachCongChucL_pk`) REFERENCES `ngachcongchuc` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quyetdinh`
--
ALTER TABLE `quyetdinh`
  ADD CONSTRAINT `canBoQd_pk` FOREIGN KEY (`canBoQd_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangQd_pk` FOREIGN KEY (`donViChucNangQd_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `loaiQuyetDinhQd_pk` FOREIGN KEY (`loaiQuyetDinhQd_pk`) REFERENCES `loaiquyetdinh` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quyetdinhkhenthuong`
--
ALTER TABLE `quyetdinhkhenthuong`
  ADD CONSTRAINT `canBoQdkt_pk` FOREIGN KEY (`canBoQdkt_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangQdkt_pk` FOREIGN KEY (`donViChucNangQdkt_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quyetdinhkyluat`
--
ALTER TABLE `quyetdinhkyluat`
  ADD CONSTRAINT `canBoQdkl_pk` FOREIGN KEY (`canBoQdkl_pk`) REFERENCES `canbo` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donViChucNangQdkl_pk` FOREIGN KEY (`donViChucNangQdkl_pk`) REFERENCES `donvichucnang` (`pk`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
