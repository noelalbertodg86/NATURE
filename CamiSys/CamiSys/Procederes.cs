using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CamiSys
{
    public partial class Procederes : Form
    {
        public Procederes()
        {
            InitializeComponent();
        }

        private void procederesBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.procederesBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }

        private void Procederes_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Procederes' table. You can move, or remove it, as needed.
            this.procederesTableAdapter.Fill(this.cAMIDataSet.Procederes);
            // TODO: This line of code loads data into the 'cAMIDataSet.Procederes' table. You can move, or remove it, as needed.
            this.procederesTableAdapter.Fill(this.cAMIDataSet.Procederes);

        }

        private void procederesBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            this.Validate();
            this.procederesBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }
    }
}
