USE [FinalDatabase]
GO
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[MACN] [nchar](10) NOT NULL,
	[TENCN] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](100) NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHINHANH_SANPHAM]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH_SANPHAM](
	[MACN] [nchar](10) NOT NULL,
	[MASP] [nchar](100) NOT NULL,
	[SLUONGSP] [nchar](10) NULL,
 CONSTRAINT [PK_CHINHANH_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDH]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDH](
	[MADH] [nchar](100) NOT NULL,
	[MASP] [nchar](100) NOT NULL,
	[SLUONG] [nchar](10) NULL,
	[TONGTIEN] [money] NULL,
 CONSTRAINT [PK_CHITIETDH] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [nchar](100) NOT NULL,
	[TTIEN] [money] NULL,
	[TTOAN] [money] NULL,
	[THOIGIAN] [datetime] NULL,
	[MANV] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [nchar](10) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[NGAYSINH] [date] NULL,
	[CMND] [nchar](10) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[CHUCVU] [nvarchar](50) NULL,
	[CALAMVIEC] [nchar](10) NULL,
	[NGAYNV] [date] NULL,
	[LUONG] [money] NULL,
	[MACN] [nchar](10) NULL,
	[TUOI] [nchar](5) NULL,
 CONSTRAINT [PK_NHANVIEN1] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 1/5/2021 9:01:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [nchar](100) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[GIATIEN] [money] NULL,
	[NHASX] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0001    ', N'CHI NHÁNH PHẠM VIỆT CHÁNH', N'216 Pham Viet Chanh St., Lot D, Ward 19')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0002    ', N'CHI NHÁNH TRẦN HƯNG ĐẠO', N'234 Tran Hung Dao Street, Hai Duong City')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0003    ', N'CHI NHÁNH VĨNH TÚY', N'24 Vinh Tuy, Lane 120')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0004    ', N'CHI NHÁNH NGUYỄN THỊ MINH KHAI 1', N'494 Nguyen Thi Minh Khai, Dist.3')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0005    ', N'CHI NHÁNH KHƯƠNG ĐÌNH', N'6 Khuong Dinh, Lane 400')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0006    ', N'CHI NHÁNH ĐỖ TĂNG TẾ', N'185 Đỗ Năng Tế, phường An Lạc, quận Bình Tân')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0007    ', N'CHI NHÁNH NGUYỄN CƯ TRINH', N'Nguyen Cu Trinh Street, Nguyen Cu Trinh Ward, District 1')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0008    ', N'CHI NHÁNH TRẦN HỮU', N'344 Tran PHuu Str.')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0009    ', N'CHI NHÁNH ROSEMONT 1', N'4134  Rosemont Avenue')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0010    ', N'CHI NHÁNH ROSEMONT 2', N'4142  Rosemont Avenue')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0011    ', N'CHI NHÁNH THỦY KHUÊ', N'424 lane, Thuy Khue st., Tay Ho Dist')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0012    ', N'CHI NHÁNH BẦU CÁT', N'18-19 Lot O, Bau Cat Area, Ward 13')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0013    ', N'CHI NHÁNH NGUYỄN THỊ THẬP', N'142/19 Nguyen Thi Thap St., Binh Thuan Ward, Dist. 7')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0014    ', N'CHI NHÁNH NGUYỄN KHIÊM', N'694/13 Nguyen Kiem, Ward 4')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0015    ', N'CHI NHÁNH SMITH ST', N'4999  Smith Street')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0016    ', N'CHI NHÁNH  TRẦN ĐOÀN KHÁNH', N'11Bis Tran Doan Khanh, Dist.1')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0017    ', N'CHI NHÁNH CHÙA BỘC', N'104 Alley 165, Chua Boc Str.')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0018    ', N'CHI NHÁNH NGUYỄN THI MINH KHAI 2', N'494 Nguyen Thi Minh Khai, Dist.3')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0019    ', N'CHI NHÁNH PHẠM NGŨ LÃO', N'283/21 Pham Ngu Lao Street,  Pham Ngu Lao Ward, District 1')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0020    ', N'CHI NHÁNH THÁI HẠ', N'172 Thai Ha')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0021    ', N'CHI NHÁNH HẢI PHÒNG', N'293 Hai Phong St.')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0022    ', N'CHI NHÁNH HIỆP NHẤT', N'1059 Hiep Nhat, Ward 4')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0023    ', N'CHI NHÁNH NGUYỄN THÁI SƠN', N'2 Nguyen Thai Son Street ,  Ward 3')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0024    ', N'CHI NHÁNH NGỌC KHÁNH', N'Unit 302, 168 Ngoc Khanh St.')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0025    ', N'CHI NHÁNH PHƯƠNG MAI', N'141 Phuong Mai')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0026    ', N'CHI NHÁNH ĐỐNG ĐA', N'20/117 Thai Ha St Dong Da Dist')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0027    ', N'CHI NHÁNH PHẠM VĂN HẢI', N'500/96 Pham Van Hai, Ward 3')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0028    ', N'CHI NHÁNH HOA HÙNG', N'107 Hoa Hung St., Ward 12, Dist. 10')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0029    ', N'CHI NHÁNH HAMLET', N'4 Hamlet')
INSERT [dbo].[CHINHANH] ([MACN], [TENCN], [DIACHI]) VALUES (N'CN0030    ', N'CHI NHÁNH NGUYỄN VĂN LƯƠNG', N'116 Nguyen Van Luong Street, Ward 10')
GO
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0001    ', N'D00001                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0002    ', N'D00002                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0003    ', N'D00003                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0004    ', N'D00004                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0005    ', N'D00005                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0006    ', N'D00006                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0007    ', N'D00007                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0008    ', N'D00008                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0009    ', N'D00009                                                                                              ', N'2000      ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0010    ', N'D00010                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0011    ', N'F00001                                                                                              ', N'300       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0012    ', N'F00002                                                                                              ', N'500       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0013    ', N'F00003                                                                                              ', N'600       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0014    ', N'F00004                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0015    ', N'F00005                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0016    ', N'F00006                                                                                              ', N'400       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0017    ', N'F00007                                                                                              ', N'500       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0018    ', N'F00008                                                                                              ', N'300       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0019    ', N'F00009                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0020    ', N'F00010                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0021    ', N'M00001                                                                                              ', N'900       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0022    ', N'M00002                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0023    ', N'M00003                                                                                              ', N'200       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0024    ', N'M00004                                                                                              ', N'10000     ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0025    ', N'M00005                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0026    ', N'M00006                                                                                              ', N'100       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0027    ', N'M00007                                                                                              ', N'20000     ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0028    ', N'M00008                                                                                              ', N'900       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0029    ', N'M00009                                                                                              ', N'700       ')
INSERT [dbo].[CHINHANH_SANPHAM] ([MACN], [MASP], [SLUONGSP]) VALUES (N'CN0030    ', N'M00010                                                                                              ', N'100       ')
GO
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00001                                                                                             ', N'D00001                                                                                              ', N'9         ', 90000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00002                                                                                             ', N'D00010                                                                                              ', N'2         ', 22000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00003                                                                                             ', N'D00010                                                                                              ', N'3         ', 33000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00004                                                                                             ', N'F00004                                                                                              ', N'1         ', 50000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00005                                                                                             ', N'D00010                                                                                              ', N'9         ', 99000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00005                                                                                             ', N'M00008                                                                                              ', N'5         ', 10000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00006                                                                                             ', N'D00009                                                                                              ', N'65        ', 780000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00007                                                                                             ', N'F00004                                                                                              ', N'5         ', 250000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00007                                                                                             ', N'F00006                                                                                              ', N'8         ', 128000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00008                                                                                             ', N'F00002                                                                                              ', N'2         ', 35000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00009                                                                                             ', N'M00010                                                                                              ', N'94        ', 2350000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00010                                                                                             ', N'D00010                                                                                              ', N'200       ', 2200000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00011                                                                                             ', N'M00007                                                                                              ', N'10        ', 200000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00012                                                                                             ', N'D00010                                                                                              ', N'200       ', 2200000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00013                                                                                             ', N'D00003                                                                                              ', N'200       ', 2400000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00014                                                                                             ', N'M00008                                                                                              ', N'5         ', 10000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00015                                                                                             ', N'M00003                                                                                              ', N'4         ', 60000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00016                                                                                             ', N'D00003                                                                                              ', N'6         ', 72000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00016                                                                                             ', N'D00005                                                                                              ', N'4         ', 40000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00016                                                                                             ', N'M00003                                                                                              ', N'8         ', 120000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00017                                                                                             ', N'F00010                                                                                              ', N'8         ', 96000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00018                                                                                             ', N'F00002                                                                                              ', N'2         ', 35000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00019                                                                                             ', N'D00005                                                                                              ', N'25        ', 250000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00020                                                                                             ', N'F00004                                                                                              ', N'16        ', 800000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00021                                                                                             ', N'M00008                                                                                              ', N'1         ', 2000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00022                                                                                             ', N'M00008                                                                                              ', N'3         ', 6000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00023                                                                                             ', N'M00006                                                                                              ', N'2         ', 12000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00024                                                                                             ', N'M00006                                                                                              ', N'11        ', 66000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00025                                                                                             ', N'M00007                                                                                              ', N'1         ', 20000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00026                                                                                             ', N'M00004                                                                                              ', N'2         ', 4000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00027                                                                                             ', N'M00002                                                                                              ', N'2         ', 30000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00028                                                                                             ', N'M00008                                                                                              ', N'10        ', 20000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00029                                                                                             ', N'M00001                                                                                              ', N'3         ', 60000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLUONG], [TONGTIEN]) VALUES (N'DH00030                                                                                             ', N'F00007                                                                                              ', N'6         ', 90000.0000)
GO
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00001                                                                                             ', 90000.0000, 100000.0000, CAST(N'2033-05-19T00:00:00.000' AS DateTime), N'NV00001   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00002                                                                                             ', 22000.0000, 22000.0000, CAST(N'1943-11-15T00:00:00.000' AS DateTime), N'NV00002   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00003                                                                                             ', 33000.0000, 40000.0000, CAST(N'1981-12-02T00:00:00.000' AS DateTime), N'NV00003   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00004                                                                                             ', 50000.0000, 50000.0000, CAST(N'1961-04-30T00:00:00.000' AS DateTime), N'NV00004   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00005                                                                                             ', 99000.0000, 1000000.0000, CAST(N'2050-12-29T00:00:00.000' AS DateTime), N'NV00005   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00006                                                                                             ', 12000000.0000, 12000000.0000, CAST(N'1981-12-18T00:00:00.000' AS DateTime), N'NV00006   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00007                                                                                             ', 250000.0000, 250000.0000, CAST(N'2011-02-14T00:00:00.000' AS DateTime), N'NV00007   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00008                                                                                             ', 35000.0000, 35000.0000, CAST(N'2010-07-31T00:00:00.000' AS DateTime), N'NV00008   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00009                                                                                             ', 725000.0000, 725000.0000, CAST(N'1937-04-03T00:00:00.000' AS DateTime), N'NV00009   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00010                                                                                             ', 220000.0000, 220000.0000, CAST(N'2023-06-18T00:00:00.000' AS DateTime), N'NV00010   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00011                                                                                             ', 200000.0000, 200000.0000, CAST(N'2023-04-13T00:00:00.000' AS DateTime), N'NV00011   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00012                                                                                             ', 2200000.0000, 22000000.0000, CAST(N'2078-11-17T00:00:00.000' AS DateTime), N'NV00012   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00013                                                                                             ', 2400000.0000, 240000.0000, CAST(N'2039-02-23T00:00:00.000' AS DateTime), N'NV00013   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00014                                                                                             ', 2000.0000, 2000.0000, CAST(N'2026-11-29T00:00:00.000' AS DateTime), N'NV00014   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00015                                                                                             ', 60000.0000, 60000.0000, CAST(N'2053-02-18T00:00:00.000' AS DateTime), N'NV00015   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00016                                                                                             ', 720000.0000, 720000.0000, CAST(N'2023-04-22T00:00:00.000' AS DateTime), N'NV00016   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00017                                                                                             ', 96000.0000, 96000.0000, CAST(N'2056-02-16T00:00:00.000' AS DateTime), N'NV00017   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00018                                                                                             ', 35000.0000, 35000.0000, CAST(N'1923-04-29T00:00:00.000' AS DateTime), N'NV00018   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00019                                                                                             ', 250000.0000, 250000.0000, CAST(N'1993-08-03T00:00:00.000' AS DateTime), N'NV00019   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00020                                                                                             ', 800000.0000, 800000.0000, CAST(N'2008-08-21T00:00:00.000' AS DateTime), N'NV00020   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00021                                                                                             ', 2000.0000, 2000.0000, CAST(N'1927-12-23T00:00:00.000' AS DateTime), N'NV00021   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00022                                                                                             ', 6000.0000, 6000.0000, CAST(N'2072-11-05T00:00:00.000' AS DateTime), N'NV00022   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00023                                                                                             ', 12000.0000, 12000.0000, CAST(N'1905-02-23T00:00:00.000' AS DateTime), N'NV00023   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00024                                                                                             ', 66000.0000, 66000.0000, CAST(N'2029-02-02T00:00:00.000' AS DateTime), N'NV00024   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00025                                                                                             ', 20000.0000, 20000.0000, CAST(N'1931-07-29T00:00:00.000' AS DateTime), N'NV00025   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00026                                                                                             ', 4000.0000, 4000.0000, CAST(N'1918-03-04T00:00:00.000' AS DateTime), N'NV00026   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00027                                                                                             ', 50000.0000, 50000.0000, CAST(N'1905-08-01T00:00:00.000' AS DateTime), N'NV00027   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00028                                                                                             ', 20000.0000, 20000.0000, CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'NV00028   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00029                                                                                             ', 60000.0000, 60000.0000, CAST(N'1979-02-21T00:00:00.000' AS DateTime), N'NV00029   ')
INSERT [dbo].[DONHANG] ([MADH], [TTIEN], [TTOAN], [THOIGIAN], [MANV]) VALUES (N'DH00030                                                                                             ', 70000.0000, 70000.0000, CAST(N'1929-03-23T00:00:00.000' AS DateTime), N'NV00030   ')
GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00001   ', N'Phạm Ngọc Ðoàn', N'NAM', CAST(N'1979-09-14' AS Date), N'1385658603', N'4A Hoang Van Thu, Pleiku City', N'THU NGÂN', N'FT        ', CAST(N'2019-01-01' AS Date), 4000000.0000, N'CN0001    ', N'40   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00002   ', N'Ngô Anh Khải', N'NAM', CAST(N'1980-11-03' AS Date), N'1570604549', N'116 Nguyen Van Luong Street, Ward 10', N'QUẢN LÝ', N'PT1       ', CAST(N'2019-01-01' AS Date), 5000000.0000, N'CN0007    ', N'39   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00003   ', N'Dương Thành Thiện', N'NAM', CAST(N'1993-05-09' AS Date), N'1788462047', N'34 Nguyen Ba Huan St., Thao Dien Ward, Dist. 2', N'THU NGÂN', N'FT        ', CAST(N'2019-01-01' AS Date), 4000000.0000, N'CN0005    ', N'26   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00004   ', N'Lương Hữu Tài', N'NAM', CAST(N'2002-11-12' AS Date), N'1882266441', N'88 Ho Bieu Chanh St., Ward 11', N'THU NGÂN', N'PT2       ', CAST(N'2020-12-01' AS Date), 4000000.0000, N'CN0002    ', N'18   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00005   ', N'Vũ Ðình Trung', N'NAM', CAST(N'2011-11-06' AS Date), N'1861725480', N'202 Truong Dinh St., Tuong Mai Ward', N'THU NGÂN', N'FT        ', CAST(N'2035-06-12' AS Date), 4000000.0000, N'CN0005    ', N'24   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00006   ', N'Dữu Anh Khôi', N'NAM', CAST(N'1986-10-02' AS Date), N'1807298869', N'21 Ly Nam De StreetHoan Kiem District', N'NHÂN VIÊN', N'FT        ', CAST(N'2018-02-02' AS Date), 2000000.0000, N'CN0006    ', N'32   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00007   ', N'Tống Hiệp Vũ', N'NAM', CAST(N'1973-05-15' AS Date), N'1447899317', N'E44 Hoang Quoc Viet street (Phu Thuan Residence), Phu Thuan ward, District 7', N'NHÂN VIÊN', N'FT        ', CAST(N'2019-05-12' AS Date), 2000000.0000, N'CN0007    ', N'46   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00008   ', N'Phan Chí Sơn', N'NAM', CAST(N'1970-08-02' AS Date), N'1850174967', N'113B Nam Cao, Giang Vo Ward', N'NHÂN VIÊN', N'PT3       ', CAST(N'2011-02-02' AS Date), 2000000.0000, N'CN0027    ', N'41   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00009   ', N'Phan Gia Huy', N'NAM', CAST(N'1999-03-29' AS Date), N'1531377537', N'288R No Trang Long Street, Ward 12', N'THU NGÂN', N'PT3       ', CAST(N'2020-05-06' AS Date), 4000000.0000, N'CN0001    ', N'21   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00010   ', N'Châu Ngọc Khôi', N'NAM', CAST(N'2002-10-22' AS Date), N'1246703454', N'298 Nguyen Trong Tuyen Street, Ward 1', N'QUẢN LÝ', N'PT2       ', CAST(N'2021-06-02' AS Date), 5000000.0000, N'CN0006    ', N'19   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00011   ', N'Bùi Phương Thi', N'NU', CAST(N'1985-07-26' AS Date), N'1102461509', N'105/119 Giap Bat Street', N'THU NGÂN', N'FT        ', CAST(N'2016-01-24' AS Date), 4000000.0000, N'CN0007    ', N'31   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00012   ', N'Châu Ngọc Quế', N'NU', CAST(N'1984-02-10' AS Date), N'1385081282', N'745 Cach Mang Thang Tam St., Ward 6', N'THU NGÂN', N'PT1       ', CAST(N'2004-09-01' AS Date), 4000000.0000, N'CN0006    ', N'20   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00013   ', N'Phí Bích Diệp', N'NU', CAST(N'2015-05-04' AS Date), N'1281819065', N'6F TS Building 17 No.2 street, Cu Xa Do Thanh, Ward 4 Dist. 3', N'THU NGÂN', N'FT        ', CAST(N'2039-02-16' AS Date), 4000000.0000, N'CN0007    ', N'24   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00014   ', N'Thủy Vân Phương', N'NU', CAST(N'2059-08-21' AS Date), N'1441024246', N'H38-K300 Cong Hoa St., Ward 12', N'THU NGÂN', N'FT        ', CAST(N'2080-02-10' AS Date), 4000000.0000, N'CN0017    ', N'21   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00015   ', N'Hoàng Bích Duyên', N'NU', CAST(N'2018-03-17' AS Date), N'1247605784', N'2952C Pham The Hien, Ward7, District 8', N'THU NGÂN', N'FT        ', CAST(N'2039-10-20' AS Date), 4000000.0000, N'CN0007    ', N'21   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00016   ', N'Võ Diệu Loan', N'NU', CAST(N'1995-07-23' AS Date), N'1754413030', N'12/B24 Phan Huy ich, Ward 12', N'THU NGÂN', N'FT        ', CAST(N'2019-01-05' AS Date), 4000000.0000, N'CN0006    ', N'24   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00017   ', N'Phí Quỳnh Anh', N'NU', CAST(N'1983-03-25' AS Date), N'1620010187', N'NUL29 Le Duan, Dist.1L', N'NHÂN VIÊN', N'FT        ', CAST(N'2010-06-01' AS Date), 2000000.0000, N'CN0006    ', N'27   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00018   ', N'Hồ Diễm Kiều', N'NU', CAST(N'1982-04-04' AS Date), N'1803671715', N'9 Nguyen Huy Tuong, Ward 6', N'NHÂN VIÊN', N'PT1       ', CAST(N'2019-07-12' AS Date), 2000000.0000, N'CN0003    ', N'37   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00019   ', N'Mai Thúy Hương', N'NU', CAST(N'1991-05-19' AS Date), N'1261527301', N'165/2 Street 3/2, Ward 11, District 10', N'NHÂN VIÊN', N'FT        ', CAST(N'2019-09-11' AS Date), 2000000.0000, N'CN0022    ', N'28   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00020   ', N'Nguyễn Vân Trang', N'NAM', CAST(N'2000-09-24' AS Date), N'1407050524', N'Floor 3, 283/3 Doi Can St.', N'QUẢN LÝ', N'PT2       ', CAST(N'2019-06-10' AS Date), 5000000.0000, N'CN0003    ', N'19   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00021   ', N'Kim Chí Giang', N'NAM', CAST(N'2060-02-05' AS Date), N'1870663958', N'34 D2, D5, Ward 25', N'NHÂN VIÊN', N'PT3       ', CAST(N'2090-03-29' AS Date), 2000000.0000, N'CN0006    ', N'30   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00022   ', N'Liễu Từ Ðông', N'NAM', CAST(N'1970-02-19' AS Date), N'1544761361', N'37 Street 17Hiep Binh Chanh wardThu Duc district', N'NHÂN VIÊN', N'PT1       ', CAST(N'2015-02-10' AS Date), 2000000.0000, N'CN0003    ', N'45   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00023   ', N'Tôn Phi Cường', N'NAM', CAST(N'1988-04-10' AS Date), N'1804206487', N'106/1133 Le Duc Tho, Ward 13', N'NHÂN VIÊN', N'PT1       ', CAST(N'2019-01-02' AS Date), 2000000.0000, N'CN0004    ', N'31   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00024   ', N'Đào Phú Hiệp', N'NAM', CAST(N'2059-07-29' AS Date), N'1451322455', N'22 Ho Dac Di St., Lane 119/1/6', N'NHÂN VIÊN', N'FT        ', CAST(N'2089-07-01' AS Date), 2000000.0000, N'CN0030    ', N'30   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00025   ', N'Thủy Minh Thắng', N'NAM', CAST(N'2068-09-04' AS Date), N'1970286228', N'110 Hoa Cuc Street, Ward 7', N'NHÂN VIÊN', N'FT        ', CAST(N'2090-11-02' AS Date), 2000000.0000, N'CN0002    ', N'22   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00026   ', N'Dương Mạnh Dũng', N'NAM', CAST(N'2044-01-04' AS Date), N'1644654198', N'271/163/122 Quang Trung, Ward 10', N'THU NGÂN', N'PT1       ', CAST(N'2080-02-01' AS Date), 4000000.0000, N'CN0030    ', N'36   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00027   ', N'Trịnh Quang Triều', N'NAM', CAST(N'2001-02-27' AS Date), N'1727316783', N'Lot C-1 CN, My Phuoc II Industrial Park, Ben Cat District', N'THU NGÂN', N'PT2       ', CAST(N'2019-02-27' AS Date), 4000000.0000, N'CN0030    ', N'18   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00028   ', N'Ngô Anh Vũ', N'NAM', CAST(N'1998-01-08' AS Date), N'1332348639', N'2C Tran Khanh Du Street, Tan Dinh Ward, District 1', N'THU NGÂN', N'PT3       ', CAST(N'2019-01-01' AS Date), 4000000.0000, N'CN0004    ', N'21   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00029   ', N'Trương Hữu Cảnh', N'NAM', CAST(N'1998-07-20' AS Date), N'1562195663', N'18/35B Tran Quang Dieu, Ward 14, Dist.3', N'THU NGÂN', N'PT1       ', CAST(N'2019-02-02' AS Date), 4000000.0000, N'CN0004    ', N'21   ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NGAYSINH], [CMND], [DIACHI], [CHUCVU], [CALAMVIEC], [NGAYNV], [LUONG], [MACN], [TUOI]) VALUES (N'NV00030   ', N'Phùng Duy An', N'NAM', CAST(N'1970-03-05' AS Date), N'1255466274', N'27/32 Tran Khac Chan, Dist.1', N'QUẢN LÝ', N'FT        ', CAST(N'2001-05-05' AS Date), 5000000.0000, N'CN0030    ', N'31   ')
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00001                                                                                              ', N'STING DÂU', 10000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00002                                                                                              ', N'STING VÀNG', 10000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00003                                                                                              ', N'COCA COLA (LON 120ML)', 12000.0000, N'COCACOLA')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00004                                                                                              ', N'COCA COLA (CON 150ML)', 14000.0000, N'COCACOLA')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00005                                                                                              ', N'PEPSI (CHAI NHỰA)', 10000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00006                                                                                              ', N'PEPSI ( LON )', 9000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00007                                                                                              ', N'7 UP (CHAI NHỰA) ', 10000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00008                                                                                              ', N'7 UP ( LON ) ', 9000.0000, N'PepsiCo')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00009                                                                                              ', N'NUMBER 1 (CHAI NHỰA)', 12000.0000, N'TÂN HIỆP PHÁT')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'D00010                                                                                              ', N'NUMBER 1 ( LON )', 11000.0000, N'TÂN HIỆP PHÁT')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00001                                                                                              ', N'SỮA TUYỆT TRÙNG   (CÓ ĐƯỜNG)', 12000.0000, N'TH true MART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00002                                                                                              ', N'SỮA TUYỆT TRÙNG   (KHÔNG ĐƯỜNG)', 17500.0000, N'TH true MART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00003                                                                                              ', N'BÁNH CROSSIANT', 30000.0000, N'BRODARD')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00004                                                                                              ', N'BÁNH KEM DÂU ', 50000.0000, N'BRODARD')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00005                                                                                              ', N'BÁNH KEM CHOCOLATE', 65000.0000, N'BRODARD')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00006                                                                                              ', N'CƠM NẮM (TRỨNG CÁ)', 16000.0000, N'COOPMART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00007                                                                                              ', N'CƠM NẮM (TÔM MAYONESE)', 15000.0000, N'COOPMART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00008                                                                                              ', N'CƠM NGHIÊU XÁO XẢ ƠT', 30000.0000, N'COOPMART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00009                                                                                              ', N'XÚC XÍCH HEO x1', 20000.0000, N'COOPMART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'F00010                                                                                              ', N'BÁNH PHÒNG TÔM', 12000.0000, N'COOPMART')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00001                                                                                              ', N'KHẨU TRANG Y TẾ ( BỊCH )', 20000.0000, N'CEPHARA')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00002                                                                                              ', N'KHẨU TRANG Y TẾ  ( VẢI BÔNG )', 15000.0000, N'CEPHARA')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00003                                                                                              ', N'KHẨU TRANG Y TẾ ( VẢI ĐEN )', 15000.0000, N'CEPHARA')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00004                                                                                              ', N'BÚT CHÌ B2 x1', 2000.0000, N'BAHASACO')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00005                                                                                              ', N'BÚT BI (XANH) x1', 5000.0000, N'KIM LONG')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00006                                                                                              ', N'BÚT BI (ĐỎ) x1', 6000.0000, N'KIM LONG')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00007                                                                                              ', N'HỘP ĐỰNG BÚT NHÔM', 20000.0000, N'KIM LONG')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00008                                                                                              ', N'BÌA NHỰA BAO TẬP 1x', 2000.0000, N'KIM LONG')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00009                                                                                              ', N'BÌA  NHƯA BAO SÁCH 1x', 2500.0000, N'KIM LONG')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIATIEN], [NHASX]) VALUES (N'M00010                                                                                              ', N'TẬP GIẤY KIỂM TRA ', 25000.0000, N'KIM LONG')
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [df_empAss]  DEFAULT ('UNASSIGNED') FOR [MACN]
GO
ALTER TABLE [dbo].[CHINHANH_SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHINHANH_SANPHAM_CHINHANH] FOREIGN KEY([MACN])
REFERENCES [dbo].[CHINHANH] ([MACN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHINHANH_SANPHAM] CHECK CONSTRAINT [FK_CHINHANH_SANPHAM_CHINHANH]
GO
ALTER TABLE [dbo].[CHINHANH_SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHINHANH_SANPHAM_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHINHANH_SANPHAM] CHECK CONSTRAINT [FK_CHINHANH_SANPHAM_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDH_DONHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDH] CHECK CONSTRAINT [FK_CHITIETDH_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDH_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETDH] CHECK CONSTRAINT [FK_CHITIETDH_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHINHANH] FOREIGN KEY([MACN])
REFERENCES [dbo].[CHINHANH] ([MACN])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHINHANH]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CHK_empAge] CHECK  (([TUOI]>=(18)))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CHK_empAge]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_realInfo] CHECK  (((datepart(year,[NGAYNV])-datepart(year,[NGAYSINH]))>=(18)))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_realInfo]
GO
