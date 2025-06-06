Create database [VatLieuCoKhi]
GO
Use [VatLieuCoKhi]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[BinhLuan] [nvarchar](max) NULL,
	[Diem] [int] NULL,
	[IsDuyet] [bit] NULL,
	[NgayDG] [datetime] NULL,
	[IdSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](250) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TongTien] [decimal](10, 2) NULL,
	[HinhThucTT] [int] NOT NULL,
	[IdTK] [int] NULL,
	[NgayDat] [datetime] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[DiaChiNhanHang] [nvarchar](max) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangCT]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangCT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDH] [int] NULL,
	[IdSP] [int] NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKM] [nvarchar](50) NOT NULL,
	[TiLeKM] [float] NOT NULL,
	[DieuKien] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NOT NULL,
	[HinhAnh] [nvarchar](max) NOT NULL,
	[GiaGoc] [decimal](10, 2) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[DonViTinh] [nvarchar](100) NOT NULL,
	[IdNCC] [int] NULL,
	[IdDM] [int] NULL,
	[IdKM] [int] NULL,
	[NgayDang] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[PhanQuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTin]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [int] NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[IdTK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/9/2024 6:44:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (4, N'vanquynh140498@gmail.com', N'0866952668', N'Hàng tốt', 5, 1, CAST(N'2024-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (6, N'hanh2@gmail.com', N'0987654321', N'ổn', 5, 1, CAST(N'2024-05-21T15:17:37.283' AS DateTime), 6)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1006, N'hanh@gmail.com', N'0987654321', N'sản phẩm giá tốt chất lượng cao', 4, 1, CAST(N'2024-05-25T20:48:57.027' AS DateTime), 13)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1007, N'dat@gmail.com', N'0987654321', N'sản phẩm tốt, giá tốt, giao hàng nhanh', NULL, 1, CAST(N'2024-05-25T20:50:39.030' AS DateTime), 13)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1008, N'hanh@gmail.com', N'0398808521', N'sản phẩm đảm bảo chất lượng', NULL, 1, CAST(N'2024-05-30T22:57:08.487' AS DateTime), 13)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1009, N'hanh2@gmail.com', N'12345678', N'kkkk', NULL, 0, CAST(N'2024-05-31T10:55:27.113' AS DateTime), 23)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1010, N'hanh@gmail.com', N'0398808521', NULL, NULL, 0, CAST(N'2024-05-31T19:39:28.083' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1011, N'hanh@gmail.com', N'0398808521', N'fff', 4, 0, CAST(N'2024-05-31T19:39:56.703' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1012, N'hanh@gmail.com', N'0398808521', N'fff', 4, 0, CAST(N'2024-05-31T19:39:58.490' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1013, N'hanh@gmail.com', N'0398808521', N'fff', 4, 0, CAST(N'2024-05-31T19:39:57.413' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1014, N'hanh@gmail.com', N'0398808521', N'fff', 4, 1, CAST(N'2024-05-31T19:39:59.740' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1015, N'hanh@gmail.com', N'0398808521', N'fff', 4, 1, CAST(N'2024-05-31T19:39:59.260' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1016, N'dat@gmail.com', N'0987362712', N'sản phẩm tốt', 5, 1, CAST(N'2024-05-31T19:53:20.760' AS DateTime), 11)
INSERT [dbo].[DanhGia] ([Id], [Email], [SDT], [BinhLuan], [Diem], [IsDuyet], [NgayDG], [IdSP]) VALUES (1018, N'hanh@gmail.com', N'12345667', N'Tốt', 4, 0, CAST(N'2024-06-05T07:58:00.663' AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([Id], [TenDM], [MoTa]) VALUES (4, N'Inox', N'Vật liệu kim loại')
INSERT [dbo].[DanhMucSP] ([Id], [TenDM], [MoTa]) VALUES (5, N'Thép', N'Vật liệu kim loại')
INSERT [dbo].[DanhMucSP] ([Id], [TenDM], [MoTa]) VALUES (6, N'Tôn', N'Vật liệu cơ khí')
INSERT [dbo].[DanhMucSP] ([Id], [TenDM], [MoTa]) VALUES (7, N'ốc vít', N'vật liệu gia công cơ khí')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (8, CAST(855000.00 AS Decimal(10, 2)), 1, 5, CAST(N'2024-04-25T09:51:58.423' AS DateTime), 2, N'Ba Vì - Sơn Tây', N'0866952669')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (9, CAST(135000.00 AS Decimal(10, 2)), 1, 5, CAST(N'2024-04-25T09:52:19.000' AS DateTime), 2, N'Ba Vì - Sơn Tây', N'0866952669')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (10, CAST(441000.00 AS Decimal(10, 2)), 1, 5, CAST(N'2024-04-25T09:52:36.317' AS DateTime), 3, N'Ba Vì - Sơn Tây', N'0866952669')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (11, CAST(386600.00 AS Decimal(10, 2)), 1, 5, CAST(N'2024-05-11T10:28:39.773' AS DateTime), 2, N'Ba Vì - Sơn Tây', N'0866952669')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (12, CAST(57000.00 AS Decimal(10, 2)), 1, 6, CAST(N'2024-05-11T11:24:56.430' AS DateTime), 3, N'Hải Dương', N'0123456789')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (13, CAST(74000.00 AS Decimal(10, 2)), 1, 6, CAST(N'2024-05-11T11:34:56.680' AS DateTime), 3, N'Hải Dương', N'0123456789')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (14, CAST(74000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-11T13:36:38.247' AS DateTime), 2, N'Vĩnh Phúc', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (15, CAST(630000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-11T13:43:51.563' AS DateTime), 3, N'Vĩnh Phúc', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (16, CAST(74000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-11T13:49:34.960' AS DateTime), 2, N'Vĩnh Phúc', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (17, CAST(819000.00 AS Decimal(10, 2)), 1, 8, CAST(N'2024-05-11T15:02:36.503' AS DateTime), 2, N'Vĩnh Phúc', N'12345678')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (18, CAST(63000.00 AS Decimal(10, 2)), 1, 8, CAST(N'2024-05-11T15:17:54.123' AS DateTime), 2, N'Vĩnh Phúc', N'12345678')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (1012, CAST(156000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-22T15:26:35.733' AS DateTime), 3, N'Vĩnh Phúc', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (1013, CAST(206832.00 AS Decimal(10, 2)), 1, 8, CAST(N'2024-05-29T08:10:10.533' AS DateTime), 2, N'Vĩnh Phúc', N'12345678')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2013, CAST(711000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-30T23:23:10.293' AS DateTime), 3, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2014, CAST(40000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-31T02:24:18.313' AS DateTime), 2, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2015, CAST(728000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-31T02:24:48.490' AS DateTime), 3, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2016, CAST(149000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-05-31T10:56:14.227' AS DateTime), 3, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2017, CAST(60000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-06-01T19:49:01.150' AS DateTime), 1, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (2018, CAST(139000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-06-02T15:56:20.933' AS DateTime), 2, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3018, CAST(50000.00 AS Decimal(10, 2)), 1, 2014, CAST(N'2024-06-03T10:25:22.243' AS DateTime), 3, N'Hà Nội', N'0398808521')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3019, CAST(503000.00 AS Decimal(10, 2)), 1, 2014, CAST(N'2024-06-03T10:25:52.597' AS DateTime), 2, N'Hà Nội', N'0398808521')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3020, CAST(546000.00 AS Decimal(10, 2)), 1, 7, CAST(N'2024-06-05T12:28:56.077' AS DateTime), 1, N'HÀ NỘI', N'0987654321')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3021, CAST(70000.00 AS Decimal(10, 2)), 1, 2017, CAST(N'2024-06-05T12:31:30.537' AS DateTime), 2, N'Haaa', N'1234567890')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3022, CAST(453000.00 AS Decimal(10, 2)), 1, 3019, CAST(N'2024-06-09T03:49:02.913' AS DateTime), 2, N'Hà Nội', N'0398808521')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3023, CAST(91000.00 AS Decimal(10, 2)), 1, 3019, CAST(N'2024-06-09T03:49:14.007' AS DateTime), 3, N'Hà Nội', N'0398808521')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3024, CAST(364000.00 AS Decimal(10, 2)), 1, 3019, CAST(N'2024-06-09T03:49:37.227' AS DateTime), 2, N'Hà Nội', N'0398808521')
INSERT [dbo].[DonHang] ([Id], [TongTien], [HinhThucTT], [IdTK], [NgayDat], [TinhTrang], [DiaChiNhanHang], [SDT]) VALUES (3025, CAST(475000.00 AS Decimal(10, 2)), 1, 3019, CAST(N'2024-06-09T03:49:48.030' AS DateTime), 1, N'Hà Nội', N'0398808521')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHangCT] ON 

INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (10, 8, 1, 15)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (11, 9, 6, 15)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (12, 10, 2, 7)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (13, 11, 1, 3)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (14, 11, 4, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (15, 11, 2, 3)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (16, 12, 1, 1)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (17, 13, 6, 1)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (18, 14, 6, 1)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (19, 15, 2, 10)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (20, 16, 6, 1)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (21, 17, 8, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (22, 17, 1, 12)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (23, 18, 6, 7)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (1016, 1012, 10, 13)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (1017, 1013, 28, 6)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2017, 2013, 4, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2018, 2013, 6, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2019, 2014, 11, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2020, 2015, 13, 8)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2021, 2016, 11, 7)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2022, 2016, 23, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2023, 2017, 10, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2024, 2018, 23, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (2025, 2018, 11, 6)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3024, 3018, 11, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3025, 3019, 10, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3026, 3019, 13, 5)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3027, 3020, 13, 6)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3028, 3021, 11, 7)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3029, 3022, 1, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3030, 3022, 4, 3)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3031, 3023, 18, 1)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3032, 3024, 18, 4)
INSERT [dbo].[DonHangCT] ([Id], [IdDH], [IdSP], [SoLuong]) VALUES (3033, 3025, 31, 5)
SET IDENTITY_INSERT [dbo].[DonHangCT] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([Id], [MaKM], [TiLeKM], [DieuKien]) VALUES (2, N'KM001', 5, N'Mua trên 5 sản phẩm')
INSERT [dbo].[KhuyenMai] ([Id], [MaKM], [TiLeKM], [DieuKien]) VALUES (3, N'KM002', 10, N'Mua trên 5 sản phẩm')
INSERT [dbo].[KhuyenMai] ([Id], [MaKM], [TiLeKM], [DieuKien]) VALUES (4, N'KM03', 0, N'0')
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[NCC] ON 

INSERT [dbo].[NCC] ([Id], [TenNCC], [SDT], [DiaChi]) VALUES (2, N'Việt Tiệp', N'0866952668', N'Hồ chí minh')
INSERT [dbo].[NCC] ([Id], [TenNCC], [SDT], [DiaChi]) VALUES (3, N'Hòa Phát', N'0866952669', N'Hòa Bình')
INSERT [dbo].[NCC] ([Id], [TenNCC], [SDT], [DiaChi]) VALUES (4, N'SUMAC', N'0344567888', N'Ba Vì - Sơn Tây')
INSERT [dbo].[NCC] ([Id], [TenNCC], [SDT], [DiaChi]) VALUES (5, N'Kim Vĩnh Phú', N'0981776847', N'Hồ Chí Minh')
INSERT [dbo].[NCC] ([Id], [TenNCC], [SDT], [DiaChi]) VALUES (6, N'Lộc Phát', N'0979.13.14.80', N'Hải Dương')
SET IDENTITY_INSERT [dbo].[NCC] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (1, N'TÔN CUỘN TẨY GỈ VÀ PHỦ DẦU', N'3-web-ton-09.jpg', CAST(51000.00 AS Decimal(10, 2)), N'<h2>Bảng th&ocirc;ng số</h2>

<table>
	<tbody>
		<tr>
			<td>Theo ti&ecirc;u chuẩn</td>
			<td>SAE 1006, JIS G 3131 SPHC</td>
		</tr>
		<tr>
			<td>Chiều rộng khổ t&ocirc;n</td>
			<td>650 &divide; 1.250 (mm)</td>
		</tr>
		<tr>
			<td>Độ d&agrave;y</td>
			<td>4 (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh trong cuộn</td>
			<td>610 (&plusmn; 10) (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh ngo&agrave;i cuộn</td>
			<td>&le; 2.000 (mm)</td>
		</tr>
		<tr>
			<td>Khối lượng cuộn</td>
			<td>&le; 25 (tấn)</td>
		</tr>
	</tbody>
</table>
', N'Tấm', 3, 6, 4, CAST(N'2023-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (2, N'THÉP TẤM SKD11', N'thep tam SKD11 (080623).jpg,thep tron skd11 (5).jpg', CAST(70000.00 AS Decimal(10, 2)), N'<h2>Th&eacute;p tấm&nbsp;SKD11 l&agrave; g&igrave;?</h2>

<p>Th&eacute;p tấm&nbsp;SKD 11 l&agrave; một loại th&eacute;p c&ocirc;ng cụ chất lượng cao. N&oacute; thuộc nh&oacute;m th&eacute;p chịu m&agrave;i m&ograve;n v&agrave; chịu va đập. Th&eacute;p&nbsp;SKD 11 c&oacute; độ cứng cao, kh&aacute;ng m&agrave;i m&ograve;n v&agrave; kh&aacute;ng va đập tốt, do đ&oacute; n&oacute; được sử dụng rộng r&atilde;i trong c&aacute;c ứng dụng đ&ograve;i hỏi t&iacute;nh chất cắt, m&agrave;i m&ograve;n v&agrave; chống va đập tốt.</p>

<p>Th&eacute;p&nbsp;SKD 11 thường được sử dụng để l&agrave;m dao cắt, khu&ocirc;n dập, khu&ocirc;n &eacute;p nhựa, v&agrave; c&aacute;c bộ phận m&aacute;y m&oacute;c kh&aacute;c trong c&ocirc;ng nghiệp gia c&ocirc;ng kim loại. N&oacute; cũng c&oacute; thể được sử dụng trong c&aacute;c ứng dụng chế tạo dụng cụ cắt, dụng cụ l&agrave;m khu&ocirc;n, v&agrave; dụng cụ đ&aacute;nh b&oacute;ng.</p>

<p>Th&eacute;p&nbsp;SKD 11 c&oacute; th&agrave;nh phần h&oacute;a học ch&iacute;nh gồm carbon (C), silic (Si), mangan (Mn), chromium (Cr), v&agrave; molypden (Mo). Th&eacute;p n&agrave;y được xem l&agrave; c&oacute; khả năng gia c&ocirc;ng tốt, c&oacute; thể được t&ocirc;i, m&agrave;i v&agrave; đ&aacute;nh b&oacute;ng để đạt được độ ch&iacute;nh x&aacute;c cao trong qu&aacute; tr&igrave;nh sản xuất.</p>

<p><a href="http://sumac.vn/san-pham/thep-tam-skd11_1487"><img alt="thép tấm SKD11" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/thep%20tam%20SKD11%20-%20080623.jpg" /></a></p>

<h2>Th&eacute;p tấm&nbsp;SKD11 ti&ecirc;u chuẩn Nhật Bản</h2>

<h3>1. KH&Aacute;I NIỆM VỀ TH&Eacute;P HỢP KIM&nbsp;SKD11</h3>

<p>Th&eacute;p SKD11 l&agrave; m&aacute;c th&eacute;p theo ti&ecirc;u chuẩn JIS của Nhật Bản.&nbsp;</p>

<p>Đ&acirc;y l&agrave; m&aacute;c th&eacute;p kh&aacute; phổ biến ứng dụng chế tạo: khu&ocirc;n mẫu, jig, b&agrave;n m&aacute;y, dao cắt, l&ocirc; c&aacute;n,v.v</p>

<h3>2. TH&Agrave;NH PHẦN&nbsp;CỦA TH&Eacute;P&nbsp;SKD11</h3>

<p>H&agrave;m lượng th&agrave;nh phần c&aacute;c nguy&ecirc;n tốt : 1.4-1.6%C, 0.6%Mn, 11-13%Cr, 0.8-1.2%Mo</p>

<table border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td colspan="5" rowspan="1"><strong>&nbsp;Loại th&eacute;p</strong></td>
			<td colspan="8" rowspan="1"><strong>Th&agrave;nh phần h&oacute;a học</strong></td>
		</tr>
		<tr>
			<td><big>JIS&nbsp;&nbsp;&nbsp;&nbsp;</big></td>
			<td><big>&nbsp; HITACHI(YSS)</big></td>
			<td><big>DAIDO</big></td>
			<td><big>AISI</big></td>
			<td><big>DIN</big></td>
			<td><big>C</big></td>
			<td><big>Si</big></td>
			<td><big>Mn</big></td>
			<td><big>P&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</big></td>
			<td><big>S</big></td>
			<td><big>Cr</big></td>
			<td><big>Mo</big></td>
			<td><big>V</big></td>
		</tr>
		<tr>
			<td><a href="http://citisteel.vn/thep-tron-dac-skd11-sp123-c78.html" rel="noopener" target="_blank">SKD11</a></td>
			<td>&nbsp;&nbsp;<a href="http://citisteel.vn/thep-tam-sld-o-ha-noi-dt231.html" rel="noopener" target="_blank">SLD</a></td>
			<td>&nbsp;DC11</td>
			<td>&nbsp;D2</td>
			<td>&nbsp;2379</td>
			<td>&nbsp;1.5</td>
			<td>&nbsp;0.25</td>
			<td>0.45</td>
			<td>&lt;=0.025</td>
			<td>&lt;=0.01</td>
			<td>12.0</td>
			<td>1.0</td>
			<td>0.35</td>
		</tr>
	</tbody>
</table>

<p><a href="http://sumac.vn/san-pham/thep-tam-skd11_1487"><img alt="Thép tấm SKD11" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/thep%20tam%20SKD11%20(080623).jpg" /></a></p>

<h3>3. ĐẶC ĐIỂM VỀ KHẢ NĂNG C&Ocirc;NG NGHỆ CỦA SKD11.</h3>

<p>Với những đặc điểm về th&agrave;nh phần, v&agrave; t&iacute;nh chất chịu m&agrave;i m&ograve;n, độ thấm t&ocirc;i thấp,.... th&igrave; khả năng sử dụng Th&eacute;p SKD rất rộng, tuy nhi&ecirc;n th&igrave; gi&aacute; th&agrave;nh lại cao hơn nhiều loại m&aacute;c th&eacute;p kh&aacute;c.</p>

<ul>
	<li>Bề mặt gia c&ocirc;ng cắt gọt mịn v&agrave; đẹp hơn, chịu m&agrave;i m&ograve;n cao.</li>
	<li>Th&eacute;p l&agrave;m khu&ocirc;n gia c&ocirc;ng nguội với độ chống m&agrave;i m&ograve;n cao ở m&ocirc;i trường nhiệt độ th&ocirc;ng thường.</li>
	<li>Độ thấm t&ocirc;i tốt v&agrave; ứng suất t&ocirc;i l&agrave; thấp nhất gi&uacute;p cho n&acirc;ng cao độ cứng v&agrave; chất lượng bề mặt, v&agrave; đồng thời hạn chế cong v&ecirc;nh khi gia c&ocirc;ng.</li>
</ul>

<h3>4. C&Aacute;C M&Aacute;C TH&Eacute;P TƯƠNG ỨNG VỚI TH&Eacute;P SKD11</h3>

<ul>
	<li>M&aacute;c th&eacute;p D2 theo ti&ecirc;u chuẩn AISI của MỸ.</li>
	<li>M&aacute;c th&eacute;p 2379 theo ti&ecirc;u chuẩn DIN&nbsp;của ĐỨC.</li>
	<li>M&aacute;c th&eacute;p KD11 theo ti&ecirc;u chuẩn NIPPON của NHẬT.</li>
	<li>M&aacute;c th&eacute;p SLD theo ti&ecirc;u chuẩn &nbsp;HITACHI củaNHẬT.</li>
</ul>

<h3>5. QUY C&Aacute;CH K&Iacute;CH THƯỚC SKD11 TR&Ecirc;N THỊ TRƯỜNG</h3>

<ul>
	<li><strong>Th&eacute;p tấmSKD11</strong>&nbsp;d&agrave;y: 8-150mm ; rộng: 605mm; d&agrave;i: 6000mm.</li>
	<li><strong>Th&eacute;p tr&ograve;n&nbsp;SKD11</strong>: 12, 14, 16, 20, 35, 40, 45, 50, 60, 70, 80, 100 ~ 4000; d&agrave;i: 6000mm.</li>
</ul>

<h3>6. ĐỘ CỨNG&nbsp;TH&Eacute;P SKD11.</h3>

<ul>
	<li>Đối với vật liệu SKD11 th&igrave; sau khi nhiệt luy&ecirc;n t&ocirc;i v&agrave; Ram th&igrave; độ cứng đạt tầm tr&ecirc;n 58HRC. Đ&acirc;y l&agrave; vật liệu tương đối kh&oacute; nhiệt luyện so với c&aacute;c vật liệu kh&aacute;c. Khi nhi&ecirc;t luyện phải đảm bảo đ&uacute;ng về nhiệt độ t&ocirc;i v&agrave; thời gian giữ nhiệt.</li>
	<li>Đối với mỗi nh&agrave; cung cấp kh&aacute;c nhau th&igrave; về cơ bản th&agrave;nh phần h&oacute;a học l&agrave; giống nhau, tuy nhi&ecirc;n&nbsp;c&oacute; một số trường hợp l&agrave; kh&aacute;c nhau một ch&uacute;t, v&igrave; vậy n&oacute; sẽ ảnh hưởng một phần đến nhiệt độ t&ocirc;i, v&agrave; th&ocirc;ng thường nếu bạn mua Th&eacute;p tại nh&agrave; sản xuất th&igrave; người ta sẽ cung cấp cho một bảng th&ocirc;ng số về nhiệt độ, c&aacute;c giai đoạn nhiệt độ t&ocirc;i để đạt c&aacute;c cấp độ cứng theo mong muốn.</li>
	<li>Dưới đ&acirc;y l&agrave; bảng th&ocirc;ng số cơ bản về nhiệt độ Ủ, T&ocirc;i v&agrave; Ram, bạn c&oacute; thể tham khảo.
	<table border="1" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
				<td colspan="3" rowspan="1"><strong>Ủ</strong></td>
				<td colspan="2" rowspan="1"><strong>&nbsp;T&Ocirc;I</strong></td>
				<td colspan="3" rowspan="1"><strong>RAM</strong></td>
			</tr>
			<tr>
				<td colspan="1" rowspan="1">Nhiệt độ</td>
				<td colspan="1" rowspan="1">M&ocirc;i trường t&ocirc;i</td>
				<td colspan="1" rowspan="1">Độ cứng(HB)</td>
				<td colspan="1" rowspan="1">Nhiệt độ</td>
				<td>M&ocirc;i trường t&ocirc;i</td>
				<td colspan="1" rowspan="1">Nhiệt độ</td>
				<td colspan="1" rowspan="1">M&ocirc;i trường t&ocirc;i</td>
				<td colspan="1" rowspan="1">Độ cứng(HRC)</td>
			</tr>
			<tr>
				<td colspan="1" rowspan="2">800~850</td>
				<td colspan="1" rowspan="2">L&agrave;m nguội chậm</td>
				<td colspan="1" rowspan="2">&lt;248</td>
				<td>1000~1050</td>
				<td>Ngo&agrave;i kh&ocirc;ng kh&iacute;</td>
				<td>150~200</td>
				<td colspan="1" rowspan="2">Kh&ocirc;ng kh&iacute; n&eacute;n</td>
				<td colspan="1" rowspan="2">&lt;= 58HRC</td>
			</tr>
			<tr>
				<td>980~1030</td>
				<td>T&ocirc;i trong dầu</td>
				<td>500~580</td>
			</tr>
		</tbody>
	</table>
	</li>
</ul>

<h3>7.&nbsp;C&Aacute;C LỖI THƯỜNG GẶP PHẢI KHI NHIỆT LUYỆN SKD11</h3>

<ul>
	<li>Chi tiết Th&eacute;p SKD Kh&ocirc;ng đủ độ cứng, Ủ, T&ocirc;i, Ram, đ&uacute;ng y&ecirc;u cầu về nhiệt độ v&agrave; m&ocirc;i trường l&agrave;m nguội nhưng độ cứng kh&ocirc;ng đạt &gt;58HRC.</li>
	<li>Chi tiết sau khi t&ocirc;i cong v&ecirc;nh nhiều</li>
	<li>Chi tiết sau khi t&ocirc;i bị nứt.</li>
</ul>

<h3>8. C&Aacute;CH KIỂM TRA V&Agrave; XỬ L&Yacute; LỖI SAU KHI NHIỆT LUYỆN TH&Eacute;P SKD11</h3>

<p>Khi gặp bất kỳ lỗi n&agrave;o trong qu&aacute; tr&igrave;nh nhiệt luyện Th&eacute;p SKD11 th&igrave; c&aacute;c bạn cần kiểm tra lại xem qu&aacute; tr&igrave;nh nhiệt luyện đ&atilde; đ&uacute;ng v&agrave; đủ chưa. Kiểm tra về c&aacute;c yếu tố:</p>

<ul>
	<li>Nhiệt luyện Ủ, T&ocirc;i v&agrave; Ram đ&atilde; đ&uacute;ng y&ecirc;u cầu chưa? N&ecirc;n tham khảo bảng th&ocirc;ng số nhiệt độ nhiệt luyện của H&atilde;ng sản xuất m&agrave; bạn mua.</li>
	<li>Thời gian t&ocirc;i giữ nhiệt v&agrave; l&agrave;m ngu&ocirc;i đ&atilde; đ&uacute;ng v&agrave; đạt y&ecirc;u cầu chưa? v&iacute; dụ như&nbsp;Khi nhiệt luyện, cấu tr&uacute;c ph&acirc;n tử của th&eacute;p bị thay đổi kh&ocirc;ng ổn định, Ram l&agrave; bước l&agrave;m ổn định sự bố tr&iacute; v&agrave; sắp xếp lại c&aacute;c ph&acirc;n tử cho ổn định, ram c&agrave;ng l&acirc;u th&igrave; độ cứng c&agrave;ng giảm. Ngo&agrave;i ra thời gian nung phải đ&uacute;ng để c&aacute;c tổ chức chuyển pha ho&agrave;n to&agrave;n.</li>
	<li>Đối với d&ograve;ng th&eacute;p c&oacute; th&agrave;nh phần C cao như SKD11 th&igrave; người ta thường chỉ d&ugrave;ng phương ph&aacute;p t&ocirc;i thể t&iacute;ch.</li>
	<li>về phương ph&aacute;p đo, ta phải đo độ cứng bề mặt v&agrave; trong t&acirc;m của mẩu lu&ocirc;n(bằng c&aacute;ch cắt, nhưng phải cắt kh&ocirc;ng sinh nhiệt.</li>
	<li>Trường hợp bị nứt cps thể do tốc độ gia tăng nhiệt&nbsp;qu&aacute; lớn, kh&ocirc;ng ph&acirc;n cấp th&agrave;nh c&aacute;c giai đoạn nhiệt kh&aacute;c nhau. Ngo&agrave;i ra&nbsp;sau khi l&agrave;m nguội ứng suất trong mẫu l&agrave; rất lớn, nếu kh&ocirc;ng ram kịp cũng dẫn đến nứt. Hoặc cũng c&oacute; thể do m&ocirc;i trường l&agrave;m nguội v&agrave; tốc độ l&agrave;m nguội, ch&iacute;nh v&igrave; thế bạn n&ecirc;n kiểm tra tất cả c&aacute;c th&ocirc;ng số n&agrave;y.</li>
</ul>

<p><a href="http://sumac.vn/san-pham/thep-tam-skd11_1487"><img alt="cắt lẻ thép tấm SKD11" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/cat%20le%20thep%20skd11%20-%20080623.jpg" /></a></p>

<p>Sumac chuy&ecirc;n cung cấp th&eacute;p tr&ograve;n SKD11 c&aacute;c loại, cắt lẻ, sỉ tại&nbsp;<strong>&nbsp;H&agrave; Nội, tại Bắc Ninh, tại Bắc Giang, tại Lạng sơn, tại Hải Ph&ograve;ng, tại Hưng Y&ecirc;n,</strong></p>

<p><strong>tại Hải Dương, tại H&agrave; Nam, tại Nam Định, tại Ninh B&igrave;nh, tại Thanh H&oacute;a, tại Nghệ An, tại H&agrave; Tĩnh, tại Quảng Trị,</strong></p>

<p><strong>&nbsp;tại Vĩnh Ph&uacute;c, tại Th&aacute;i Nguy&ecirc;n, tại Ph&uacute; Thọ, tại Tuy&ecirc;n Qu&agrave;ng, tại L&agrave;o Cai, tại Yến B&aacute;i,&nbsp;</strong></p>

<p>.v.v.&nbsp;v&agrave; c&aacute;c tỉnh kh&aacute;c tại Khu vực&nbsp;<strong>Miền Bắc</strong>&nbsp;v&agrave;&nbsp;<strong>Miền Nam</strong></p>
', N'Tấm', 4, 5, 3, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (4, N'TÔN CUỘN CÁN NGUỘI', N'3-web-ton-08.jpg', CAST(83000.00 AS Decimal(10, 2)), N'<h3>T&Ocirc;N CUỘN C&Aacute;N NGUỘI</h3>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>Ti&ecirc;u chuẩn</td>
			<td>JIS G3141 (SPCC-1B)</td>
		</tr>
		<tr>
			<td>Độ bền k&eacute;o</td>
			<td>&ge; 550 N/mm2</td>
		</tr>
		<tr>
			<td>Chiều rộng khổ t&ocirc;n</td>
			<td>650 &divide; 1.250 (mm)</td>
		</tr>
		<tr>
			<td>Độ d&agrave;y</td>
			<td>4 (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh trong cuộn</td>
			<td>508 (&plusmn; 10), 610 (&plusmn; 10) (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh ngo&agrave;i cuộn</td>
			<td>900 &le; &Oslash; &le; 2.000 (mm)</td>
		</tr>
		<tr>
			<td>Trọng lượng cuộn</td>
			<td>&le; 25 tấn</td>
		</tr>
		<tr>
			<td>Độ cứng HRB</td>
			<td>&ge; 85</td>
		</tr>
	</tbody>
</table>
', N'Tấm', 3, 6, 4, CAST(N'2023-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (6, N'TÔN CUỘN MẠ KẼM', N'3-web-ton-10.jpg', CAST(74000.00 AS Decimal(10, 2)), N'<h3>T&Ocirc;N CUỘN MẠ KẼM</h3>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>Ti&ecirc;u chuẩn</td>
			<td>JIS G3302/BSEN 10346/AS 1397/ASTM A653- A653M</td>
		</tr>
		<tr>
			<td>Độ bền k&eacute;o</td>
			<td>&ge; 270 N/mm2</td>
		</tr>
		<tr>
			<td>Độ d&agrave;y th&eacute;p nền</td>
			<td>5 (mm)</td>
		</tr>
		<tr>
			<td>Chiều rộng khổ t&ocirc;n</td>
			<td>750 - 1250 (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh trong cuộn</td>
			<td>508 (&plusmn; 10), 610 (&plusmn; 10) (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh ngo&agrave;i cuộn</td>
			<td>900 &le; &Oslash; &le; 2.000</td>
		</tr>
		<tr>
			<td>Trọng lượng cuộn</td>
			<td>&le; 25 (tấn)</td>
		</tr>
		<tr>
			<td>Khối lượng lớp mạ</td>
			<td>Z060 - Z350</td>
		</tr>
		<tr>
			<td>Độ uốn</td>
			<td>&le; 2T</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', N'Tấm', 3, 6, 4, CAST(N'2023-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (8, N'TÔN CUỘN MẠ KẼM PHỦ MÀU', N'3-web-ton-13.jpg', CAST(85000.00 AS Decimal(10, 2)), N'<h3>T&Ocirc;N CUỘN MẠ KẼM PHỦ M&Agrave;U</h3>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>Ti&ecirc;u chuẩn</td>
			<td>IS G3322 v&agrave; JIS G3312/ ASTM A755/A755M/ BS EN 10169/ AS 2728</td>
		</tr>
		<tr>
			<td>Trọng lượng cuộn</td>
			<td>&le; 10 tấn</td>
		</tr>
		<tr>
			<td>Độ bền k&eacute;o</td>
			<td>&ge; 270 N/mm2</td>
		</tr>
		<tr>
			<td>Độ d&agrave;y th&eacute;p</td>
			<td>0,15 &ndash; 0,8 (mm)</td>
		</tr>
		<tr>
			<td>Độ uốn</td>
			<td>&le; 3T</td>
		</tr>
		<tr>
			<td>Độ cứng b&uacute;t ch&igrave;</td>
			<td>&ge; 2H</td>
		</tr>
		<tr>
			<td>Độ bền dung m&ocirc;i MEK</td>
			<td>&ge; 100DR</td>
		</tr>
		<tr>
			<td>Độ b&aacute;m d&iacute;nh</td>
			<td>Kh&ocirc;ng bong tr&oacute;c</td>
		</tr>
		<tr>
			<td>Độ bền va đập</td>
			<td>Kh&ocirc;ng bong tr&oacute;c</td>
		</tr>
		<tr>
			<td>Độ b&oacute;ng</td>
			<td>32 &ndash; 85% (theo y&ecirc;u cầu của kh&aacute;ch)</td>
		</tr>
		<tr>
			<td>Hệ sơn</td>
			<td>Epoxy, Polyester, Super Polyester, PVDF</td>
		</tr>
	</tbody>
</table>
', N'Tấm', 3, 6, 4, CAST(N'2023-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (10, N'TẤM LẮNG INOX', N'giá tấm lắng inox.jpg', CAST(12000.00 AS Decimal(10, 2)), N'<h2>Bảng k&iacute;ch thước tấm lắng&nbsp;lamen inox</h2>

<p>Tấm lắng&nbsp;inox của Sumac c&oacute; s&oacute;ng cao n&ecirc;n c&oacute; độ cứng cao, ch&acirc;n s&oacute;ng đỉnh s&oacute;ng c&oacute; k&iacute;ch thước bằng nhau</p>

<p>K&iacute;ch thước ch&acirc;n s&oacute;ng t&ocirc;n inox: 26mm</p>

<p>K&iacute;ch thước đỉnh&nbsp;s&oacute;ng t&ocirc;n inox: 90mm</p>

<p>Chiều cao s&oacute;ng t&ocirc;n inox: 40mm</p>

<p><a href="http://sumac.vn/san-pham/tam-lang-inox_1431"><img alt="kich thuoc tam lang lamen inox" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/kich%20thuoc%20tam%20lang%20inox%20130723.jpg" /></a></p>

<p>Với k&iacute;ch thước tr&ecirc;n th&igrave;&nbsp;<strong>25 tấm lắng</strong>&nbsp;lamen kết hợp với nhau nhờ c&ocirc;ng nghệ h&agrave;n bấm th&igrave; c&oacute; diện t&iacute;ch ~ 1 m&eacute;t vu&ocirc;ng (0.954*1 m&eacute;t vu&ocirc;ng)</p>

<p><a href="http://sumac.vn/san-pham/tam-lang-inox_1431"><img alt="Cách tính diện tích bể lắng lamen" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/cach%20tinh%20dien%20tich%20be%20lang%20lamen%20130723.png" /></a></p>

<h3>ỨNG DỤNG CỦA TẤM LẮNG LAMEN&nbsp;INOX</h3>

<p>Do tấm lắng&nbsp;lamen inox được l&agrave;m bằng chất liệu inox n&ecirc;n c&oacute; độ bền v&agrave; độ dẻo dai cao</p>

<p>T&ugrave;y thuộc từng m&aacute;c inox kh&aacute;c nhanh m&agrave; tấm lắng&nbsp;inox c&oacute; độ bền với m&ocirc;i trường kh&aacute;c nhau</p>

<p>Ưu điểm nổi bật của tấm lắng&nbsp;lamen inox l&agrave; c&oacute; độ bền với m&ocirc;i trường cao, t&iacute;nh cả trong m&ocirc;i trường h&oacute;a chất c&oacute; t&iacute;nh ăn m&ograve;n</p>

<p>Do vậy, tấm lắng&nbsp;lamen inox c&ograve;n được d&ugrave;ng trong c&aacute;c hệ thống xử l&yacute; nước thải.</p>

<p>Tấm lắng&nbsp;lamen inox được h&agrave;n th&agrave;nh từng ph&ecirc;n tổ ong c&oacute; t&aacute;c dụng lắng cặn bẩn trong nước</p>
', N'Tấm', 4, 4, 4, CAST(N'2024-05-21T20:57:14.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (11, N'TÔN SÓNG INOX 6 SÓNG', N'tôn inox 6 sóng.jpg', CAST(10000.00 AS Decimal(10, 2)), N'<h2>Sumac chuy&ecirc;n c&aacute;n t&ocirc;n s&oacute;ng inox 304, 201.v.v</h2>

<p>Ch&uacute;ng t&ocirc;i nhận c&aacute;n gia c&ocirc;ng t&ocirc;n s&oacute;ng inox 6 s&oacute;ng</p>

<p>C&aacute;c m&aacute;c t&ocirc;n s&oacute;ng inox: 304, 316, 201, 430</p>

<p><a href="http://sumac.vn/san-pham/ton-song-inox-6-song-7-song-9-song_1424"><img alt="Giá tôn sóng inox " src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/gi-profile-sheet-500x500_result.jpg" /></a></p>

<h2>Bảng k&iacute;ch thước t&ocirc;n s&oacute;ng inox</h2>

<p>T&ocirc;n s&oacute;ng inox của Sumac c&oacute; s&oacute;ng cao n&ecirc;n c&oacute; độ cứng cao, ch&acirc;n s&oacute;ng đỉnh s&oacute;ng c&oacute; k&iacute;ch thước bằng nhau</p>

<p>K&iacute;ch thước ch&acirc;n s&oacute;ng t&ocirc;n inox: 26mm</p>

<p>K&iacute;ch thước đỉnh&nbsp;s&oacute;ng t&ocirc;n inox: 80mm</p>

<p>Chiều cao s&oacute;ng t&ocirc;n inox: 30mm</p>

<p><a href="http://sumac.vn/san-pham/ton-song-inox-6-song-7-song-9-song_1424"><img alt="Kích thước sóng tôn inox" src="https://sumac.vn/public/file-managers/uploads/images/thanh-vien/user-13/t%C3%B4n%20inox%209%20s%C3%B3ng%20cho%20x%E1%BB%AD%20l%C3%BD%20n%C6%B0%E1%BB%9Bc%20th%E1%BA%A3i.jpg" /></a></p>

<h3>ỨNG DỤNG CỦA T&Ocirc;N S&Oacute;NG INOX</h3>

<p>Do t&ocirc;n s&oacute;ng inox được l&agrave;m bằng chất liệu inox n&ecirc;n c&oacute; độ bền v&agrave; độ dẻo dai cao</p>

<p>T&ugrave;y thuộc từng m&aacute;c inox kh&aacute;c nhanh m&agrave; t&ocirc;n s&oacute;ng inox c&oacute; độ bền với m&ocirc;i trường kh&aacute;c nhau</p>

<p>Ưu điểm nổi bật của t&ocirc;n s&oacute;ng inox l&agrave; c&oacute; độ bền với m&ocirc;i trường cao, t&iacute;nh cả trong m&ocirc;i trường h&oacute;a chất c&oacute; t&iacute;nh ăn m&ograve;n</p>

<p>Do vậy, t&ocirc;n s&oacute;ng inox c&ograve;n được d&ugrave;ng trong c&aacute;c hệ thống xử l&yacute; nước thải. T&ocirc;n s&oacute;ng inox được h&agrave;n th&agrave;nh từng ph&ecirc;n tổ ong c&oacute; t&aacute;c dụng lắng cặn bẩn trong nước</p>
', N'Tấm', 4, 4, 4, CAST(N'2024-05-21T21:00:43.980' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (13, N'THÉP HÌNH H - H-SHAPED STEEL', N'thép hình_result.png', CAST(91000.00 AS Decimal(10, 2)), N'<h2>Th&eacute;p h&igrave;nh H - H-shaped steel<br />
&nbsp;</h2>

<p>- Khả năng chịu lực của th&eacute;p H cực tốt n&ecirc;n thường được sử dụng trong ng&agrave;nh c&ocirc;ng nghiệp nặng, được sử dụng l&agrave;m kết cấu nh&agrave; xưởng, l&agrave;m khung đ&eacute; m&aacute;y trong ng&agrave;nh chế tạo, c&ocirc;ng nghiệp đ&oacute;ng t&agrave;u, cầu đường</p>

<p>- Quy tr&igrave;nh để sản xuất th&eacute;p h&igrave;nh được trải qua 4 giai đoạn cơ bản l&agrave;: Xử l&yacute; quặng &gt;&gt; Tạo d&ograve;ng th&eacute;p n&oacute;ng chảy &gt;&gt; Đ&uacute;c tiếp nhi&ecirc;n liệu &gt;&gt; Tạo ph&ocirc;i, ph&ocirc;i sẽ được chuyển đến nh&agrave; m&aacute;y th&eacute;p h&igrave;nh để tạo th&agrave;nh sản phẩm th&eacute;p</p>

<p>- Th&eacute;p H được sản xuất với nhiều k&iacute;ch thước kh&aacute;c nhau để ph&ugrave; hợp với nhiều c&aacute;c c&ocirc;ng tr&igrave;nh kh&aacute;c nhau</p>

<p>Ti&ecirc;u chuẩn GOST, JIS, Q, BS, KS, TCVN<br />
Chiều cao th&acirc;n 100 &ndash; 900 mm<br />
Chiều rộng c&aacute;nh 50 &ndash; 400 mm<br />
Chiều d&agrave;i 6000 &ndash; 18000 mm</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;Th&eacute;p h&igrave;nh</p>
', N'Tấm', 4, 5, 4, CAST(N'2024-05-21T21:24:52.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (18, N'Thanh v đúc inox 304', N'thanh-v-duc-inox-11.jpg', CAST(91000.00 AS Decimal(10, 2)), N'<h1>Thanh v đ&uacute;c inox 304</h1>

<p>&nbsp;</p>

<p><strong>M&aacute;c th&eacute;p:</strong>&nbsp;SUS 304</p>

<p><strong>Ti&ecirc;u chuẩn inox:</strong>&nbsp;ASTM, GB, JIS, AISI</p>

<p><strong>Độ d&agrave;y phổ biến:</strong>&nbsp;2.0mm đến 8.0 mm</p>

<p><strong>Quy c&aacute;ch:</strong>&nbsp;V60&times;60&times;4</p>

<p><strong>Chiều d&agrave;i:</strong>&nbsp;6000m c&oacute; thể gia c&ocirc;ng căt đoạn theo y&ecirc;u cầu</p>

<p><strong>Bề mặt:</strong>&nbsp;2B, HL, No.1</p>

<p><strong>Xuất xứ inox</strong>: Ch&acirc;u &Acirc;u, Ch&acirc;u &Aacute;,&hellip;</p>

<p><strong>Gia c&ocirc;ng:</strong>&nbsp;C&oacute; thể cung cấp theo k&iacute;ch cỡ đặt h&agrave;ng</p>

<p><strong>Khả năng cung cấp:&nbsp;</strong>1,000 Ton/Tons/Thang</p>

<p><strong>Ti&ecirc;u chuẩn đ&oacute;ng g&oacute;i:</strong>&nbsp;Bao gồm PVC hoặc như bạn y&ecirc;u cầu</p>
', N'Thanh', 5, 4, 4, CAST(N'2024-05-22T07:53:03.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (20, N'Thanh v inox chấn dập 316', N'thanh-v-chan-inox.jpg', CAST(93000.00 AS Decimal(10, 2)), N'<p><strong>M&aacute;c th&eacute;p:</strong>&nbsp;SUS 316</p>

<p><strong>Ti&ecirc;u chuẩn inox:</strong>&nbsp;ASTM, GB, JIS, AISI</p>

<p><strong>Độ d&agrave;y phổ biến:</strong>&nbsp;2.0mm đến 8.0 mm</p>

<p><strong>Quy c&aacute;ch:</strong>&nbsp;size 25 x 3.0&hellip; C&oacute; thể cung cấp theo k&iacute;ch cỡ đặt h&agrave;ng</p>

<p><strong>Chiều d&agrave;i:</strong>&nbsp;6000m c&oacute; thể gia c&ocirc;ng căt đoạn theo y&ecirc;u cầu</p>

<p><strong>Bề mặt:</strong>&nbsp;2B, HL, No.1</p>

<p><strong>Gia c&ocirc;ng từ vật tư</strong>:&nbsp;<a href="https://inoxkimvinhphu.com/vat-tu-inox/tam-inox/"><strong>tấm inox</strong></a></p>

<p><strong>Xuất xứ inox</strong>: Ch&acirc;u &Acirc;u, Ch&acirc;u &Aacute;,&hellip;</p>

<p><strong>Gia c&ocirc;ng:</strong>&nbsp;C&oacute; thể cung cấp theo k&iacute;ch cỡ đặt h&agrave;ng</p>

<p><strong>Khả năng cung cấp:&nbsp;</strong>1,000 Ton/Tons/Thang</p>

<p><strong>Ti&ecirc;u chuẩn đ&oacute;ng g&oacute;i:</strong>&nbsp;Bao gồm PVC hoặc như bạn y&ecirc;u cầu</p>

<p>&nbsp;</p>
', N'Thanh', 5, 4, 3, CAST(N'2024-05-22T08:13:27.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (21, N'Thanh la chặt inox 304', N'thanh-la-inox-304-3.jpg', CAST(76000.00 AS Decimal(10, 2)), N'<p><strong>M&aacute;c th&eacute;p:</strong>&nbsp;SUS 201</p>

<p><strong>Ti&ecirc;u chuẩn inox:</strong>&nbsp;ASTM, GB, JIS, AISI</p>

<p><strong>Độ d&agrave;y:</strong>&nbsp;1.2mm &ndash; 12mm</p>

<p><strong>Bề rộng bản:</strong>&nbsp;20mm -100mm</p>

<p><strong>Chiều d&agrave;i:</strong>&nbsp;6000mm&nbsp;</p>

<p><strong>Bề mặt:</strong>&nbsp;2B, BA, HL, No.1</p>

<p><strong>Gia c&ocirc;ng từ vật tư</strong>:&nbsp;<a href="https://inoxkimvinhphu.com/vat-tu-inox/tam-inox/"><strong>tấm inox</strong></a></p>

<p><strong>Xuất xứ inox:&nbsp;</strong>Ch&acirc;u &Acirc;u, Ch&acirc;u &Aacute;,..</p>

<p><strong>Khả năng cung cấp:</strong>&nbsp;1,000 Ton/Tons/Thang</p>

<p><strong>Ti&ecirc;u chuẩn đ&oacute;ng g&oacute;i:</strong>&nbsp;Bao gồm PVC hoặc như bạn y&ecirc;u cầu</p>

<h2><strong>Thanh la chặt inox 304</strong></h2>

<p><strong>Thanh la chặt inox 304&nbsp;</strong>l&agrave; một loại vật liệu chống ăn m&ograve;n hiệu quả, được ứng dụng tại c&aacute;c c&ocirc;ng tr&igrave;nh kh&aacute;c nhau đặc biệt l&agrave; trong c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng.&nbsp;<strong><a href="https://inoxkimvinhphu.com/vat-tu-inox/thanh-la-inox/" rel="noopener" target="_blank">Thanh la inox</a></strong>&nbsp;được sử dụng như khung cột gi&uacute;p tăng th&ecirc;m sự ki&ecirc;n cố, vững chắc cho c&ocirc;ng tr&igrave;nh.</p>

<p><img alt="thanh la chặt inox 304" src="https://inoxkimvinhphu.com/wp-content/uploads/2022/09/thanh-la-chat-inox-304.jpg" style="height:529px; width:600px" /></p>

<p>Thanh la chặt inox 304</p>

<p>C&aacute;c thanh la được gọi l&agrave;&nbsp;<strong><a href="https://inoxkimvinhphu.com/vat-tu-inox/thanh-la-inox/thanh-la-chat/" rel="noopener" target="_blank">thanh la chặt inox</a></strong>&nbsp;304 bởi v&igrave; được chặt, cắt từ c&aacute;c&nbsp;<strong><a href="https://inoxkimvinhphu.com/tam-inox/304/" rel="noopener" target="_blank">tấm inox 304</a></strong>&nbsp;hoặc c&aacute;c tấm inox m&agrave;u cao cấp chủng loại inox 304.</p>

<p>Với c&aacute;c thanh la chặt từ&nbsp;<strong><a href="https://inoxkimvinhphu.com/vat-tu-inox/tam-inox-mau/" rel="noopener" target="_blank">tấm inox m&agrave;u cao cấp</a></strong>&nbsp;th&igrave; thường được gọi l&agrave; thanh la inox trang tr&iacute;, nẹp trang tr&iacute; được ứng dụng trong ng&agrave;nh trang tr&iacute; nhiều nhất.</p>

<p>Thanh la chặt inox 304 c&oacute; c&aacute;c bề mặt phổ biến l&agrave; bề mặt 2B, BA, HL, No.1.</p>
', N'Thanh', 5, 4, 4, CAST(N'2024-05-22T08:21:45.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (22, N'Thanh la đúc inox 304', N'thanh-la-inox-duc-304.jpg', CAST(76000.00 AS Decimal(10, 2)), N'<h1>Thanh la đ&uacute;c inox 304</h1>

<p>&nbsp;</p>

<p><strong>M&aacute;c th&eacute;p:</strong>&nbsp;SUS 304</p>

<p><strong>Bề mặt:</strong>&nbsp;No.1/2B/BA</p>

<p><strong>Chiều d&agrave;i:</strong>&nbsp;6000mm hoặc theo y&ecirc;u&nbsp; cầu của kh&aacute;ch h&agrave;ng</p>

<p><strong>Độ d&agrave;y:</strong>&nbsp;1.2 &ndash; 12mm</p>

<p><strong>Bề rộng bản:</strong>&nbsp;20mm &ndash; 100mm hoặc theo y&ecirc;u cầu</p>

<p><strong>Ti&ecirc;u chuẩn inox:</strong>&nbsp;ASTM/AISI</p>

<p><strong>Xuất xứ inox:</strong>&nbsp;Ch&acirc;u &Acirc;u, ch&acirc;u &Aacute;,&hellip;</p>

<p><strong>Gia c&ocirc;ng:</strong>&nbsp;C&oacute; thể cung cấp theo k&iacute;ch cỡ đặt h&agrave;ng</p>

<p><strong>Khả năng cung cấp:</strong>&nbsp;1,000 Ton/Tons/Thang</p>

<p><strong>Ti&ecirc;u chuẩn đ&oacute;ng g&oacute;i:</strong>&nbsp;Bao gồm PVC hoặc như bạn y&ecirc;u cầu</p>
', N'Thanh', 5, 4, 2, CAST(N'2024-05-22T08:31:09.170' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (23, N'THÉP HÌNH I - STEEL I BEAM', N'thep hinh cac loai_result.png', CAST(15800.00 AS Decimal(10, 2)), N'<p>Th&eacute;p h&igrave;nh I thuộc loại th&eacute;p c&aacute;n n&oacute;ng được ứng dụng trong x&acirc;y dựng kết cấu th&eacute;p</p>

<p>- Dựng kết cấu th&eacute;p như l&agrave;m khung nh&agrave; xưởng, khung nh&agrave; h&agrave;ng, khung nh&agrave;&nbsp;</p>

<p>- Dựng khung m&aacute;y</p>

<p>- D&ugrave;ng l&agrave;m dầm cẩu trục, thiết bị n&acirc;ng hạ</p>

<p>- X&acirc;y dựng cầu đường</p>

<p>v.v.</p>

<p><img alt="Thép hình I" src="https://sumac.vn/file-managers/uploads/images/thanh-vien/user-13/thep%20hinh%20I_result.jpg" /></p>

<p>Th&eacute;p h&igrave;nh I th&ocirc;ng thường c&aacute;nh thẳng</p>

<p><img alt="Bán thép hình" src="https://sumac.vn/file-managers/uploads/images/thanh-vien/user-13/ban%20thep%20hinh_result.jpg" /></p>

<p>Th&eacute;p h&igrave;nh I beam, được sử dụng l&agrave;m dầm cẩu trục kh&aacute; phổ biến</p>

<p><img alt="Thép làm xưởng" src="https://sumac.vn/file-managers/uploads/images/thanh-vien/user-13/cung%20cap%20thep%20hinh_result.jpg" /></p>

<p>Th&eacute;p h&igrave;nh sử dụng l&agrave;m khung nh&agrave; xưởng, khung nh&agrave; xưởng zamil</p>

<p><img alt="Kết cấu thép cao tầng" src="https://sumac.vn/file-managers/uploads/images/thanh-vien/user-13/structural_steel_vietnam_result.jpg" /></p>

<p>Th&eacute;p h&igrave;nh sử dụng l&agrave;m khung nh&agrave; cao tầng</p>
', N'KG', 4, 5, 4, CAST(N'2024-05-22T08:44:04.433' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (24, N'TÔN CUỘN MẠ KẼM', N'3-web-ton-10.jpg', CAST(85000.00 AS Decimal(10, 2)), N'<h3>T&Ocirc;N CUỘN MẠ KẼM</h3>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>Ti&ecirc;u chuẩn</td>
			<td>JIS G3302/BSEN 10346/AS 1397/ASTM A653- A653M</td>
		</tr>
		<tr>
			<td>Độ bền k&eacute;o</td>
			<td>&ge; 270 N/mm2</td>
		</tr>
		<tr>
			<td>Độ d&agrave;y th&eacute;p nền</td>
			<td>0,25 - 3.0 (mm)</td>
		</tr>
		<tr>
			<td>Chiều rộng khổ t&ocirc;n</td>
			<td>750 - 1250 (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh trong cuộn</td>
			<td>508 (&plusmn; 10), 610 (&plusmn; 10) (mm)</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh ngo&agrave;i cuộn</td>
			<td>900 &le; &Oslash; &le; 2.000</td>
		</tr>
		<tr>
			<td>Trọng lượng cuộn</td>
			<td>&le; 25 (tấn)</td>
		</tr>
		<tr>
			<td>Khối lượng lớp mạ</td>
			<td>Z060 - Z350</td>
		</tr>
		<tr>
			<td>Độ uốn</td>
			<td>&le; 2T</td>
		</tr>
	</tbody>
</table>
', N'Mét', 3, 6, 2, CAST(N'2024-05-22T16:08:02.217' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (25, N'Tôn Xốp Hòa Phát', N'ton.png', CAST(126000.00 AS Decimal(10, 2)), N'<p>T&ocirc;n H&ograve;a Ph&aacute;t sản phẩm mới ra mắt đạt chất lượng đ&atilde; được Trung t&acirc;m ph&acirc;n phối T&ocirc;n Việt mang ra cục đo lường Việt Nam để cấp cho Kh&aacute;ch h&agrave;ng,</p>

<p><a href="https://www.tonviet.com/ton-viet-han">T&ocirc;n H&ograve;a Ph&aacute;t&nbsp;1 lớp</a>&nbsp;c&oacute; sẵn c&aacute;c độ d&agrave;y 0.3 mm - 0.35mm - 0.4mm - 0.45mm c&aacute;n&nbsp;11 s&oacute;ng poshaco c&oacute; đủ c&aacute;c m&agrave;u để kh&aacute;ch h&agrave;ng lựa chọn như m&agrave;u đỏ, xanh r&ecirc;u, xanh dương,&nbsp;trắng sữa. hay v&agrave;ng kem...</p>

<p>Ch&uacute;ng t&ocirc;i phun xốp tất cả c&aacute;c loại tr&ecirc;n để tạo ra sản phẩm&nbsp;<a href="https://www.tonviet.com/ton-pu-3-lop">t&ocirc;n chống n&oacute;ng</a>&nbsp;PU giấy bạc, t&ocirc;n c&aacute;ch nhiệt PU giấy bạc. Gi&uacute;p m&aacute;t về m&ugrave;a h&egrave; v&agrave; ấm về mua đ&ocirc;ng.</p>

<p><a href="https://www.tonviet.com/ton-pu-3-lop"><img src="https://bizweb.dktcdn.net/thumb/large/100/216/165/products/img-20171106-103803.jpg?v=1545187630980" /></a></p>
', N'Tấm', 3, 6, 4, CAST(N'2024-05-22T16:14:30.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (26, N'Thép V 50 x 50 x 3 x 6m', N'Thep goc L (V) (12).jpg', CAST(282750.00 AS Decimal(10, 2)), N'<h1>Th&eacute;p V 50 x 50 x 3 x 6m</h1>

<p>Th&eacute;p V k&iacute;ch thước V 50 x 50 được nhập khẩu từ c&aacute;c nước Asia, được sử dụng rộng r&atilde;i trong c&aacute;c c&ocirc;ng tr&igrave;nh c&ocirc;ng nghiệp, khu c&ocirc;ng nghiệp chế xuất, trong c&aacute;c nh&agrave; xưởng, nh&agrave; m&aacute;y v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng kh&aacute;c.</p>
', N'Thanh', 3, 5, 4, CAST(N'2024-05-22T18:39:47.660' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (27, N'Thép hộp mạ kẽm 13 x 26 x 1.1', N'20140220_141459_LLS.jpg', CAST(75023.00 AS Decimal(10, 2)), N'<h1>Hộp mạ kẽm 13 x 26 x 1.1</h1>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống th&eacute;p H&ograve;a Ph&aacute;t đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p>Th&eacute;p hộp mạ kẽm được sản xuất theo ti&ecirc;u chuẩn TCVN 3783-83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>

<p>H&ograve;a Ph&aacute;t l&agrave; nh&agrave; sản xuất ống th&eacute;p lớn nhất Việt Nam với 3 d&ograve;ng sản phẩm ch&iacute;nh: Ống th&eacute;p (gồm ống th&eacute;p đen, ống th&eacute;p mạ kẽm nh&uacute;ng n&oacute;ng, ống th&eacute;p mạ kẽm); t&ocirc;n cuộn mạ kẽm v&agrave; t&ocirc;n c&aacute;n n&oacute;ng, c&aacute;n nguội c&aacute;c loại, trong đ&oacute;, ống th&eacute;p l&agrave; d&ograve;ng sản phẩm chủ lực, sản xuất theo ti&ecirc;u chuẩn Mỹ, Nhật Bản v&agrave; Anh Quốc. Sản phẩm ống th&eacute;p mang thương hiệu H&ograve;a Ph&aacute;t lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của người ti&ecirc;u d&ugrave;ng trong cả nước v&agrave; được sử dụng trong nhiều c&ocirc;ng tr&igrave;nh lớn như T&ograve;a nh&agrave; Quốc hội, dự &aacute;n Samsung Th&aacute;i Nguy&ecirc;n, cao tốc H&agrave; Nội &ndash; L&agrave;o Cai, &hellip;</p>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống th&eacute;p H&ograve;a Ph&aacute;t đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p>Th&eacute;p hộp mạ kẽm được sản xuất theo ti&ecirc;u chuẩn TCVN 3783-83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>
', N'Thanh', 3, 5, 4, CAST(N'2024-05-22T18:41:59.027' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (28, N'Thép ống mạ kẽm D12.7 x 1.0', N'Thep ong ma kem 16.jpg', CAST(34472.00 AS Decimal(10, 2)), N'<h1>Th&eacute;p ống mạ kẽm D12.7 x 1.0</h1>

<p>Th&eacute;p ống mạ kẽm b&aacute;n tại C&ocirc;ng ty cổ phần Th&eacute;p C&ocirc;ng Nghiệp H&agrave; Nội l&agrave; sản phẩm của tập to&agrave;n Ống Th&eacute;p H&ograve;a Ph&aacute;t, ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; đại l&yacute; cấp 1 của Th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống&nbsp;<a href="http://ongthephoaphat.net/"><strong>th&eacute;p H&ograve;a Ph&aacute;t</strong></a>&nbsp;đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p><a href="http://ongthephoaphat.net/bang-gia.html"><strong>Th&eacute;p ống mạ kẽm</strong></a>&nbsp;H&ograve;a Ph&aacute;t được sản xuất theo ti&ecirc;u chuẩn TCVN 3783 - 83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>

<p>H&ograve;a Ph&aacute;t l&agrave; nh&agrave; sản xuất ống th&eacute;p lớn nhất Việt Nam với 3 d&ograve;ng sản phẩm ch&iacute;nh: Ống th&eacute;p (gồm ống th&eacute;p đen, ống th&eacute;p mạ kẽm nh&uacute;ng n&oacute;ng, ống th&eacute;p mạ kẽm); t&ocirc;n cuộn mạ kẽm v&agrave; t&ocirc;n c&aacute;n n&oacute;ng, c&aacute;n nguội c&aacute;c loại, trong đ&oacute;, ống th&eacute;p l&agrave; d&ograve;ng sản phẩm chủ lực, sản xuất theo ti&ecirc;u chuẩn Mỹ, Nhật Bản v&agrave; Anh Quốc. Sản phẩm ống th&eacute;p mang thương hiệu H&ograve;a Ph&aacute;t lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của người ti&ecirc;u d&ugrave;ng trong cả nước v&agrave; được sử dụng trong nhiều c&ocirc;ng tr&igrave;nh lớn như T&ograve;a nh&agrave; Quốc hội, dự &aacute;n Samsung Th&aacute;i Nguy&ecirc;n, cao tốc H&agrave; Nội &ndash; L&agrave;o Cai, &hellip;</p>
', N'Thanh', 3, 5, 4, CAST(N'2024-05-22T18:43:19.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (29, N'Thép ống đen D15.9 x 1.2', N'Thep ong den 1.jpg', CAST(49982.00 AS Decimal(10, 2)), N'<h1>Ống đen D15.9 x 1.2</h1>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống&nbsp;<a href="http://ongthephoaphat.net/"><strong>th&eacute;p H&ograve;a Ph&aacute;t</strong></a>&nbsp;đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p><a href="http://ongthephoaphat.net/thep-ong-co-nhung-uu-diem-va-cong-dung-gi-trong-xay-dung-a13.html"><strong>Th&eacute;p ống</strong></a>&nbsp;đen H&ograve;a Ph&aacute;t được sản xuất theo ti&ecirc;u chuẩn TCVN 3783 - 83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>

<p>H&ograve;a Ph&aacute;t l&agrave; nh&agrave; sản xuất ống th&eacute;p lớn nhất Việt Nam với 3 d&ograve;ng sản phẩm ch&iacute;nh: Ống th&eacute;p (gồm ống th&eacute;p đen, ống th&eacute;p mạ kẽm nh&uacute;ng n&oacute;ng, ống th&eacute;p mạ kẽm); t&ocirc;n cuộn mạ kẽm v&agrave; t&ocirc;n c&aacute;n n&oacute;ng, c&aacute;n nguội c&aacute;c loại, trong đ&oacute;, ống th&eacute;p l&agrave; d&ograve;ng sản phẩm chủ lực, sản xuất theo ti&ecirc;u chuẩn Mỹ, Nhật Bản v&agrave; Anh Quốc. Sản phẩm ống th&eacute;p mang thương hiệu H&ograve;a Ph&aacute;t lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của người ti&ecirc;u d&ugrave;ng trong cả nước v&agrave; được sử dụng trong nhiều c&ocirc;ng tr&igrave;nh lớn như T&ograve;a nh&agrave; Quốc hội, dự &aacute;n Samsung Th&aacute;i Nguy&ecirc;n, cao tốc H&agrave; Nội &ndash; L&agrave;o Cai, &hellip;</p>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống th&eacute;p H&ograve;a Ph&aacute;t đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p>Th&eacute;p ống đen H&ograve;a Ph&aacute;t được sản xuất theo ti&ecirc;u chuẩn TCVN 3783 - 83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>
', N'Thanh', 3, 5, 2, CAST(N'2024-05-22T18:45:53.630' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (30, N'Thép hộp đen 13 x 26 x 1.2', N'20140220_112455.jpg', CAST(78132.00 AS Decimal(10, 2)), N'<h1>Th&eacute;p hộp đen 13 x 26 x 1.2</h1>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống th&eacute;p H&ograve;a Ph&aacute;t đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p>Th&eacute;p hộp đen được sản xuất theo ti&ecirc;u chuẩn TCVN 3783-83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>

<p>H&ograve;a Ph&aacute;t l&agrave; nh&agrave; sản xuất ống th&eacute;p lớn nhất Việt Nam với 3 d&ograve;ng sản phẩm ch&iacute;nh: Ống th&eacute;p (gồm ống th&eacute;p đen, ống th&eacute;p mạ kẽm nh&uacute;ng n&oacute;ng, ống th&eacute;p mạ kẽm); t&ocirc;n cuộn mạ kẽm v&agrave; t&ocirc;n c&aacute;n n&oacute;ng, c&aacute;n nguội c&aacute;c loại, trong đ&oacute;, ống th&eacute;p l&agrave; d&ograve;ng sản phẩm chủ lực, sản xuất theo ti&ecirc;u chuẩn Mỹ, Nhật Bản v&agrave; Anh Quốc. Sản phẩm ống th&eacute;p mang thương hiệu H&ograve;a Ph&aacute;t lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của người ti&ecirc;u d&ugrave;ng trong cả nước v&agrave; được sử dụng trong nhiều c&ocirc;ng tr&igrave;nh lớn như T&ograve;a nh&agrave; Quốc hội, dự &aacute;n Samsung Th&aacute;i Nguy&ecirc;n, cao tốc H&agrave; Nội &ndash; L&agrave;o Cai, &hellip;</p>

<p>C&ocirc;ng ty cổ phần c&ocirc;ng nghiệp H&agrave; nội l&agrave; đơn vị ph&acirc;n phối ch&iacute;nh thức của Ống th&eacute;p H&ograve;a Ph&aacute;t, sản phẩm ống th&eacute;p H&ograve;a Ph&aacute;t đ&atilde; được ch&uacute;ng t&ocirc;i ph&acirc;n phối khắp c&aacute;c tỉnh th&agrave;nh trong cả nước, c&aacute;c c&ocirc;ng tr&igrave;nh trọng điểm, c&aacute;c khu c&ocirc;ng nghiệp, nh&agrave; m&aacute;y, xưởng sản xuất.</p>

<p>Th&eacute;p hộp đen được sản xuất theo ti&ecirc;u chuẩn TCVN 3783-83. Sản phẩm xuất xưởng lu&ocirc;n k&egrave;m theo chứng chỉ chất lượng sản xuất ch&iacute;nh h&atilde;ng.</p>
', N'Thanh', 3, 5, 4, CAST(N'2024-05-22T18:47:56.463' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [TenSP], [HinhAnh], [GiaGoc], [MoTa], [DonViTinh], [IdNCC], [IdDM], [IdKM], [NgayDang]) VALUES (31, N'VÍT TỰ KHOAN INOX ĐẦU BẰNG', N'vit1.jpg', CAST(100000.00 AS Decimal(10, 2)), N'<h2><strong>1.&nbsp;Giới thiệu V&iacute;t tự khoan&nbsp;INOX đầu bằng:</strong></h2>

<p><em><strong>V&iacute;t tự khoan&nbsp;INOX đầu bằng</strong></em>&nbsp;c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave;&nbsp;<strong>V&iacute;t đu&ocirc;i c&aacute; đầu bằng</strong>.&nbsp;V&iacute;t tự khoan&nbsp;INOX đầu bằng&nbsp;c&oacute; đầu bằng vặn t&ocirc; v&iacute;t, phần đầu mũi cấu tạo h&igrave;nh đu&ocirc;i c&aacute; tự khoan gi&uacute;p cho việc bắn t&ocirc;n hay sắt dễ d&agrave;ng.</p>

<p>&nbsp;</p>

<p><img alt="Vít tự khoan INOX đầu bằng" src="https://file.hstatic.net/200000242589/file/vit_tu_khoan_inox_dau_bang_6fdf079186b1428c8f3406533896568e_grande.jpg" /></p>

<p><em>V&iacute;t tự khoan INOX đầu bằng</em></p>

<p>&nbsp;</p>

<h2><strong>2. Th&ocirc;ng số kỹ thuật&nbsp;V&iacute;t tự khoan&nbsp;INOX đầu bằng DIN 7504.P:</strong></h2>

<p>- Chất liệu: Inox 410, 304</p>

<p>- Đường k&iacute;nh th&ocirc;ng dụng: M4.2</p>

<p>- Chiều d&agrave;i L= 13 mm - 38 mm</p>

<p>- Loại ren: Ren&nbsp;suốt</p>

<p><img alt="Vít tự khoan INOX đầu bằng" src="https://file.hstatic.net/200000242589/file/vit_tu_khoan_inox_dau_bang__1__7c70c39277924a67a79d7adac99260d0_grande.jpg" /></p>

<table>
	<tbody>
		<tr>
			<td>d</td>
			<td>ST2.9</td>
			<td>ST3.5</td>
			<td>ST3.9</td>
			<td>ST4.2</td>
			<td>ST4.8</td>
			<td>ST5.5</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&ndash;</td>
			<td>1,3</td>
			<td>1,3</td>
			<td>1,4</td>
			<td>1,6</td>
			<td>1,8</td>
		</tr>
		<tr>
			<td>dk</td>
			<td>&ndash;</td>
			<td>6,8</td>
			<td>7,5</td>
			<td>8,1</td>
			<td>9,5</td>
			<td>10,8</td>
		</tr>
		<tr>
			<td>L1</td>
			<td>&ndash;</td>
			<td>5</td>
			<td>6</td>
			<td>7</td>
			<td>8</td>
			<td>10</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>3.&nbsp;Vật liệu chế tạo&nbsp;V&iacute;t tự khoan&nbsp;INOX đầu bằng:</strong></h2>

<h3><strong>3.1 V&iacute;t tự khoan đầu bằng&nbsp;INOX&nbsp;410:</strong></h3>

<p>&nbsp;</p>

<p>V&iacute;t tự khoan&nbsp;INOX 410 c&oacute; độ cứng cao b&ecirc;n c&oacute; thể khoan xuy&ecirc;n thủng rất nhiều vật liệu nền kh&aacute;c nhau, c&oacute; khả năng chống ăn m&ograve;n h&oacute;a học, chịu được m&ocirc;i trường khắc nhiệt ngo&agrave;i trời.</p>

<p>&nbsp;</p>

<h3><strong>3.2 V&iacute;t tự khoan đầu bằng&nbsp;INOX 304:</strong></h3>

<p><strong>V&iacute;t tự khoan đầu bằng&nbsp;INOX 304</strong>&nbsp;được sản xuất từ th&eacute;p kh&ocirc;ng gỉ&nbsp;SUS304, l&agrave; vật liệu được sử dụng rất rộng r&atilde;i trong ng&agrave;nh bu l&ocirc;ng ốc v&iacute;t. V&iacute;t tự khoan đầu bằng&nbsp;INOX 304 c&oacute; khả năng chống ăn m&ograve;n rất tốt n&ecirc;n thường được sử dụng tại những m&ocirc;i trường c&oacute; độ ăn m&ograve;n cao như h&oacute;a chất, nước biển, hay ngo&agrave;i trời. Tuy nhi&ecirc;n V&iacute;t tự khoan đầu bằng&nbsp;INOX 304 c&oacute; độ cứng kh&ocirc;ng bằng INOX 410 n&ecirc;n&nbsp;phải khoan mồi&nbsp;trong qu&aacute; tr&igrave;nh thi c&ocirc;ng. V&iacute;t tự khoan đầu bằng&nbsp;INOX 304 thường c&oacute; gi&aacute; th&agrave;nh cao hơn c&aacute;c loại v&iacute;t tự khoan&nbsp;INOX 201, INOX 410.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'KG', 6, 7, 2, CAST(N'2024-06-03T10:33:17.840' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2, N'kh1', N'123', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (4, N'vanquynh140498@gmail.com', N'123', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (5, N'quyet@gmail.com', N'123', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (6, N'dat123@gmail.com', N'hãnhinh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (7, N'hanh@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (8, N'hanh2@gmail.com', N'1234', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (1006, N'hanh@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (1007, N'Hanh@gmail.com', N'hanh12', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2007, N'hanhphuong@gmail.com', N'hanh1905', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2008, N'hanhh@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2009, N'hanhh@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2010, N'hanhh@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2011, N'hanh@gmail.com', N'1234', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2012, N'hanh@gmail.com', N'1234', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2013, N'hanh@gmail.com', N'hanhe', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2014, N'dat@gmail.com', N'dat', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2015, N'dat@gmail.com', N'dat123', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2016, N'hanh@gmail.com', N'hanh5', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2017, N'hanh222@gmail.com', N'hanh', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2018, N'Dat123@gmail.com', N'1905', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2019, N'dat@gmail.com', N'dat1234', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2020, N'Dat123@gmail.com', N'12343', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2021, N'Dat123@gmail.com', N'123434', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2022, N'Dat123@gmail.com', N'1111111', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2023, N'Dat123@gmail.com', N'1111', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (2024, N'Dat123@gmail.com', N'11111111', 3)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [PhanQuyen]) VALUES (3019, N'dat123123@gmail.com', N'dat', 3)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTin] ON 

INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (3, N'admin', 0, CAST(N'2024-05-16T00:00:00.000' AS DateTime), N'0330980098', N'admin@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (7, N'Nguyễn Ngọc Đạt', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), N'0866952669', N'quyet@gmail.com', N'Ba Vì - Sơn Tây', 5)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (8, N'Nguyễn Ngọc Đạt', 1, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'0123456789', N'dat123@gmail.com', N'Hải Dương', 6)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (9, N'Đạt Nguyễn', 1, CAST(N'2004-05-19T00:00:00.000' AS DateTime), N'0987654321', N'hanh@gmail.com', N'HÀ NỘI', 7)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (10, N'Nguyễn Ngọc Đạt', 0, CAST(N'2004-05-19T00:00:00.000' AS DateTime), N'12345678', N'hanh2@gmail.com', N'Vĩnh Phúc', 8)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (1008, N'Phương Hạnh', 0, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'123456789', N'hanh@gmail.com', N'HÀ NỘI', 1006)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (1009, N'dat', 0, CAST(N'2002-03-12T00:00:00.000' AS DateTime), N'1235689', N'Hanh@gmail.com', N'Hà Nôi', 1007)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2009, N'Tống Hạnh', 1, CAST(N'2004-05-19T00:00:00.000' AS DateTime), N'0999999999', N'hanhphuong@gmail.com', N'Văn tiến dũng, cầu giấy, hà nội', 2007)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2010, N'Phuong Hanh', 0, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'12345678', N'hanhh@gmail.com', N'12345678', 2008)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2011, N'Phuong Hanh', 0, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'12345678', N'hanhh@gmail.com', N'12345678', 2009)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2012, N'Phuong Hanh', 0, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'12345678', N'hanhh@gmail.com', N'12345678', 2010)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2013, N'Phuong Hanh', 1, CAST(N'2002-06-23T00:00:00.000' AS DateTime), N'12345678', N'hanh@gmail.com', N'Hà Nội', 2011)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2014, N'Phuong Hanh', 1, CAST(N'2002-06-23T00:00:00.000' AS DateTime), N'12345678', N'hanh@gmail.com', N'Hà Nội', 2012)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2015, N'Phuong Hanh', 1, CAST(N'1889-11-12T00:00:00.000' AS DateTime), N'234444444', N'hanh@gmail.com', N'Hà Nội', 2013)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2016, N'Đạt nguyễn', 1, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'0398808521', N'dat@gmail.com', N'Hà Nội', 2014)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2017, N'Đạt nguyễn', 1, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'0398808521', N'dat@gmail.com', N'Hà Nội', 2015)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2018, N'Đạt nguyễn', 1, CAST(N'1999-11-12T00:00:00.000' AS DateTime), N'0398808521', N'hanh@gmail.com', N'Hà Nội', 2016)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2019, N'hhhhhh', 1, CAST(N'2002-10-20T00:00:00.000' AS DateTime), N'1234567890', N'hanh222@gmail.com', N'Haaa', 2017)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2020, N'Nguyễn Ngọc Đạt', 1, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'0398808521', N'Dat123@gmail.com', N'số 64, Tứ Minh, Tp.Hải Dương', 2018)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2021, N'Nguyễn Ngọc Đạt', 1, CAST(N'2009-11-11T00:00:00.000' AS DateTime), N'1234567890', N'dat@gmail.com', N'HÀ NỘI', 2019)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (2022, N'Nguyễn Ngọc Đạt', 1, CAST(N'2002-02-12T00:00:00.000' AS DateTime), N'0987654321', N'Dat123@gmail.com', N'số 64, Tứ Minh, Tp.Hải Dương', 2024)
INSERT [dbo].[ThongTin] ([Id], [HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [DiaChi], [IdTK]) VALUES (3021, N'Đạt', 1, CAST(N'2002-10-27T00:00:00.000' AS DateTime), N'0398808521', N'dat123123@gmail.com', N'Hà Nội', 3019)
SET IDENTITY_INSERT [dbo].[ThongTin] OFF
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([IdTK])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[DonHangCT]  WITH CHECK ADD FOREIGN KEY([IdDH])
REFERENCES [dbo].[DonHang] ([Id])
GO
ALTER TABLE [dbo].[DonHangCT]  WITH CHECK ADD FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IdDM])
REFERENCES [dbo].[DanhMucSP] ([Id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IdKM])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IdNCC])
REFERENCES [dbo].[NCC] ([Id])
GO
ALTER TABLE [dbo].[ThongTin]  WITH CHECK ADD FOREIGN KEY([IdTK])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
