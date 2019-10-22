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
    public partial class Pacientes : Form
    {
        public bool cerrarLuegoGuardar = false;
        public Pacientes()
        {
            InitializeComponent();
            cerrarLuegoGuardar = false;
        }

        public Pacientes(bool cerrarLuegoGuardarP)
        {
            InitializeComponent();
            cerrarLuegoGuardar = cerrarLuegoGuardarP;
        }

        private void pacienteBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.pacienteBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);
            if (cerrarLuegoGuardar)
            {
                this.Close();
            }

        }

        private void Pacientes_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Paciente' table. You can move, or remove it, as needed.
            this.pacienteTableAdapter.Fill(this.cAMIDataSet.Paciente);
            // TODO: This line of code loads data into the 'cAMIDataSet.Paciente' table. You can move, or remove it, as needed.
            this.pacienteTableAdapter.Fill(this.cAMIDataSet.Paciente);
            //dataGridViewTextBoxColumn6.Items.Add("M");
            //dataGridViewTextBoxColumn6.Items.Add("F");
        }

        private void pacienteBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            this.Validate();
            this.pacienteBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }
    }
}
