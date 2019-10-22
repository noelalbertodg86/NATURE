namespace CamiSys
{
    partial class Consulta_VIEW
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
            this.components = new System.ComponentModel.Container();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.consultaViewBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.cAMIDataSet = new CamiSys.CAMIDataSet();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colTipo_Consulta = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNumero_Factura = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFecha = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrecioTotalConsulta = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHistoria_Clinica = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaciente_Cedula = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaciente_Telefono = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaciente_Edad = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaciente = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsuario = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cAMIDATASet_SP = new CamiSys.CAMIDataSet_SP();
            this.consulta_ViewTableAdapter = new CamiSys.CAMIDataSetTableAdapters.Consulta_ViewTableAdapter();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.listBox2 = new System.Windows.Forms.ListBox();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.consultaTableAdapter1 = new CamiSys.CAMIDataSetTableAdapters.ConsultaTableAdapter();
            this.medicamentosTableAdapter1 = new CamiSys.CAMIDataSetTableAdapters.MedicamentosTableAdapter();
            this.medicamentos_ConsultaTableAdapter1 = new CamiSys.CAMIDataSetTableAdapters.Medicamentos_ConsultaTableAdapter();
            this.procederesTableAdapter1 = new CamiSys.CAMIDataSetTableAdapters.ProcederesTableAdapter();
            this.procederes_ConsultaTableAdapter1 = new CamiSys.CAMIDataSetTableAdapters.Procederes_ConsultaTableAdapter();
            this.buscarMedicamentosPorConsultaTableAdapter1 = new CamiSys.CAMIDataSet_SPTableAdapters.BuscarMedicamentosPorConsultaTableAdapter();
            this.buscarProcederesPorConsultaTableAdapter1 = new CamiSys.CAMIDataSet_SPTableAdapters.BuscarProcederesPorConsultaTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.consultaViewBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDATASet_SP)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.consultaViewBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(3, 3);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(534, 487);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click);
            // 
            // consultaViewBindingSource
            // 
            this.consultaViewBindingSource.DataMember = "Consulta_View";
            this.consultaViewBindingSource.DataSource = this.cAMIDataSet;
            // 
            // cAMIDataSet
            // 
            this.cAMIDataSet.DataSetName = "CAMIDataSet";
            this.cAMIDataSet.EnforceConstraints = false;
            this.cAMIDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colTipo_Consulta,
            this.colNumero_Factura,
            this.colFecha,
            this.colPrecioTotalConsulta,
            this.colHistoria_Clinica,
            this.colPaciente_Cedula,
            this.colPaciente_Telefono,
            this.colPaciente_Edad,
            this.colPaciente,
            this.colUsuario});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.RowSeparatorHeight = 2;
            // 
            // colTipo_Consulta
            // 
            this.colTipo_Consulta.FieldName = "Tipo_Consulta";
            this.colTipo_Consulta.Name = "colTipo_Consulta";
            this.colTipo_Consulta.OptionsColumn.AllowEdit = false;
            this.colTipo_Consulta.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colTipo_Consulta.Visible = true;
            this.colTipo_Consulta.VisibleIndex = 0;
            this.colTipo_Consulta.Width = 95;
            // 
            // colNumero_Factura
            // 
            this.colNumero_Factura.FieldName = "Numero_Factura";
            this.colNumero_Factura.Name = "colNumero_Factura";
            this.colNumero_Factura.OptionsColumn.AllowEdit = false;
            this.colNumero_Factura.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            // 
            // colFecha
            // 
            this.colFecha.FieldName = "Fecha";
            this.colFecha.Name = "colFecha";
            this.colFecha.OptionsColumn.AllowEdit = false;
            this.colFecha.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colFecha.Visible = true;
            this.colFecha.VisibleIndex = 1;
            this.colFecha.Width = 95;
            // 
            // colPrecioTotalConsulta
            // 
            this.colPrecioTotalConsulta.FieldName = "PrecioTotalConsulta";
            this.colPrecioTotalConsulta.Name = "colPrecioTotalConsulta";
            this.colPrecioTotalConsulta.OptionsColumn.AllowEdit = false;
            this.colPrecioTotalConsulta.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            // 
            // colHistoria_Clinica
            // 
            this.colHistoria_Clinica.FieldName = "Historia_Clinica";
            this.colHistoria_Clinica.Name = "colHistoria_Clinica";
            this.colHistoria_Clinica.OptionsColumn.AllowEdit = false;
            this.colHistoria_Clinica.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            // 
            // colPaciente_Cedula
            // 
            this.colPaciente_Cedula.Caption = "Cedula";
            this.colPaciente_Cedula.FieldName = "Paciente_Cedula";
            this.colPaciente_Cedula.Name = "colPaciente_Cedula";
            this.colPaciente_Cedula.OptionsColumn.AllowEdit = false;
            this.colPaciente_Cedula.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colPaciente_Cedula.Visible = true;
            this.colPaciente_Cedula.VisibleIndex = 3;
            this.colPaciente_Cedula.Width = 60;
            // 
            // colPaciente_Telefono
            // 
            this.colPaciente_Telefono.FieldName = "Paciente_Telefono";
            this.colPaciente_Telefono.Name = "colPaciente_Telefono";
            this.colPaciente_Telefono.OptionsColumn.AllowEdit = false;
            this.colPaciente_Telefono.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            // 
            // colPaciente_Edad
            // 
            this.colPaciente_Edad.Caption = "Edad";
            this.colPaciente_Edad.FieldName = "Paciente_Edad";
            this.colPaciente_Edad.Name = "colPaciente_Edad";
            this.colPaciente_Edad.OptionsColumn.AllowEdit = false;
            this.colPaciente_Edad.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colPaciente_Edad.Visible = true;
            this.colPaciente_Edad.VisibleIndex = 4;
            this.colPaciente_Edad.Width = 43;
            // 
            // colPaciente
            // 
            this.colPaciente.FieldName = "Paciente";
            this.colPaciente.Name = "colPaciente";
            this.colPaciente.OptionsColumn.AllowEdit = false;
            this.colPaciente.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colPaciente.Visible = true;
            this.colPaciente.VisibleIndex = 2;
            this.colPaciente.Width = 223;
            // 
            // colUsuario
            // 
            this.colUsuario.Caption = "Atendido Por";
            this.colUsuario.FieldName = "Usuario";
            this.colUsuario.Name = "colUsuario";
            this.colUsuario.OptionsColumn.AllowEdit = false;
            this.colUsuario.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colUsuario.Width = 100;
            // 
            // cAMIDATASet_SP
            // 
            this.cAMIDATASet_SP.DataSetName = "CAMIDataSet_SP";
            this.cAMIDATASet_SP.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // consulta_ViewTableAdapter
            // 
            this.consulta_ViewTableAdapter.ClearBeforeFill = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.listBox2);
            this.groupBox1.Controls.Add(this.listBox1);
            this.groupBox1.Controls.Add(this.simpleButton2);
            this.groupBox1.Controls.Add(this.simpleButton1);
            this.groupBox1.Controls.Add(this.richTextBox1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(553, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(494, 487);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(251, 328);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(80, 15);
            this.label2.TabIndex = 6;
            this.label2.Text = "Procederes";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 328);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(101, 15);
            this.label1.TabIndex = 5;
            this.label1.Text = "Medicamentos";
            // 
            // listBox2
            // 
            this.listBox2.Enabled = false;
            this.listBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBox2.FormattingEnabled = true;
            this.listBox2.Location = new System.Drawing.Point(254, 347);
            this.listBox2.Name = "listBox2";
            this.listBox2.Size = new System.Drawing.Size(234, 95);
            this.listBox2.TabIndex = 4;
            // 
            // listBox1
            // 
            this.listBox1.Enabled = false;
            this.listBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(10, 347);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(238, 95);
            this.listBox1.TabIndex = 3;
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(426, 56);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(55, 23);
            this.simpleButton2.TabIndex = 2;
            this.simpleButton2.Text = "Salvar";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(426, 28);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(55, 23);
            this.simpleButton1.TabIndex = 1;
            this.simpleButton1.Text = "Editar";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(10, 22);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(478, 287);
            this.richTextBox1.TabIndex = 0;
            this.richTextBox1.Text = "";
            // 
            // consultaTableAdapter1
            // 
            this.consultaTableAdapter1.ClearBeforeFill = true;
            // 
            // medicamentosTableAdapter1
            // 
            this.medicamentosTableAdapter1.ClearBeforeFill = true;
            // 
            // medicamentos_ConsultaTableAdapter1
            // 
            this.medicamentos_ConsultaTableAdapter1.ClearBeforeFill = true;
            // 
            // procederesTableAdapter1
            // 
            this.procederesTableAdapter1.ClearBeforeFill = true;
            // 
            // procederes_ConsultaTableAdapter1
            // 
            this.procederes_ConsultaTableAdapter1.ClearBeforeFill = true;
            // 
            // buscarMedicamentosPorConsultaTableAdapter1
            // 
            this.buscarMedicamentosPorConsultaTableAdapter1.ClearBeforeFill = true;
            // 
            // buscarProcederesPorConsultaTableAdapter1
            // 
            this.buscarProcederesPorConsultaTableAdapter1.ClearBeforeFill = true;
            // 
            // Consulta_VIEW
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1079, 502);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.gridControl1);
            this.Name = "Consulta_VIEW";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Consulta_VIEW";
            this.Load += new System.EventHandler(this.Consulta_VIEW_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.consultaViewBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDATASet_SP)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private CAMIDataSet cAMIDataSet;
        private CAMIDataSet_SP cAMIDATASet_SP;
        private System.Windows.Forms.BindingSource consultaViewBindingSource;
        private CAMIDataSetTableAdapters.Consulta_ViewTableAdapter consulta_ViewTableAdapter;
        private CAMIDataSet_SPTableAdapters.BuscarMedicamentosPorConsultaTableAdapter Medicamentos_SP_TableAdapter;
        private DevExpress.XtraGrid.Columns.GridColumn colTipo_Consulta;
        private DevExpress.XtraGrid.Columns.GridColumn colNumero_Factura;
        private DevExpress.XtraGrid.Columns.GridColumn colFecha;
        private DevExpress.XtraGrid.Columns.GridColumn colPrecioTotalConsulta;
        private DevExpress.XtraGrid.Columns.GridColumn colHistoria_Clinica;
        private DevExpress.XtraGrid.Columns.GridColumn colPaciente_Cedula;
        private DevExpress.XtraGrid.Columns.GridColumn colPaciente_Telefono;
        private DevExpress.XtraGrid.Columns.GridColumn colPaciente_Edad;
        private DevExpress.XtraGrid.Columns.GridColumn colPaciente;
        private DevExpress.XtraGrid.Columns.GridColumn colUsuario;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private CAMIDataSetTableAdapters.ConsultaTableAdapter consultaTableAdapter1;
        private System.Windows.Forms.ListBox listBox2;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private CAMIDataSetTableAdapters.MedicamentosTableAdapter medicamentosTableAdapter1;
        private CAMIDataSetTableAdapters.Medicamentos_ConsultaTableAdapter medicamentos_ConsultaTableAdapter1;
        private CAMIDataSetTableAdapters.ProcederesTableAdapter procederesTableAdapter1;
        private CAMIDataSetTableAdapters.Procederes_ConsultaTableAdapter procederes_ConsultaTableAdapter1;
        private CAMIDataSet_SPTableAdapters.BuscarMedicamentosPorConsultaTableAdapter buscarMedicamentosPorConsultaTableAdapter1;
        private CAMIDataSet_SPTableAdapters.BuscarProcederesPorConsultaTableAdapter buscarProcederesPorConsultaTableAdapter1;
    }
}