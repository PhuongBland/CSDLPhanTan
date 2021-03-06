USE [QuanLybanQuanAo]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 3/18/2022 10:39:39 AM ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 3/18/2022 10:39:39 AM ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Table [dbo].[tbl_ChiNhanh]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiNhanh](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TenCN] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[id] [int] NOT NULL,
	[id_SP] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgayMua] [datetime] NULL,
	[TongTien] [nvarchar](50) NULL,
	[GiamGia] [nvarchar](50) NULL,
	[id_maNV] [int] NULL,
	[id_maCN] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiSP]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiSP](
	[id] [int] NOT NULL,
	[Loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[id] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Luong] [nvarchar](50) NULL,
	[id_CN] [int] NOT NULL,
 CONSTRAINT [PK_tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[id] [int] NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaBan] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MoTaSP] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[id_LoaiSP] [int] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThuocTinh]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThuocTinh](
	[id] [int] NOT NULL,
	[Size] [nvarchar](50) NULL,
	[Mau] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[id_SP] [int] NULL,
 CONSTRAINT [PK_tbl_ThuocTinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien] FOREIGN KEY([id_maNV])
REFERENCES [dbo].[tbl_NhanVien] ([id])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhanVien_tbl_ChiNhanh] FOREIGN KEY([id_CN])
REFERENCES [dbo].[tbl_ChiNhanh] ([id])
GO
ALTER TABLE [dbo].[tbl_NhanVien] CHECK CONSTRAINT [FK_tbl_NhanVien_tbl_ChiNhanh]
GO
ALTER TABLE [dbo].[tbl_ThuocTinh]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThuocTinh_tbl_SanPham] FOREIGN KEY([id_SP])
REFERENCES [dbo].[tbl_SanPham] ([id])
GO
ALTER TABLE [dbo].[tbl_ThuocTinh] CHECK CONSTRAINT [FK_tbl_ThuocTinh_tbl_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[AddBillType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Sua thong tin cua bang Tbl_HoaDon
CREATE   PROC [dbo].[AddBillType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_HoaDon SET TenKH = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[AddBranchType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Sua thong tin cua bang tblLoaiSP
CREATE   PROC [dbo].[AddBranchType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_ChiNhanh SET TenCN = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[AddProductType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Sua thong tin cua bang tblLoaiSP
CREATE   PROC [dbo].[AddProductType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_LoaiSP SET Loai = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[AddStaffType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Sua thong tin cua bang tbl_NhanVien
CREATE   PROC [dbo].[AddStaffType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_NhanVien SET HoTen = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBranchType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xoa thong tin cua bang tblLoaiSP
CREATE   PROC [dbo].[DeleteBranchType]
@id int
AS
BEGIN
   DELETE  FROM tbl_ChiNhanh
	WHERE id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProductType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Xoa thong tin cua bang tblLoaiSP
CREATE   PROC [dbo].[DeleteProductType]
@id int
AS
BEGIN
   DELETE  FROM tbl_LoaiSP
	WHERE id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStaffType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xoa thong tin cua bang tbl_NhanVien
CREATE   PROC [dbo].[DeleteStaffType]
@id int
AS
BEGIN
   DELETE  FROM tbl_NhanVien
	WHERE id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[SearchBillTypeByID]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tim kiem thong tin cua bang Tbl_HoaDon theo id
CREATE   PROC [dbo].[SearchBillTypeByID]
@id int
AS
BEGIN
   select *from tbl_HoaDon
   where tbl_HoaDon.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SearchBranchTypeByID]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tim kiem thong tin cua bang tblChiNhanh theo id
CREATE   PROC [dbo].[SearchBranchTypeByID]
@id int
AS
BEGIN
   select *from tbl_ChiNhanh
   where tbl_ChiNhanh.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SearchProductTypeByID]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tim kiem thong tin cua bang tblLoaiSP theo id
CREATE   PROC [dbo].[SearchProductTypeByID]
@id int
AS
BEGIN
   select *from tbl_LoaiSP
   where tbl_LoaiSP.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SearchStaffTypeByID]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tim kiem thong tin cua bang tbl_NhanVien theo id
CREATE   PROC [dbo].[SearchStaffTypeByID]
@id int
AS
BEGIN
   select *from tbl_NhanVien
   where tbl_NhanVien.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[ViewBillType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Xem thông tin của bảng Tbl_HoaDon
CREATE   PROC [dbo].[ViewBillType]
AS
BEGIN
   select *from tbl_HoaDon
END
GO
/****** Object:  StoredProcedure [dbo].[ViewBranchType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Xem thông tin của bảng tbl_Chinhanh
CREATE   PROC [dbo].[ViewBranchType]
AS
BEGIN
   select *from tbl_ChiNhanh
END
GO
/****** Object:  StoredProcedure [dbo].[ViewProductType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xem thong tin cua bang tblLoaiSP
CREATE   PROC [dbo].[ViewProductType] 
AS
BEGIN
   select *from tbl_LoaiSP
END
GO
/****** Object:  StoredProcedure [dbo].[ViewStaffType]    Script Date: 3/18/2022 10:39:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Xem thông tin của bảng tbl_NhanVien
CREATE   PROC [dbo].[ViewStaffType]
AS
BEGIN
   select *from tbl_NhanVien
END
GO
