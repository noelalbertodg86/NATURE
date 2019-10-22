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
    public partial class TipoConsulta : Form
    {
        public TipoConsulta()
        {
            InitializeComponent();
        }

        private void tipo_ConsultaBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tipo_ConsultaBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }

        private void TipoConsulta_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Tipo_Consulta' table. You can move, or remove it, as needed.
            this.tipo_ConsultaTableAdapter.Fill(this.cAMIDataSet.Tipo_Consulta);
            // TODO: This line of code loads data into the 'cAMIDataSet.Tipo_Consulta' table. You can move, or remove it, as needed.
            this.tipo_ConsultaTableAdapter.Fill(this.cAMIDataSet.Tipo_Consulta);

        }

        private void tipo_ConsultaBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            this.Validate();
            this.tipo_ConsultaBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }
    }
}
