namespace QuanLyBanquanAo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_SanPham()
        {
            tbl_ThuocTinh = new HashSet<tbl_ThuocTinh>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(50)]
        public string TenSP { get; set; }

        [StringLength(50)]
        public string GiaBan { get; set; }

        [StringLength(50)]
        public string LoaiSP { get; set; }

        [StringLength(50)]
        public string MoTaSP { get; set; }

        [StringLength(50)]
        public string XuatXu { get; set; }

        [StringLength(50)]
        public string SoLuong { get; set; }

        public int? id_LoaiSP { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_ThuocTinh> tbl_ThuocTinh { get; set; }
    }
}
