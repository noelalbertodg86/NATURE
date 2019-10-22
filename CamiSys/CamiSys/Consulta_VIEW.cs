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
    public partial class Consulta_VIEW : Form
    {
        public CAMIDataSet.Consulta_ViewRow consuta_view_row = null;
        public CAMIDataSet.ConsultaRow consuta_row = null;
        public Consulta_VIEW()
        {

            InitializeComponent();

        }

        private void Consulta_VIEW_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Consulta_View' table. You can move, or remove it, as needed.
            this.consulta_ViewTableAdapter.Fill(this.cAMIDataSet.Consulta_View);
            this.consultaTableAdapter1.Fill(this.cAMIDataSet.Consulta);
            //this.medicamentosTableAdapter1.Fill(this.cAMIDataSet.Medicamentos);
            richTextBox1.Enabled = false;
            //richTextBox1.AllowDrop = true;
            groupBox1.Text = "Seleccione Paciente";
            
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {
            if (richTextBox1.Enabled)
            {
                DialogResult Result =  MessageBox.Show("Se ha activado editar la historia clínica. Guardar Cambios","Cambios Historia Clinica", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);
                if (Result == DialogResult.OK)
                {
                    GuardarCambiosHistoriaClinica();
                    richTextBox1.Enabled = false;
                }
                else
                {
                    richTextBox1.Enabled = false;
                }       
            }
        
                       
            System.Data.DataRowView drv = null;
            drv = consultaViewBindingSource.Current as DataRowView;
            consuta_view_row = drv.Row as CAMIDataSet.Consulta_ViewRow;
            groupBox1.Text = consuta_view_row.Paciente+"   Historia Clínica...";
            richTextBox1.Text = consuta_view_row.Historia_Clinica;
            consuta_row = cAMIDataSet.Consulta.Where(p => p.ID == consuta_view_row.IdentificadorConsulta).FirstOrDefault();
            
            var medicamentos = buscarMedicamentosPorConsultaTableAdapter1.Fill(this.cAMIDATASet_SP.BuscarMedicamentosPorConsulta, consuta_view_row.IdentificadorConsulta);
            listBox1.Items.Clear();
            for (int i= 0;i< this.cAMIDATASet_SP.BuscarMedicamentosPorConsulta.Count();i++)
            {
                listBox1.Items.Add(this.cAMIDATASet_SP.BuscarMedicamentosPorConsulta[i].Nombre);
            }

            var procederes = buscarProcederesPorConsultaTableAdapter1.Fill(this.cAMIDATASet_SP.BuscarProcederesPorConsulta, consuta_view_row.IdentificadorConsulta);
            listBox2.Items.Clear();
            for (int i = 0; i < this.cAMIDATASet_SP.BuscarProcederesPorConsulta.Count(); i++)
            {
                listBox2.Items.Add(this.cAMIDATASet_SP.BuscarProcederesPorConsulta[i].Nombre);
            }

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {

            richTextBox1.Enabled = true;
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            GuardarCambiosHistoriaClinica();
        }
        public void GuardarCambiosHistoriaClinica()
        {
           if( consuta_view_row != null && consuta_row != null)
            {
                consuta_row.Historia_Clinica = richTextBox1.Text;
                consultaTableAdapter1.Update(consuta_row);
                MessageBox.Show("Datos Guardados Satisfactoriamente","Guardar Datos",MessageBoxButtons.OK,MessageBoxIcon.Information);
                this.consulta_ViewTableAdapter.Fill(this.cAMIDataSet.Consulta_View);
            }
            richTextBox1.Enabled = false;
        }
    }
}
