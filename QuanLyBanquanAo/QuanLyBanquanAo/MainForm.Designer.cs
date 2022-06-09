namespace QuanLyBanquanAo
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tssloginName = new System.Windows.Forms.Label();
            this.tssBranch = new System.Windows.Forms.Label();
            this.tssGroup = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // tssloginName
            // 
            this.tssloginName.AutoSize = true;
            this.tssloginName.Location = new System.Drawing.Point(3, 425);
            this.tssloginName.Name = "tssloginName";
            this.tssloginName.Size = new System.Drawing.Size(104, 16);
            this.tssloginName.TabIndex = 0;
            this.tssloginName.Text = "Tên đăng nhập: ";
            this.tssloginName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // tssBranch
            // 
            this.tssBranch.AutoSize = true;
            this.tssBranch.Location = new System.Drawing.Point(226, 425);
            this.tssBranch.Name = "tssBranch";
            this.tssBranch.Size = new System.Drawing.Size(71, 16);
            this.tssBranch.TabIndex = 1;
            this.tssBranch.Text = "Chi nhánh: ";
            // 
            // tssGroup
            // 
            this.tssGroup.AutoSize = true;
            this.tssGroup.Location = new System.Drawing.Point(391, 425);
            this.tssGroup.Name = "tssGroup";
            this.tssGroup.Size = new System.Drawing.Size(49, 16);
            this.tssGroup.TabIndex = 2;
            this.tssGroup.Text = "Nhóm: ";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tssGroup);
            this.Controls.Add(this.tssBranch);
            this.Controls.Add(this.tssloginName);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label tssloginName;
        private System.Windows.Forms.Label tssBranch;
        private System.Windows.Forms.Label tssGroup;
    }
}