USE [master]
GO
/****** Object:  Database [QuanLyDonHang0005]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE DATABASE [QuanLyDonHang0005]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyDonHang0005', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DKHOA03\MSSQL\DATA\QuanLyDonHang0005.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyDonHang0005_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DKHOA03\MSSQL\DATA\QuanLyDonHang0005_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyDonHang0005] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyDonHang0005].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyDonHang0005] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyDonHang0005] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyDonHang0005] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyDonHang0005] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyDonHang0005] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyDonHang0005] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyDonHang0005] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyDonHang0005] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyDonHang0005] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyDonHang0005] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyDonHang0005] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyDonHang0005] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyDonHang0005', N'ON'
GO
ALTER DATABASE [QuanLyDonHang0005] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$DKHOA03]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$DKHOA03] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLAgent$DKHOA03]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT SERVICE\SQLAgent$DKHOA03] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$DKHOA03]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT Service\MSSQL$DKHOA03] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Kho]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [Kho] WITH PASSWORD=N'LPd6cTwPPBmYPbyObQ+ZisOnSL8/6VeLlCKXDd97QXg=', DEFAULT_DATABASE=[QuanLyDonHang0005], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Kho] ENABLE
GO
/****** Object:  Login [DESKTOP-BSIOOIV\ADMIN]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [DESKTOP-BSIOOIV\ADMIN] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [789]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [789] WITH PASSWORD=N'3ZlElRlV5Opqq3kIeimT0PBsYWIvIT95GThOy+NVTXw=', DEFAULT_DATABASE=[QuanLyDonHang0005], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [789] ENABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'sEgVfqnW+SPB4TJlKNEhQ63J3moEUezZqqFQaoOX+H8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'Xg9kuqIr1uVjjmL9h91WJSH+fvSrVmMSUd96Tn+sjFI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [          ]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE LOGIN [          ] WITH PASSWORD=N'6Z09tfdF9k5WNm7Gi/S3PP+rm0omnbj5cW648f4uUJs=', DEFAULT_DATABASE=[QuanLyDonHang0005], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [          ] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[QuanLyDonHang0005] TO [DESKTOP-BSIOOIV\ADMIN]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLAgent$DKHOA03]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$DKHOA03]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-BSIOOIV\ADMIN]
GO
USE [QuanLyDonHang0005]
GO
/****** Object:  User [Kho]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE USER [Kho] FOR LOGIN [Kho] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [789]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE USER [789] FOR LOGIN [789] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Staff]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE ROLE [Staff]
GO
/****** Object:  DatabaseRole [KH]    Script Date: 4/28/2024 9:46:50 PM ******/
CREATE ROLE [KH]
GO
ALTER AUTHORIZATION ON ROLE::[Staff] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[KH] TO [dbo]
GO
ALTER ROLE [Staff] ADD MEMBER [Kho]
GO
ALTER ROLE [Staff] ADD MEMBER [789]
GO
GRANT CONNECT TO [789] AS [dbo]
GO
GRANT EXECUTE TO [KH] AS [dbo]
GO
GRANT SELECT TO [KH] AS [dbo]
GO
GRANT CONNECT TO [Kho] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT EXECUTE TO [Staff] AS [dbo]
GO
GRANT SELECT TO [Staff] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[checkLogin]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[checkLogin] (@username NVARCHAR(MAX), @password NVARCHAR(MAX))
RETURNS BIT
AS
BEGIN
 DECLARE @result BIT;
 SELECT @result = CAST(COUNT(*) AS BIT)
 FROM DANGNHAP
 WHERE TenDangNhap = @username AND MatKhau = @password;
 RETURN @result;
END;

GO
ALTER AUTHORIZATION ON [dbo].[checkLogin] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[func_tinhDoanhThuNam]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[func_tinhDoanhThuNam] (@nam datetime)
RETURNS float
BEGIN
 DECLARE @doanhThu float = 0;
 SELECT @doanhthu = COALESCE(SUM(TongTien), 0)
 FROM HoaDon
 WHERE YEAR(ThoiGianTT) = @nam;
 RETURN @doanhThu;
END;
GO
ALTER AUTHORIZATION ON [dbo].[func_tinhDoanhThuNam] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[func_tinhDoanhThuNgay]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[func_tinhDoanhThuNgay] (@ngay datetime, @thang datetime, @nam datetime)
RETURNS FLOAT
AS
BEGIN
 DECLARE @doanhThu FLOAT = 0;
 SELECT @doanhThu = COALESCE(SUM(TongTien), 0)
 FROM HoaDon
 WHERE DAY(ThoiGianTT) = @ngay AND MONTH(ThoiGianTT) = @thang AND
YEAR(ThoiGianTT) = @nam;
 RETURN @doanhThu;
END;
GO
ALTER AUTHORIZATION ON [dbo].[func_tinhDoanhThuNgay] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[func_tinhDoanhThuThang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[func_tinhDoanhThuThang] (@thang datetime, @nam datetime)
RETURNS float
BEGIN
 DECLARE @doanhThu float = 0;
 SELECT @doanhthu = COALESCE(SUM(TongTien), 0)
 FROM HoaDon
 WHERE MONTH(ThoiGianTT) = @thang AND YEAR(ThoiGianTT) = @nam;
 RETURN @doanhThu;
END;
GO
ALTER AUTHORIZATION ON [dbo].[func_tinhDoanhThuThang] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[TimTenKHTheoSDT]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTenKHTheoSDT](@SDT char(10))
RETURNS nvarchar(100)
AS
BEGIN
DECLARE @TenKH nvarchar(100);
SELECT @TenKH = TenKH FROM KhachHang WHERE SDT_KH = @SDT;
RETURN @TenKH;
END

--thêm khách hàng mới 
GO
ALTER AUTHORIZATION ON [dbo].[TimTenKHTheoSDT] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[TimTenKHTheoSDT] TO [Staff] AS [dbo]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMon] [int] NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[MoTa] [nvarchar](255) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[MonAn] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[MonAn] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[MonAn] TO [KH] AS [dbo]
GO
/****** Object:  View [dbo].[V_DanhSachMonAn]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DanhSachMonAn] AS
SELECT MaMON, TenMon, Gia, DonViTinh
FROM dbo.MonAn
GO
ALTER AUTHORIZATION ON [dbo].[V_DanhSachMonAn] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] NOT NULL,
	[TGDatDonHang] [datetime] NOT NULL,
	[TrangThaiDonHang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[DonHang] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[DonHang] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[DonHang] TO [KH] AS [dbo]
GO
GRANT INSERT ON [dbo].[DonHang] TO [Staff] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[DonHang] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[DonHang] TO [Staff] AS [dbo]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[MaDH] [int] NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[HinhThucTT] [nvarchar](50) NOT NULL,
	[ThoiGianTT] [datetime] NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[HoaDon] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[HoaDon] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[HoaDon] TO [Staff] AS [dbo]
GO
/****** Object:  View [dbo].[V_SoLuongMonAnDaBanTrongNgay]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--view xem so luong don hang da ban trong ngay
CREATE VIEW [dbo].[V_SoLuongMonAnDaBanTrongNgay] AS
SELECT ma.MaMon, SUM(hd.MaHD) AS SoLuongDaBan 
FROM dbo.MonAn ma
JOIN dbo.HoaDon hd ON ma.MaMon = hd.MaHD
join dbo.DonHang dh on dh.MaDH = hd.MaHD
WHERE dh.TGDatDonHang = CONVERT(DATE, GETDATE())
GROUP BY ma.MaMon
GO
ALTER AUTHORIZATION ON [dbo].[V_SoLuongMonAnDaBanTrongNgay] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[NhanVienGiaoHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienGiaoHang](
	[MaNV] [int] NOT NULL,
	[MaHD] [int] NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[SDT_NV] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[NhanVienGiaoHang] TO  SCHEMA OWNER 
GO
GRANT INSERT ON [dbo].[NhanVienGiaoHang] TO [Staff] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[NhanVienGiaoHang] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[NhanVienGiaoHang] TO [Staff] AS [dbo]
GO
/****** Object:  View [dbo].[V_ThongTinNhanVien]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--view xem thong tin nhan vien giao hang
CREATE VIEW [dbo].[V_ThongTinNhanVien] AS
SELECT nv.MaNV, nv.TenNV, nv.SDT_NV
FROM dbo.NhanVienGiaoHang nv 
GO
ALTER AUTHORIZATION ON [dbo].[V_ThongTinNhanVien] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[V_GiaoDonHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--view xem don hang chua giao
CREATE VIEW [dbo].[V_GiaoDonHang] AS
SELECT *
FROM dbo.DonHang dh
WHERE TrangThaiDonHang = N'Đang giao'
GO
ALTER AUTHORIZATION ON [dbo].[V_GiaoDonHang] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[SearchHoaDonByMaHD]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SearchHoaDonByMaHD](@MaHD INT)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM HoaDon WHERE MaHD = @MaHD
)
GO
ALTER AUTHORIZATION ON [dbo].[SearchHoaDonByMaHD] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_DanhMucMonAn]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucMonAn] AS
SELECT * 
FROM MonAn

-- Danh mục đơn hàng
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucMonAn] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_DanhMucDonHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucDonHang] AS
SELECT * 
FROM DonHang;

-- Danh mục hóa đơn
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucDonHang] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_DanhMucHoaDon]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucHoaDon] AS
SELECT *
FROM HoaDon;

-- Danh mục nhân viên giao hàng
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucHoaDon] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_DanhMucNhanVienGiaoHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucNhanVienGiaoHang] AS
SELECT * 
FROM NhanVienGiaoHang;

-- Danh mục khách hàng 
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucNhanVienGiaoHang] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[DiaChiKH] [nvarchar](255) NOT NULL,
	[SDT_KH] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[KhachHang] TO  SCHEMA OWNER 
GO
GRANT INSERT ON [dbo].[KhachHang] TO [Staff] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[KhachHang] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[KhachHang] TO [Staff] AS [dbo]
GO
/****** Object:  View [dbo].[v_DanhMucKhachHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucKhachHang] AS
SELECT *
FROM KhachHang;
-- Danh mục đặt món 
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucKhachHang] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[DatMon]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatMon](
	[MaKH] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[DatMon] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[DatMon] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[DatMon] TO [KH] AS [dbo]
GO
/****** Object:  View [dbo].[v_DanhMucDatMon]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucDatMon] AS
SELECT *
FROM DatMon;
-- Danh mục lập đơn hàng
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucDatMon] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[LapDonHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LapDonHang](
	[MaMon] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[LapDonHang] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[LapDonHang] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[LapDonHang] TO [KH] AS [dbo]
GO
/****** Object:  View [dbo].[v_DanhMucLapDonHang]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucLapDonHang] AS
SELECT *
FROM LapDonHang;
-- Danh mục khách hàng thanh toán 
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucLapDonHang] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[KH_ThanhToan]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KH_ThanhToan](
	[MaHD] [int] NOT NULL,
	[MaKH] [int] NULL,
	[PhiVanChuyen] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[KH_ThanhToan] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[KH_ThanhToan] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[KH_ThanhToan] TO [KH] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[KH_ThanhToan] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[KH_ThanhToan] TO [Staff] AS [dbo]
GO
/****** Object:  View [dbo].[v_DanhMucKH_ThanhToan]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucKH_ThanhToan] AS
SELECT *
FROM KH_ThanhToan;
-- Danh mục khách hàng đánh giá 
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucKH_ThanhToan] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[KH_DanhGia]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KH_DanhGia](
	[MaHD] [int] NOT NULL,
	[MaKH] [int] NULL,
	[SoSao] [int] NULL,
	[Nhanxet] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[KH_DanhGia] TO  SCHEMA OWNER 
GO
GRANT REFERENCES ON [dbo].[KH_DanhGia] TO [KH] AS [dbo]
GO
GRANT SELECT ON [dbo].[KH_DanhGia] TO [KH] AS [dbo]
GO
GRANT INSERT ON [dbo].[KH_DanhGia] TO [Staff] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[KH_DanhGia] TO [Staff] AS [dbo]
GO
GRANT SELECT ON [dbo].[KH_DanhGia] TO [Staff] AS [dbo]
GO
/****** Object:  View [dbo].[v_DanhMucKH_DanhGia]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DanhMucKH_DanhGia] AS
SELECT *
FROM KH_DanhGia;

--tìm kiếm khách hàng bằng sdt 
GO
ALTER AUTHORIZATION ON [dbo].[v_DanhMucKH_DanhGia] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 4/28/2024 9:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[MaNV] [int] NOT NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[DANGNHAP] TO  SCHEMA OWNER 
GO
INSERT [dbo].[DANGNHAP] ([MaNV], [TenDangNhap], [MatKhau]) VALUES (1, N'789', N'123')
INSERT [dbo].[DANGNHAP] ([MaNV], [TenDangNhap], [MatKhau]) VALUES (2, N'Kho', N'123')
GO
INSERT [dbo].[DatMon] ([MaKH], [MaMon]) VALUES (1, 1)
INSERT [dbo].[DatMon] ([MaKH], [MaMon]) VALUES (2, 2)
INSERT [dbo].[DatMon] ([MaKH], [MaMon]) VALUES (3, 3)
INSERT [dbo].[DatMon] ([MaKH], [MaMon]) VALUES (4, 4)
INSERT [dbo].[DatMon] ([MaKH], [MaMon]) VALUES (5, 5)
GO
INSERT [dbo].[DonHang] ([MaDH], [TGDatDonHang], [TrangThaiDonHang]) VALUES (1, CAST(N'2024-04-18T20:00:00.000' AS DateTime), N'Đang chuẩn bị')
INSERT [dbo].[DonHang] ([MaDH], [TGDatDonHang], [TrangThaiDonHang]) VALUES (2, CAST(N'2024-04-18T20:05:00.000' AS DateTime), N'Đang giao')
INSERT [dbo].[DonHang] ([MaDH], [TGDatDonHang], [TrangThaiDonHang]) VALUES (3, CAST(N'2024-04-18T20:10:00.000' AS DateTime), N'Đã giao')
INSERT [dbo].[DonHang] ([MaDH], [TGDatDonHang], [TrangThaiDonHang]) VALUES (4, CAST(N'2024-04-18T20:15:00.000' AS DateTime), N'Đang chuẩn bị')
INSERT [dbo].[DonHang] ([MaDH], [TGDatDonHang], [TrangThaiDonHang]) VALUES (5, CAST(N'2024-04-18T20:20:00.000' AS DateTime), N'Đã giao')
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TinhTrang], [HinhThucTT], [ThoiGianTT], [TongTien]) VALUES (1, 1, N'Chưa thanh toán', N'Tiền mặt', NULL, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TinhTrang], [HinhThucTT], [ThoiGianTT], [TongTien]) VALUES (2, 2, N'Đã thanh toán', N'Chuyển khoản', CAST(N'2024-04-18T20:30:00.000' AS DateTime), CAST(35000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TinhTrang], [HinhThucTT], [ThoiGianTT], [TongTien]) VALUES (3, 3, N'Chưa thanh toán', N'Tiền mặt', NULL, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TinhTrang], [HinhThucTT], [ThoiGianTT], [TongTien]) VALUES (4, 4, N'Đã thanh toán', N'Chuyển khoản', CAST(N'2024-04-18T20:45:00.000' AS DateTime), CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TinhTrang], [HinhThucTT], [ThoiGianTT], [TongTien]) VALUES (5, 5, N'Chưa thanh toán', N'Tiền mặt', NULL, CAST(100000 AS Decimal(18, 0)))
GO
INSERT [dbo].[KH_DanhGia] ([MaHD], [MaKH], [SoSao], [Nhanxet]) VALUES (1, 1, 5, N'Rất ngon, sẽ ủng hộ dài dài')
INSERT [dbo].[KH_DanhGia] ([MaHD], [MaKH], [SoSao], [Nhanxet]) VALUES (2, 2, 4, N'Ngon, nhưng hơi chậm')
INSERT [dbo].[KH_DanhGia] ([MaHD], [MaKH], [SoSao], [Nhanxet]) VALUES (3, 3, 5, N'Tuyệt vời, rất hài lòng')
INSERT [dbo].[KH_DanhGia] ([MaHD], [MaKH], [SoSao], [Nhanxet]) VALUES (4, 4, 3, N'Hơi mắc so với chất lượng')
INSERT [dbo].[KH_DanhGia] ([MaHD], [MaKH], [SoSao], [Nhanxet]) VALUES (5, 5, 4, N'Ngon, sẽ quay lại')
GO
INSERT [dbo].[KH_ThanhToan] ([MaHD], [MaKH], [PhiVanChuyen]) VALUES (1, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[KH_ThanhToan] ([MaHD], [MaKH], [PhiVanChuyen]) VALUES (2, 2, CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[KH_ThanhToan] ([MaHD], [MaKH], [PhiVanChuyen]) VALUES (3, 3, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[KH_ThanhToan] ([MaHD], [MaKH], [PhiVanChuyen]) VALUES (4, 4, CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[KH_ThanhToan] ([MaHD], [MaKH], [PhiVanChuyen]) VALUES (5, 5, CAST(30000 AS Decimal(18, 0)))
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (1, N'Nguyễn Văn A', N'123 Đường Lê Lợi, Quận 1, TP.HCM', N'0123456789')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (2, N'Trần Văn B', N'456 Đường Trường Trinh, Quận 2, TP.HCM', N'0987654321')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (3, N'Lê Thị C', N'789 Đường Võ Thị Sáu, Quận 3, TP.HCM', N'1234567890')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (4, N'Phạm Quang D', N'321 Đường Nguyễn Xí, Quận 4, TP.HCM', N'9876543210')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (5, N'Hoàng Minh E', N'654 Đường Lê Duẩn, Quận 5, TP.HCM', N'1029384756')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (6, N'Đặng Văn F', N'987 Đường Lý Thường Kiệt, Quận 6, TP.HCM', N'5678901234')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (7, N'Vũ Thị G', N'234 Đường Trần Hưng Đạo, Quận 7, TP.HCM', N'4567890123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (8, N'Nguyễn Minh H', N'891 Đường Cách Mạng Tháng Tám, Quận 8, TP.HCM', N'3456789012')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (9, N'Trần Quang I', N'567 Đường Nguyễn Trãi, Quận 9, TP.HCM', N'2345678901')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SDT_KH]) VALUES (10, N'Lê Văn J', N'890 Đường Lê Hồng Phong, Quận 10, TP.HCM', N'1234517890')
GO
INSERT [dbo].[LapDonHang] ([MaMon], [MaDH], [SoLuong]) VALUES (1, 1, 2)
INSERT [dbo].[LapDonHang] ([MaMon], [MaDH], [SoLuong]) VALUES (2, 2, 1)
INSERT [dbo].[LapDonHang] ([MaMon], [MaDH], [SoLuong]) VALUES (3, 3, 3)
INSERT [dbo].[LapDonHang] ([MaMon], [MaDH], [SoLuong]) VALUES (4, 4, 1)
INSERT [dbo].[LapDonHang] ([MaMon], [MaDH], [SoLuong]) VALUES (5, 5, 2)
GO
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (1, N'Mì xào', CAST(50000 AS Decimal(18, 0)), N'Mì xào giòn, thơm ngon', N'Đĩa')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (2, N'Phở bò', CAST(35000 AS Decimal(18, 0)), N'Phở bò tái, nóng hổi', N'Tô')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (3, N'Bún chả', CAST(40000 AS Decimal(18, 0)), N'Bún chả Hà Nội, thơm ngon', N'Phần')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (4, N'Bánh mì', CAST(15000 AS Decimal(18, 0)), N'Bánh mì thịt, ngon miệng', N'Cái')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (5, N'Cơm tấm', CAST(50000 AS Decimal(18, 0)), N'Cơm tấm sườn, ngon tuyệt', N'Phần')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (6, N'Bún bò', CAST(45000 AS Decimal(18, 0)), N'Bún bò Huế, thơm ngon', N'Phần')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (7, N'Bánh cuốn', CAST(20000 AS Decimal(18, 0)), N'Bánh cuốn nóng hổi, ngon miệng', N'Phần')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (8, N'Chả giò', CAST(15000 AS Decimal(18, 0)), N'Chả giò giòn rụm, thơm ngon', N'Cái')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (9, N'Gỏi cuốn', CAST(10000 AS Decimal(18, 0)), N'Gỏi cuốn tươi mát', N'Cái')
INSERT [dbo].[MonAn] ([MaMon], [TenMon], [Gia], [MoTa], [DonViTinh]) VALUES (10, N'Phở gà', CAST(35000 AS Decimal(18, 0)), N'Phở gà nóng hổi, thơm ngon', N'Tô')
GO
INSERT [dbo].[NhanVienGiaoHang] ([MaNV], [MaHD], [TenNV], [SDT_NV]) VALUES (1, 1, N'Nguyễn Văn X', N'0123456789')
INSERT [dbo].[NhanVienGiaoHang] ([MaNV], [MaHD], [TenNV], [SDT_NV]) VALUES (2, 2, N'Trần Văn Y', N'0987654321')
INSERT [dbo].[NhanVienGiaoHang] ([MaNV], [MaHD], [TenNV], [SDT_NV]) VALUES (3, 3, N'Lê Thị Z', N'1234567890')
INSERT [dbo].[NhanVienGiaoHang] ([MaNV], [MaHD], [TenNV], [SDT_NV]) VALUES (4, 4, N'Phạm Quang W', N'9876543210')
INSERT [dbo].[NhanVienGiaoHang] ([MaNV], [MaHD], [TenNV], [SDT_NV]) VALUES (5, 5, N'Hoàng Minh V', N'1029384756')
GO
ALTER TABLE [dbo].[DatMon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatMon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonAn] ([MaMon])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[KH_DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KH_ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[LapDonHang]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonAn] ([MaMon])
GO
ALTER TABLE [dbo].[LapDonHang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[NhanVienGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([TongTien]>(0)))
GO
ALTER TABLE [dbo].[KH_ThanhToan]  WITH CHECK ADD CHECK  (([PhiVanChuyen]>=(0)))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  ((len([SDT_KH])=(10)))
GO
ALTER TABLE [dbo].[LapDonHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[NhanVienGiaoHang]  WITH CHECK ADD CHECK  ((len([SDT_NV])=(10)))
GO
/****** Object:  StoredProcedure [dbo].[CapNhatPhiHoaDonThanhToan]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 8.2. Cập nhật phí vận chuyển 
CREATE PROCEDURE [dbo].[CapNhatPhiHoaDonThanhToan]
    @MaHD INT,
	@MaKH INT,
    @PhiVanChuyen DECIMAL
AS
BEGIN
	BEGIN TRY
    UPDATE KH_ThanhToan
    SET PhiVanChuyen = @PhiVanChuyen
    WHERE MaHD = @MaHD AND MaKH = @MaKH
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi rồi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[CapNhatPhiHoaDonThanhToan] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[CapNhatPhiHoaDonThanhToan] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ChonHinhThucThanhToan]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 6.2. Chọn hình thức thanh toán 
CREATE PROCEDURE [dbo].[ChonHinhThucThanhToan]
    @MaHD INT,
    @HinhThucTT NVARCHAR(50)
AS
BEGIN
    UPDATE HoaDon
    SET HinhThucTT = @HinhThucTT
    WHERE MaHD = @MaHD
END
GO
ALTER AUTHORIZATION ON [dbo].[ChonHinhThucThanhToan] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ChonHinhThucThanhToan] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[proc_AddHoaDon]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--xuất hóa đơn 
CREATE PROCEDURE [dbo].[proc_AddHoaDon] 
    @MaHD int, 
    @MaDH int,
    @TinhTrang nvarchar(50), 
    @HinhThucTT nvarchar(50), 
    @ThoiGianTT  datetime,
    @TongTien decimal (18)
AS 
BEGIN 
    INSERT INTO HoaDon (MaHD, MaDH, TinhTrang, HinhThucTT, ThoiGianTT, TongTien) 
    VALUES (@MaHD, @MaDH, @TinhTrang, @HinhThucTT, @ThoiGianTT, @TongTien); 
END;
GO
ALTER AUTHORIZATION ON [dbo].[proc_AddHoaDon] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[proc_AddHoaDon] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteDeliveryEmployee]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DeleteDeliveryEmployee]
 @MaNV nchar(10)
AS
BEGIN
 SET NOCOUNT ON;
 DECLARE @username varchar(15);
SELECT @username= TenDangNhap FROM DANGNHAP WHERE MaNV=@maNV
DECLARE @sql varchar(100)
DECLARE @SessionID INT;
SELECT @SessionID = session_id
FROM sys.dm_exec_sessions
WHERE login_name = @username;
IF @SessionID IS NOT NULL
BEGIN
SET @sql = 'kill ' + Convert(NVARCHAR(20), @SessionID)
exec(@sql)
END
 BEGIN TRANSACTION;
 BEGIN TRY
 DELETE FROM NhanVienGiaoHang WHERE MaNV = @MaNV;
--
SET @sql = 'DROP USER '+ @username
exec (@sql)
--
SET @sql = 'DROP LOGIN '+ @username
exec (@sql)
--
DELETE FROM DANGNHAP WHERE maNV=@maNV;
END TRY
BEGIN CATCH
DECLARE @err NVARCHAR(MAX)
SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
RAISERROR(@err, 16, 1)
ROLLBACK TRANSACTION;
THROW;
END CATCH
 COMMIT TRANSACTION;
END;


GO
ALTER AUTHORIZATION ON [dbo].[proc_DeleteDeliveryEmployee] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemTaiKhoan]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_ThemTaiKhoan]@manv nchar(10) , @tk NCHAR(10), @mk NCHAR(10)
As
BEGIN
INSERT INTO DANGNHAP VALUES (@manv,@tk, @mk)
END;

GO
ALTER AUTHORIZATION ON [dbo].[proc_ThemTaiKhoan] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[SuaSoLuongMonAnTrongDonHang]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 6.1. Sửa số lượng món ăn trong đơn hàng
CREATE PROCEDURE [dbo].[SuaSoLuongMonAnTrongDonHang]
    @MaDH INT,
    @MaMon INT,
    @SoLuong INT
AS

BEGIN
	BEGIN TRY
    UPDATE LapDonHang
    SET SoLuong = @SoLuong
    WHERE MaDH = @MaDH AND MaMon = @MaMon
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[SuaSoLuongMonAnTrongDonHang] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SuaSoLuongMonAnTrongDonHang] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ThemDanhGia]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 7.1. Thêm đánh giá, bình luận
CREATE PROCEDURE [dbo].[ThemDanhGia]
    @MaHD INT,
    @MaKH INT,
    @SoSao INT,
    @Nhanxet NVARCHAR(255)
AS
BEGIN
	BEGIN TRY
    INSERT INTO KH_DanhGia(MaHD, MaKH, SoSao, Nhanxet)
    VALUES (@MaHD, @MaKH, @SoSao, @Nhanxet)
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[ThemDanhGia] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ThemDanhGia] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ThemDatMon]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--dat mon an
CREATE PROCEDURE [dbo].[ThemDatMon]
    @MaKH INT,
    @MaMon INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO DatMon(MaKH, MaMon)
        VALUES (@MaKH, @MaMon)
    END TRY
    BEGIN CATCH
        DECLARE @err NVARCHAR(MAX)
        SELECT @err = N'Lỗi rồi ' + ERROR_MESSAGE()
        RAISERROR(@err, 16, 1)
    END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[ThemDatMon] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ThemDatMon] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonThanhToan]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 8.1. Thêm món ăn vào hóa đơn thanh toán 
CREATE PROCEDURE [dbo].[ThemHoaDonThanhToan]
    @MaHD INT,
    @MaKH INT,
    @PhiVanChuyen DECIMAL
AS
BEGIN
	BEGIN TRY
    INSERT INTO KH_ThanhToan(MaHD, MaKH, PhiVanChuyen)
    VALUES (@MaHD, @MaKH, @PhiVanChuyen)
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi rồi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[ThemHoaDonThanhToan] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ThemHoaDonThanhToan] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ThemKhachHang]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemKhachHang]
@MaKH INT,
@TenKH NVARCHAR(100),
@DiaChiKH NVARCHAR(255),
@SDT_KH CHAR(10)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM KhachHang WHERE SDT_KH = @SDT_KH)
    BEGIN
        RAISERROR('SDT_KH đã tồn tại', 16, 1);
        RETURN;
    END
    INSERT INTO KhachHang (MaKH, TenKH, DiaChiKH, SDT_KH) VALUES (@MaKH, @TenKH, @DiaChiKH, @SDT_KH);
END


--trigger khi thêm khách hàng mới 
GO
ALTER AUTHORIZATION ON [dbo].[ThemKhachHang] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ThemKhachHang] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[ThemMonAnVaoDonHang]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- 6.1. Thêm món ăn vào đơn hàng
CREATE PROCEDURE [dbo].[ThemMonAnVaoDonHang]
    @MaDH INT,
    @MaMon INT,
    @SoLuong INT
AS
BEGIN
	BEGIN TRY
    INSERT INTO LapDonHang(MaMon, MaDH, SoLuong)
    VALUES (@MaMon, @MaDH, @SoLuong)
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[ThemMonAnVaoDonHang] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[ThemMonAnVaoDonHang] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDonHangStatus]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDonHangStatus]
    @MaDH INT,
    @TrangThai NVARCHAR(50)
AS
BEGIN
    UPDATE DonHang 
    SET TrangThaiDonHang = @TrangThai 
    WHERE MaDH = @MaDH
END


--tìm kiếm hóa đơn
GO
ALTER AUTHORIZATION ON [dbo].[UpdateDonHangStatus] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[UpdateDonHangStatus] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[XoaDanhGia]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 7.1. Xóa đánh giá, bình luận
CREATE PROCEDURE [dbo].[XoaDanhGia]
    @MaHD INT
AS
BEGIN
	BEGIN TRY
    DELETE FROM KH_DanhGia
    WHERE MaHD = @MaHD
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[XoaDanhGia] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[XoaDanhGia] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[XoaDatMon]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--xoa dat mon
CREATE PROCEDURE [dbo].[XoaDatMon]
    @MaKH INT,
    @MaMon INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM DatMon
        WHERE MaKH = @MaKH AND MaMon = @MaMon
    END TRY
    BEGIN CATCH
        DECLARE @err NVARCHAR(MAX)
        SELECT @err = N'Lỗi rồi ' + ERROR_MESSAGE()
        RAISERROR(@err, 16, 1)
    END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[XoaDatMon] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[XoaDatMon] TO [KH] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonThanhToan]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--8.3. Xóa hóa đơn thanh toán 
CREATE PROCEDURE [dbo].[XoaHoaDonThanhToan]
    @MaHD INT,
	@MaKH INT
AS
BEGIN
	BEGIN TRY
    DELETE FROM KH_ThanhToan
    WHERE MaHD = @MaHD  AND MaKH = @MaKH
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi rồi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[XoaHoaDonThanhToan] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[XoaHoaDonThanhToan] TO [Staff] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[XoaMonAnKhoiDonHang]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 6.1. Xóa món ăn khỏi đơn hàng
CREATE PROCEDURE [dbo].[XoaMonAnKhoiDonHang]
    @MaDH INT,
    @MaMon INT
AS
BEGIN
	BEGIN TRY
    DELETE FROM LapDonHang
    WHERE MaDH = @MaDH AND MaMon = @MaMon
	END TRY
	BEGIN CATCH
	DECLARE @err NVARCHAR(MAX)
	SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
	RAISERROR(@err, 16, 1)
	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[XoaMonAnKhoiDonHang] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[XoaMonAnKhoiDonHang] TO [KH] AS [dbo]
GO
/****** Object:  Trigger [dbo].[Trigger_CreateSQLAccount]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Trigger_CreateSQLAccount] ON [dbo].[DANGNHAP]
AFTER INSERT
AS
DECLARE @userName NVARCHAR(30), @passWord NVARCHAR(10), @manv INT
SELECT @userName = nvg.TenDangNhap, @passWord = nvg.MatKhau, @manv = nvg.MaNV
FROM inserted nvg
BEGIN
    DECLARE @sqlString NVARCHAR(2000)
    ----
    SET @sqlString = 'CREATE LOGIN ' + QUOTENAME(@userName) + ' WITH PASSWORD='''+ @passWord
    +''', DEFAULT_DATABASE=[QuanLyDonHang0005], CHECK_EXPIRATION=OFF,
    CHECK_POLICY=OFF'
    EXEC (@sqlString)
    ----
    SET @sqlString = 'CREATE USER ' + QUOTENAME(@userName) + ' FOR LOGIN ' + QUOTENAME(@userName)
    EXEC (@sqlString)
    ----
    SET @sqlString = 'ALTER ROLE Staff ADD MEMBER ' + QUOTENAME(@userName)
    EXEC (@sqlString)
END;


--
GO
ALTER TABLE [dbo].[DANGNHAP] ENABLE TRIGGER [Trigger_CreateSQLAccount]
GO
/****** Object:  Trigger [dbo].[TG_TrungSDT]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TG_TrungSDT] 
ON [dbo].[KhachHang]
AFTER INSERT, UPDATE
AS
BEGIN
 -- Kiểm tra số điện thoại vừa thêm có bị trùng lặp
 IF EXISTS (
 SELECT *
 FROM inserted i
 WHERE EXISTS (
 SELECT *
 FROM dbo.KhachHang kh
 WHERE kh.SDT_KH = i.SDT_KH AND kh.MaKH <> i.MaKH
 )
 )
 BEGIn
 PRINT N'Số điện thoại đã tồn tại'
 ROLLBACK;
 END
END;
--trigger kiem tra trung lap so dien thoai cua nhan vien giao hang
GO
ALTER TABLE [dbo].[KhachHang] ENABLE TRIGGER [TG_TrungSDT]
GO
/****** Object:  Trigger [dbo].[trg_ThemKhachHang]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ThemKhachHang]
ON [dbo].[KhachHang]
FOR INSERT, Update 
AS
BEGIN
    -- check MaKH
    IF EXISTS (SELECT * FROM inserted WHERE MaKH IS NULL)
    BEGIN
        RAISERROR('Mã KH không được để trống', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    IF NOT EXISTS (SELECT * FROM KhachHang WHERE MaKH IN (SELECT MaKH FROM inserted))
    BEGIN
        RAISERROR('Mã KH đã tồn tại', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    -- check TenKH
    IF EXISTS (SELECT * FROM inserted WHERE TRIM(TenKH) = '')
    BEGIN
        RAISERROR('Tên KH không được để trống', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    -- check DiaChiKH
    IF EXISTS (SELECT * FROM inserted WHERE TRIM(DiaChiKH) = '')
    BEGIN
        RAISERROR('Địa chỉ KH không được để trống', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    -- check SDT_KH
    IF EXISTS (SELECT * FROM inserted WHERE TRIM(SDT_KH) = '')
    BEGIN
        RAISERROR('SDT_KH không được để trống', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    IF NOT EXISTS (SELECT * FROM KhachHang WHERE SDT_KH IN (SELECT SDT_KH FROM inserted))
    BEGIN
        RAISERROR('SDT_KH đã tồn tại', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
END;

--bao cao doanh thu ngay thang nam 
GO
ALTER TABLE [dbo].[KhachHang] ENABLE TRIGGER [trg_ThemKhachHang]
GO
/****** Object:  Trigger [dbo].[TG_TrungTenMonAn]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TG_TrungTenMonAn]
ON [dbo].[MonAn]
AFTER INSERT, UPDATE
AS
BEGIN
 -- Kiểm tra tên sản phẩm vừa thêm có bị trùng lặp
 IF EXISTS (
 SELECT *
 FROM inserted i
 WHERE EXISTS (
 SELECT *
 FROM dbo.MonAn ma
 WHERE ma.TenMon = i.TenMon AND ma.MaMon <> i.MaMon
 )
 )
 BEGIN
 -- Nếu trùng thì rollback
 RAISERROR ('Tên sản phẩm bị trùng', 16, 1)
 ROLLBACK;
 END
END;

GO
ALTER TABLE [dbo].[MonAn] ENABLE TRIGGER [TG_TrungTenMonAn]
GO
/****** Object:  Trigger [dbo].[TG_TrungSDTNVGH]    Script Date: 4/28/2024 9:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TG_TrungSDTNVGH]
ON [dbo].[NhanVienGiaoHang]
AFTER INSERT, UPDATE
AS
BEGIN
 -- Kiểm tra số điện thoại vừa thêm có bị trùng lặp
 IF EXISTS (
 SELECT *
 FROM inserted i
 WHERE EXISTS (
 SELECT *
 FROM dbo.NhanVienGiaoHang nvgh
 WHERE nvgh.SDT_NV = i.SDT_NV AND nvgh.MaNV <> i.MaNV
 )
 )
 BEGIn
 PRINT N'Số điện thoại đã tồn tại'
 ROLLBACK;
 END
END;
--trigger kiem tra ten san pham co bi trung khong
GO
ALTER TABLE [dbo].[NhanVienGiaoHang] ENABLE TRIGGER [TG_TrungSDTNVGH]
GO
USE [master]
GO
ALTER DATABASE [QuanLyDonHang0005] SET  READ_WRITE 
GO
