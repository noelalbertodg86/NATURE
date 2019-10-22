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
    public partial class Bienvenido : Form
    {
        public Bienvenido()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RegistarUsuario ru = new RegistarUsuario();
            ru.Show();
        }

        private void usuariosBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.usuariosBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cAMIDataSet);

        }

        private void Bienvenido_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cAMIDataSet.Usuarios' table. You can move, or remove it, as needed.
            this.usuariosTableAdapter.Fill(this.cAMIDataSet.Usuarios);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string usuario = textBox1.Text;
            string pass = textBox2.Text;
            var resul = cAMIDataSet.Usuarios.Where(p => p.Password == pass && (p.Mail == usuario || p.Usuario == usuario));
            if (resul.Count()>0)
            { Consulta_Form cObj = new Consulta_Form();
                this.Hide();
                cObj.Show();
            }
            else
            {
                MessageBox.Show("Usuario o Contraseña incorrecto. Intente nuevamente.");
            }
            
        }
    }
}
