using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DWM_Memory_Leak
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            var screens = Screen.AllScreens;
            var x = screens.Select(s => s.Bounds.X).Min();
            var y = screens.Select(s => s.Bounds.Y).Min();
            var w = screens.Select(s => s.Bounds.X + s.Bounds.Width).Max() - x;
            var h = screens.Select(s => s.Bounds.Y + s.Bounds.Height).Max() - y;
            this.Location = new Point(x, y);
            this.Size = new Size(w, h);

            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.TopMost = true;
            this.TopLevel = true;
            this.BackColor = Color.Black;
            this.TransparencyKey = Color.Black;
        }
    }
}
