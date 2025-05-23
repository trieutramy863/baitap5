USE [master]
GO
/****** Object:  Database [QLNhaHang]    Script Date: 4/22/2025 10:16:04 AM ******/
CREATE DATABASE [QLNhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNhaHang', FILENAME = N'D:\He Quan tri CSDL\QLNhaHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNhaHang_log', FILENAME = N'D:\He Quan tri CSDL\QLNhaHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLNhaHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNhaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNhaHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLNhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNhaHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNhaHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNhaHang', N'ON'
GO
ALTER DATABASE [QLNhaHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLNhaHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLNhaHang]
GO
/****** Object:  Table [dbo].[BanAn]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanAn](
	[BanAn] [int] NOT NULL,
	[TenBAn] [nvarchar](250) NULL,
	[SoCho] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanAn] PRIMARY KEY CLUSTERED 
(
	[BanAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ChiTietHoaDon] [nvarchar](250) NOT NULL,
	[HoaDon] [nvarchar](250) NULL,
	[MonAn] [nvarchar](250) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[TenMonAn] [nvarchar](250) NULL,
	[GiamGia] [nvarchar](50) NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[ChiTiePhieuNhap] [nvarchar](250) NOT NULL,
	[PhieuNhap] [int] NULL,
	[NguyenLieu] [nvarchar](250) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ChiTiePhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatBan]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatBan](
	[DatBan] [nvarchar](250) NOT NULL,
	[NhanVien] [nvarchar](250) NULL,
	[KhachHang] [nvarchar](250) NULL,
	[BanAn] [int] NULL,
	[NgayDat] [date] NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
 CONSTRAINT [PK_DatBan] PRIMARY KEY CLUSTERED 
(
	[DatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDon] [nvarchar](250) NOT NULL,
	[NhanVien] [nvarchar](250) NULL,
	[NgayLap] [date] NULL,
	[KhachHang] [nvarchar](250) NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHang] [nvarchar](250) NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[LichLamViec] [date] NOT NULL,
	[NhanVien] [nvarchar](250) NULL,
	[NgaylamViec] [date] NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
 CONSTRAINT [PK_LichLamViec] PRIMARY KEY CLUSTERED 
(
	[LichLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[NguyenLieu] [nvarchar](20) NULL,
	[TenNguyenLieu] [nvarchar](100) NULL,
	[NgayHetHan] [date] NULL,
	[NgayGhiNhan] [datetime] NULL,
	[TrangThai] [nvarchar](20) NULL,
	[CanhBao] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MonAn] [nvarchar](250) NOT NULL,
	[TenMonAn] [nvarchar](250) NULL,
	[Gia] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_MonAn] PRIMARY KEY CLUSTERED 
(
	[MonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguyenLieu]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguyenLieu](
	[NguyenLieu] [nvarchar](250) NOT NULL,
	[TenNguyenLieu] [nvarchar](250) NULL,
	[SoLuong] [int] NULL,
	[HanSuDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_nguyenLieu] PRIMARY KEY CLUSTERED 
(
	[NguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCap] [nvarchar](250) NOT NULL,
	[TenNhaCungCap] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienTHoai] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[NhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVien] [nvarchar](250) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[ChucVu] [nvarchar](250) NULL,
	[Luong] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[PhieuNhap] [int] NOT NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[NhanVien] [nvarchar](250) NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[PhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanAn] ([BanAn], [TenBAn], [SoCho], [TrangThai]) VALUES (1, N'Ban2', 4, N'on')
INSERT [dbo].[BanAn] ([BanAn], [TenBAn], [SoCho], [TrangThai]) VALUES (2, N'Ban3', 5, N'tot')
GO
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon], [HoaDon], [MonAn], [SoLuong], [DonGia], [TenMonAn], [GiamGia], [ThanhTien]) VALUES (N'001', N'001', N'ga', 2, 250, N'GaHam', N'10%', 25000)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon], [HoaDon], [MonAn], [SoLuong], [DonGia], [TenMonAn], [GiamGia], [ThanhTien]) VALUES (N'002', N'002', N'tomhum', 3, 500, N'tomhum', N'20%', 50000)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([ChiTiePhieuNhap], [PhieuNhap], [NguyenLieu], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'001', 1, N'trung', 1, 500, 500)
INSERT [dbo].[ChiTietPhieuNhap] ([ChiTiePhieuNhap], [PhieuNhap], [NguyenLieu], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'002', 2, N'phomai', 2, 600, 600)
GO
INSERT [dbo].[DatBan] ([DatBan], [NhanVien], [KhachHang], [BanAn], [NgayDat], [GioBatDau], [GioKetThuc]) VALUES (N'1', N'Nam', N'001', 1, CAST(N'2025-04-22' AS Date), CAST(N'10:23:00' AS Time), CAST(N'11:13:00' AS Time))
INSERT [dbo].[DatBan] ([DatBan], [NhanVien], [KhachHang], [BanAn], [NgayDat], [GioBatDau], [GioKetThuc]) VALUES (N'2', N'nu', N'002', 2, CAST(N'2025-10-12' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:00:00' AS Time))
GO
INSERT [dbo].[HoaDon] ([HoaDon], [NhanVien], [NgayLap], [KhachHang], [TongTien]) VALUES (N'001', N'Nam', CAST(N'2025-04-22' AS Date), N'001', 2500)
INSERT [dbo].[HoaDon] ([HoaDon], [NhanVien], [NgayLap], [KhachHang], [TongTien]) VALUES (N'002', N'nu', CAST(N'2025-02-19' AS Date), N'002', 300)
GO
INSERT [dbo].[KhachHang] ([KhachHang], [HoTen], [GioiTinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'001', N'NguyenVanA', N'Nam', N'093218845', N'nguyenvanA@email.com', N'PhanDinhPhung')
INSERT [dbo].[KhachHang] ([KhachHang], [HoTen], [GioiTinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'002', N'NguyenThiC', N'Nu', N'0988576464', N'nguyenthiC@email.com', N'LuongNgocquyen')
GO
INSERT [dbo].[LichLamViec] ([LichLamViec], [NhanVien], [NgaylamViec], [GioBatDau], [GioKetThuc]) VALUES (CAST(N'2025-03-12' AS Date), N'Nu', CAST(N'2025-01-12' AS Date), CAST(N'19:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[LichLamViec] ([LichLamViec], [NhanVien], [NgaylamViec], [GioBatDau], [GioKetThuc]) VALUES (CAST(N'2025-04-22' AS Date), N'Nam', CAST(N'2025-03-12' AS Date), CAST(N'13:30:00' AS Time), CAST(N'19:30:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([LogID], [NguyenLieu], [TenNguyenLieu], [NgayHetHan], [NgayGhiNhan], [TrangThai], [CanhBao], [SoLuong]) VALUES (1, N'phomai', N'sua', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-22T10:09:42.627' AS DateTime), N'Hết hạn', N'❗ Nguyên liệu đã hết hạn – ghi nhận vào log', 2)
INSERT [dbo].[Log] ([LogID], [NguyenLieu], [TenNguyenLieu], [NgayHetHan], [NgayGhiNhan], [TrangThai], [CanhBao], [SoLuong]) VALUES (2, N'trung', N'sua', CAST(N'2025-04-22' AS Date), CAST(N'2025-04-22T10:09:42.627' AS DateTime), N'Hết hạn', N'❗ Nguyên liệu đã hết hạn – ghi nhận vào log', 1)
INSERT [dbo].[Log] ([LogID], [NguyenLieu], [TenNguyenLieu], [NgayHetHan], [NgayGhiNhan], [TrangThai], [CanhBao], [SoLuong]) VALUES (3, N'CUA', N'CUA Bien', CAST(N'2024-12-01' AS Date), CAST(N'2025-04-22T10:13:01.520' AS DateTime), N'Hết hạn', N'❗ Nguyên liệu đã hết hạn – ghi nhận vào log', 10)
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
INSERT [dbo].[MonAn] ([MonAn], [TenMonAn], [Gia], [MoTa]) VALUES (N'Ga', N'Ga', 250, N'Tot')
INSERT [dbo].[MonAn] ([MonAn], [TenMonAn], [Gia], [MoTa]) VALUES (N'TomHum', N'TomHum', 450, N'binh thuong')
GO
INSERT [dbo].[nguyenLieu] ([NguyenLieu], [TenNguyenLieu], [SoLuong], [HanSuDung]) VALUES (N'CUA', N'CUA Bien', 10, N'2024-12-01')
INSERT [dbo].[nguyenLieu] ([NguyenLieu], [TenNguyenLieu], [SoLuong], [HanSuDung]) VALUES (N'mi', N'mitom', 50, N'2025-04-23')
INSERT [dbo].[nguyenLieu] ([NguyenLieu], [TenNguyenLieu], [SoLuong], [HanSuDung]) VALUES (N'phomai', N'sua', 2, N'2025-03-12')
INSERT [dbo].[nguyenLieu] ([NguyenLieu], [TenNguyenLieu], [SoLuong], [HanSuDung]) VALUES (N'SỮA', N' SỮA MILO', 100, N'2025-04-24')
INSERT [dbo].[nguyenLieu] ([NguyenLieu], [TenNguyenLieu], [SoLuong], [HanSuDung]) VALUES (N'trung', N'sua', 1, N'2025-04-22')
GO
INSERT [dbo].[NhaCungCap] ([NhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienTHoai], [Email]) VALUES (N'001', N'HoangThiXuanTrang', N'LucNgan', N'0984736422', N'HTXT@email.com')
INSERT [dbo].[NhaCungCap] ([NhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienTHoai], [Email]) VALUES (N'002', N'NguyenThiLinh', N'HiepHoa', N'098474323', N'NTL@email.com')
GO
INSERT [dbo].[NhanVien] ([NhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [ChucVu], [Luong]) VALUES (N'Nam', N'NguyenVanA', CAST(N'1999-03-10' AS Date), N'0887464655', N'nguyenvana@email.com', N'BepTruong', 50000)
INSERT [dbo].[NhanVien] ([NhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [ChucVu], [Luong]) VALUES (N'Nu', N'NguyenthiB', CAST(N'2000-03-20' AS Date), N'098746533', N'ngyenthiB@email.com', N'BepPho', 4000)
GO
INSERT [dbo].[PhieuNhap] ([PhieuNhap], [NhaCungCap], [NhanVien], [TongTien]) VALUES (1, N'001', N'Nu', 50000)
INSERT [dbo].[PhieuNhap] ([PhieuNhap], [NhaCungCap], [NhanVien], [TongTien]) VALUES (2, N'002', N'nam', 300)
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT (getdate()) FOR [NgayGhiNhan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([HoaDon])
REFERENCES [dbo].[HoaDon] ([HoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_MonAn] FOREIGN KEY([MonAn])
REFERENCES [dbo].[MonAn] ([MonAn])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_MonAn]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_nguyenLieu] FOREIGN KEY([NguyenLieu])
REFERENCES [dbo].[nguyenLieu] ([NguyenLieu])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_nguyenLieu]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([PhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([PhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_KhachHang] FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([KhachHang])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_KhachHang]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_KhachHang1] FOREIGN KEY([BanAn])
REFERENCES [dbo].[BanAn] ([BanAn])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_KhachHang1]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_NhanVien] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVien])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([KhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[LichLamViec]  WITH CHECK ADD  CONSTRAINT [FK_LichLamViec_NhanVien] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVien])
GO
ALTER TABLE [dbo].[LichLamViec] CHECK CONSTRAINT [FK_LichLamViec_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NhanVien] ([NhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
/****** Object:  Trigger [dbo].[trg_CanhBaoVaLogNguyenLieu]    Script Date: 4/22/2025 10:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CanhBaoVaLogNguyenLieu]
ON [dbo].[nguyenLieu] -- Trigger này áp dụng cho bảng NguyenLieu
AFTER INSERT, UPDATE -- Kích hoạt sau khi có hành động INSERT hoặc UPDATE
AS
BEGIN
    -- SET NOCOUNT ON để ngăn SQL Server gửi thông báo số dòng bị ảnh hưởng về client,
    -- giúp cải thiện hiệu suất và tránh lỗi không mong muốn trong một số ứng dụng.
    SET NOCOUNT ON;

    -- Chỉ thực hiện việc ghi log vào bảng Log_CanhBaoHetHan
    -- Ghi log nếu nguyên liệu bị hết hạn trong các dòng vừa được INSERT hoặc UPDATE
    INSERT INTO Log (NguyenLieu, TenNguyenLieu, NgayHetHan,NgayGhiNhan, TrangThai, CanhBao,SoLuong)
    SELECT
    i.nguyenlieu,    -- 1
    i.TenNguyenLieu, -- 2
    i.HanSuDung,     -- 3
    GETDATE(),       -- 4 (Cho NgayGhiNhan)
    N'Hết hạn',      -- 5 (Cho TrangThai)
    N'❗ Nguyên liệu đã hết hạn – ghi nhận vào log', -- 6 (Cho CanhBao)
    i.SoLuong    -- 7 (Cho SoLuong - Giả sử có cột SoLuongTon trong bảng NguyenLieu/inserted)
FROM inserted i
                -- Bảng 'inserted' chứa các dòng đã được thêm mới hoặc cập nhật
    WHERE
        i.HanSuDung < GETDATE(); -- Điều kiện: Chỉ chọn những dòng có hạn sử dụng nhỏ hơn ngày hiện tại

END;
GO
ALTER TABLE [dbo].[nguyenLieu] ENABLE TRIGGER [trg_CanhBaoVaLogNguyenLieu]
GO
USE [master]
GO
ALTER DATABASE [QLNhaHang] SET  READ_WRITE 
GO
