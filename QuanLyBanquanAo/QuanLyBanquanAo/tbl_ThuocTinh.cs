namespace QuanLyBanquanAo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_ThuocTinh
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(50)]
        public string Size { get; set; }

        [StringLength(50)]
        public string Mau { get; set; }

        [StringLength(50)]
        public string SoLuong { get; set; }

        public int? id_SP { get; set; }

        public virtual tbl_SanPham tbl_SanPham { get; set; }
    }
}
