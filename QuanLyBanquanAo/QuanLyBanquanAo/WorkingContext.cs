using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanquanAo
{
    public class WorkingContext
    {
        private static WorkingContext _instance = null;
        public static WorkingContext Instance = _instance ?? (_instance = new WorkingContext());
        public QuanLyBanQuanAoContext _dbcontext = null;
        public string _currentConnectionString;
        public LoginInfo currentLoginInfo;
        public string currentBranch { get; set; }
        public int currentBranchId { get; set; }
        public string currentLoginName { get; set; }

        private WorkingContext()
        {

        }

        public void Initialize(string connectString)
        {
            _currentConnectionString = connectString;
            _dbcontext = new QuanLyBanQuanAoContext(_currentConnectionString);
        }

       

    }
}
