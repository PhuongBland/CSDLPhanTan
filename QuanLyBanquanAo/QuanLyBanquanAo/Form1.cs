using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanquanAo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string branch, loginName, pasword;

            if (textBox2.Text == "" && textBox1.Text == "")
            {
                label5.Text = "Vui lòng nhập thông tin đăng nhập!";
                return;
            }
            if (comboBox1.SelectedIndex < 0) { 
                label5.Text = "Vui long chon chi nhanh";
                return;
            }

            branch = comboBox1.Text;
            int branchID = comboBox1.SelectedIndex + 1;
            loginName = textBox2.Text;
            pasword = textBox1.Text;

            WorkingContext.Instance.currentBranch = branch;
            WorkingContext.Instance.currentBranchId = branchID;
            

            WorkingContext.Instance.currentLoginName = loginName;

            var connectionName = string.Format("Branch{0}",branchID);
            var connectionString = ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;

            connectionString = string.Format(connectionString,loginName,pasword);
            WorkingContext.Instance.Initialize(connectionString);

            try
            {
                var dbcontext = WorkingContext.Instance._dbcontext;
                var loginInfo = dbcontext.Database.SqlQuery<LoginInfo>("exec sp_GetLoginInfo @p0", loginName).FirstOrDefault();
                WorkingContext.Instance.currentLoginInfo = loginInfo;
                this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sai thong tin dang nhap " + ex.Message, "Thong bao", MessageBoxButtons.OK);
                textBox1.Text = ex.Message;
            }
        }

       //public LoginInfo GetLoginInfo(string loginName)
       // {
       //     //return _unitOfWork.
       // }
    }
}
