using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanquanAo
{
    public class LoginInfo
    {
        private string id;
        private string rolename;

        public string Rolename { get => rolename; set => rolename = value; }
        public string Id { get => id; set => id = value; }
    }
}
