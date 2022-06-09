namespace QuanLyBanquanAo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_HoaDon
    {
        public int id { get; set; }

        [StringLength(50)]
        public string TenKH { get; set; }

        [StringLength(50)]
        public string SDT { get; set; }

        [StringLength(50)]
        public string NgayMua { get; set; }

        [StringLength(50)]
        public string TongTien { get; set; }

        [StringLength(50)]
        public string GiamGia { get; set; }

        public int? id_maNV { get; set; }

        public int? id_maCN { get; set; }

        public virtual tbl_NhanVien tbl_NhanVien { get; set; }
    }
}
