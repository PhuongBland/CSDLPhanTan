using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace QuanLyBanquanAo
{
    public partial class QuanLyBanQuanAoContext : DbContext
    {
        public QuanLyBanQuanAoContext(string connectString)
            : base(connectString)
        {
        }

        public virtual DbSet<tbl_ChiNhanh> tbl_ChiNhanh { get; set; }
        public virtual DbSet<tbl_ChiTietHoaDon> tbl_ChiTietHoaDon { get; set; }
        public virtual DbSet<tbl_HoaDon> tbl_HoaDon { get; set; }
        public virtual DbSet<tbl_LoaiSP> tbl_LoaiSP { get; set; }
        public virtual DbSet<tbl_NhanVien> tbl_NhanVien { get; set; }
        public virtual DbSet<tbl_SanPham> tbl_SanPham { get; set; }
        public virtual DbSet<tbl_ThuocTinh> tbl_ThuocTinh { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tbl_ChiNhanh>()
                .HasMany(e => e.tbl_NhanVien)
                .WithRequired(e => e.tbl_ChiNhanh)
                .HasForeignKey(e => e.id_CN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tbl_NhanVien>()
                .HasMany(e => e.tbl_HoaDon)
                .WithOptional(e => e.tbl_NhanVien)
                .HasForeignKey(e => e.id_maNV);

            modelBuilder.Entity<tbl_SanPham>()
                .HasMany(e => e.tbl_ThuocTinh)
                .WithOptional(e => e.tbl_SanPham)
                .HasForeignKey(e => e.id_SP);
        }
    }
}
