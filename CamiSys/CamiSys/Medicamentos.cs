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
    public partial class Medicamentos : Form
    {
        public Medicamentos()
        {
            InitializeComponent();
        }

        private void medicamentosBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.medicamentosBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }

        private void Medicamentos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Medicamentos' table. You can move, or remove it, as needed.
            this.medicamentosTableAdapter.Fill(this.cAMIDataSet.Medicamentos);

        }
    }
}
