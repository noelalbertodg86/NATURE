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
    public partial class Consulta_Form : Form
    {
        private string cedula = "";
        private CAMIDataSet.PacienteRow pacient = null;
        public List<CAMIDataSet.ProcederesRow> listaProcederes = new List<CAMIDataSet.ProcederesRow>();
        public List<CAMIDataSet.MedicamentosRow> listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
        public Consulta_Form()
        {
            InitializeComponent();
        }

        private void Consulta_Load(object sender, EventArgs e)
        {
            try
            {
                pacient = null;
                // TODO: This line of code loads data into the 'cAMIDataSet.Consulta' table. You can move, or remove it, as needed.
                this.consultaTableAdapter.Fill(this.cAMIDataSet.Consulta);
                // TODO: This line of code loads data into the 'cAMIDataSet.Tipo_Consulta' table. You can move, or remove it, as needed.
                this.tipo_ConsultaTableAdapter.Fill(this.cAMIDataSet.Tipo_Consulta);
                listaProcederes = new List<CAMIDataSet.ProcederesRow>();
                listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
                // TODO: This line of code loads data into the 'cAMIDataSet.Medicamentos' table. You can move, or remove it, as needed.
                this.medicamentosTableAdapter.Fill(this.cAMIDataSet.Medicamentos);
                // TODO: This line of code loads data into the 'cAMIDataSet.Procederes' table. You can move, or remove it, as needed.
                this.procederesTableAdapter.Fill(this.cAMIDataSet.Procederes);
                // TODO: This line of code loads data into the 'cAMIDataSet.Paciente' table. You can move, or remove it, as needed.
                this.pacienteTableAdapter.Fill(this.cAMIDataSet.Paciente);
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error Iniciando aplicación: " + ex.Message, "Error Iniciando Sistema CAMI", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ayudaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void pacientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Pacientes pa = new Pacientes();
            pa.Show();
        }

        private void medicamentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Medicamentos med = new Medicamentos();
            med.Show();
        }

        private void procederesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Procederes pro = new Procederes();
            pro.Show();
        }

        private void agregarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl1.Visible = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {

            cedula = textBox1.Text;
            this.pacienteTableAdapter.Fill(this.cAMIDataSet.Paciente);
            var resul = this.cAMIDataSet.Paciente.Where(p => p.Cedula == cedula);
            if (resul.Count() == 0)
            {
                MessageBox.Show("El Paciente no esta en sistema. Favor de ingrese el paciente al sistema");
                Pacientes pacObj = new Pacientes(true);
                pacObj.Show();
             }
            else
            {
              pacient = resul.FirstOrDefault();
              this.CargarDataPaciente(pacient);
            }
            
        }

        private void pacienteBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.pacienteBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }

        public void CargarDataPaciente(CAMIDataSet.PacienteRow pacient)
        {
            textBox2.Text = pacient.Nombres + " " + pacient.Apellidos;
            textBox3.Text = pacient.Edad.ToString();
            textBox4.Text = pacient.Sexo.ToString();
            textBox5.Text = pacient.Telefono.ToString();
            textBox6.Text = "";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (pacient == null)
                MessageBox.Show("Debe seleccionar un Paciente para Continuar");
            else
                tabControl1.SelectTab(1);
                label8.Text = textBox2.Text;
                

        }

        private void tiposConsultasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TipoConsulta tp = new TipoConsulta();
            tp.Show();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.medicamentosTableAdapter.Fill(this.cAMIDataSet.Medicamentos);
            // TODO: This line of code loads data into the 'cAMIDataSet.Procederes' table. You can move, or remove it, as needed.
            this.procederesTableAdapter.Fill(this.cAMIDataSet.Procederes);
        }



        private void button10_Click(object sender, EventArgs e)
        {
            int selectIndex = listBox1.SelectedIndex;
            if (selectIndex >= 0)
            {
                CAMIDataSet.ProcederesRow b =  this.cAMIDataSet.Procederes.Where(p => p.ID == Convert.ToInt32(listBox1.SelectedValue)).FirstOrDefault();
                listaProcederes.Add(b);
                for (int i = 0; i < listaProcederes.Count(); i++)
                {
                    listBox3.Items.Add(listaProcederes[i].Nombre + " (" + listaProcederes[i].Precio.ToString() + ")");
                }                
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {
            int index = listBox3.SelectedIndex;
            if (index >=0)
            {
                listaProcederes.RemoveAt(index);
                listBox3.Items.Clear();
                for (int i = 0; i < listaProcederes.Count(); i++)
                {
                    listBox3.Items.Add(listaProcederes[i].Nombre + " (" + listaProcederes[i].Precio.ToString() + ")");
                }
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            int selectIndex = listBox4.SelectedIndex;
            if (selectIndex >= 0)
            {
                CAMIDataSet.MedicamentosRow m = this.cAMIDataSet.Medicamentos.Where(p => p.ID == Convert.ToInt32(listBox4.SelectedValue)).FirstOrDefault();
                listaMedicamentos.Add(m);
                listBox2.Items.Clear();
                for (int i = 0; i < listaMedicamentos.Count(); i++)
                {
                    listBox2.Items.Add(listaMedicamentos[i].Nombre + " (" + listaMedicamentos[i].Precio.ToString() + ")");
                }

            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            int index = listBox2.SelectedIndex;
            if (index >= 0)
            {
                listaMedicamentos.RemoveAt(index);
                listBox2.Items.Clear();
                for (int i = 0; i < listaMedicamentos.Count(); i++)
                {
                    listBox2.Items.Add(listaMedicamentos[i].Nombre + " (" + listaMedicamentos[i].Precio.ToString() + ")");
                }
            }
        }

        private void button10_Click_1(object sender, EventArgs e)
        {
            int selectIndex = listBox1.SelectedIndex;
            if (selectIndex >= 0)
            {
                CAMIDataSet.ProcederesRow b = this.cAMIDataSet.Procederes.Where(p => p.ID == Convert.ToInt32(listBox1.SelectedValue)).FirstOrDefault();
                listaProcederes.Add(b);
                listBox3.Items.Clear();
                for (int i = 0; i < listaProcederes.Count(); i++)
                {
                    listBox3.Items.Add(listaProcederes[i].Nombre + " (" + listaProcederes[i].Precio.ToString() + ")");
                }
            }
        }

        private void button9_Click_1(object sender, EventArgs e)
        {
            int index = listBox3.SelectedIndex;
            if (index >= 0)
            {
                listaProcederes.RemoveAt(index);
                listBox3.Items.Clear();
                for (int i = 0; i < listaProcederes.Count(); i++)
                {
                    listBox3.Items.Add(listaProcederes[i].Nombre + " (" + listaProcederes[i].Precio.ToString() + ")");
                }
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            tabControl1.Visible = false;
            pacient = null;
            listaProcederes = new List<CAMIDataSet.ProcederesRow>();
            listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            tabControl1.Visible = false;
            pacient = null;
            listaProcederes = new List<CAMIDataSet.ProcederesRow>();
            listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
        }
        public void CancelarConsulta(object sender, EventArgs e)
        {
            CancelarConsulta_();
        }
        public void CancelarConsulta_()
        {
            tabControl1.Visible = false;
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
            listBox2.Items.Clear();
            listBox3.Items.Clear();
            pacient = null;
            listaProcederes = new List<CAMIDataSet.ProcederesRow>();
            listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
            richTextBox5.Text = @"Motivo Consulta:

HEA:

APP:

APF:

Habitos Tóxicos: (HT):

Factores Riesgo (FR):

Interrogatorio:

Examen Físico (EF):

Impresión Diagnostica (ID):

Conducta a Seguir (CAS):";
        }
        private void button4_Click(object sender, EventArgs e)
        {
            tabControl1.SelectTab(2);
        }

        private void button14_Click(object sender, EventArgs e)
        {
            tabControl1.SelectTab(3);
            CargarDatosResumen();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            tabControl1.SelectTab(3);            
            CargarDatosResumen();
        }

        public void CargarDatosResumen()
        {
            if (pacient != null)
            {
                LabelNombrePaciente.Text = pacient.Nombres + " " + pacient.Apellidos;
                labelCedula.Text = pacient.Cedula;
                labeledad.Text = pacient.Edad.ToString();
                labelTelefono.Text = pacient.Telefono.ToString();

                richTextBox1.Text = richTextBox5.Text;

                listBox5.Items.Clear();
                listBox5.Items.Add("Medicamentos...");
                for (int i = 0; i < listaMedicamentos.Count(); i++)
                { listBox5.Items.Add(listaMedicamentos[i].Nombre); }

                listBox6.Items.Clear();
                listBox6.Items.Add("Procederes...");
                for (int i = 0; i < listaProcederes.Count(); i++)
                { listBox6.Items.Add(listaProcederes[i].Nombre); }

            }
            else
            {
                MessageBox.Show("Debe seleccionar un paciente","Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }
        private void button5_Click(object sender, EventArgs e)
        {
            tabControl1.Visible = false;
            pacient = null;
            listaProcederes = new List<CAMIDataSet.ProcederesRow>();
            listaMedicamentos = new List<CAMIDataSet.MedicamentosRow>();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void ActualizarDatos(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Tipo_Consulta' table. You can move, or remove it, as needed.
            this.tipo_ConsultaTableAdapter.Fill(this.cAMIDataSet.Tipo_Consulta);
            // TODO: This line of code loads data into the 'cAMIDataSet.Medicamentos' table. You can move, or remove it, as needed.
            this.medicamentosTableAdapter.Fill(this.cAMIDataSet.Medicamentos);
            // TODO: This line of code loads data into the 'cAMIDataSet.Procederes' table. You can move, or remove it, as needed.
            this.procederesTableAdapter.Fill(this.cAMIDataSet.Procederes);
            // TODO: This line of code loads data into the 'cAMIDataSet.Paciente' table. You can move, or remove it, as needed.
            this.pacienteTableAdapter.Fill(this.cAMIDataSet.Paciente);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try {
                int tipoConsulta = Convert.ToInt32(comboBox1.SelectedValue);
                string numeroFactura = textBox7.Text;
                string historia_clinica = richTextBox5.Text;
                int idUsuario = 1;
                float PrecioTotal = 1;
                DateTime now_Obj = DateTime.Now;
                //var id = cAMIDataSet.Consulta.AddConsultaRow(tipoConsulta, numeroFactura, "", now_Obj, idUsuario, PrecioTotal, historia_clinica);
                //consultaTableAdapter.Fill(this.cAMIDataSet.Consulta);
                var id = consultaTableAdapter.Insert(tipoConsulta, numeroFactura, "", now_Obj, idUsuario, PrecioTotal, historia_clinica);
                //this.tableAdapterManager.UpdateAll(this.cAMIDataSet);
                int idConculta = Convert.ToInt32(id);
                for (int i = 0; i < listaMedicamentos.Count(); i++)
                { medicamentos_ConsultaTableAdapter1.Insert(idConculta, listaMedicamentos[i].ID); }

                for (int i = 0; i < listaProcederes.Count(); i++)
                { procederes_ConsultaTableAdapter1.Insert(listaProcederes[i].ID, idConculta); }

                paciente_ConsultaTableAdapter1.Insert(pacient.Cedula, idConculta);

                MessageBox.Show("Consulta Guardada Satisfactoriamente", "Consulta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.CancelarConsulta_();
                tabControl1.SelectTab(0);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void gestionarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Consulta_VIEW cv = new Consulta_VIEW();
            cv.Show();
        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label18_Click(object sender, EventArgs e)
        {

        }

        private void tabPage4_Click(object sender, EventArgs e)
        {

        }
    }
}
