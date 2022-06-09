using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanquanAo
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            Form1 loginForm = new Form1();
            if (loginForm.ShowDialog(this) == DialogResult.OK)
            {
                tssBranch.Text += WorkingContext.Instance.currentBranch;
                tssGroup.Text += WorkingContext.Instance.currentLoginInfo.Rolename;
                tssloginName.Text += WorkingContext.Instance.currentLoginName;
            }
            else
            {
                this.Close();
            }
        }
    }
}
