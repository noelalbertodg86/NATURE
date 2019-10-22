namespace CamiSys
{
    partial class TipoConsulta
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TipoConsulta));
            this.cAMIDataSet = new CamiSys.CAMIDataSet();
            this.tipo_ConsultaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tipo_ConsultaTableAdapter = new CamiSys.CAMIDataSetTableAdapters.Tipo_ConsultaTableAdapter();
            this.tableAdapterManager = new CamiSys.CAMIDataSetTableAdapters.TableAdapterManager();
            this.tipo_ConsultaBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.tipo_ConsultaBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.tipo_ConsultaDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaBindingNavigator)).BeginInit();
            this.tipo_ConsultaBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // cAMIDataSet
            // 
            this.cAMIDataSet.DataSetName = "CAMIDataSet";
            this.cAMIDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tipo_ConsultaBindingSource
            // 
            this.tipo_ConsultaBindingSource.DataMember = "Tipo_Consulta";
            this.tipo_ConsultaBindingSource.DataSource = this.cAMIDataSet;
            // 
            // tipo_ConsultaTableAdapter
            // 
            this.tipo_ConsultaTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.ConsultaTableAdapter = null;
            this.tableAdapterManager.Medicamentos_ConsultaTableAdapter = null;
            this.tableAdapterManager.MedicamentosTableAdapter = null;
            this.tableAdapterManager.Paciente_AgendaTableAdapter = null;
            this.tableAdapterManager.Paciente_ConsultaTableAdapter = null;
            this.tableAdapterManager.PacienteTableAdapter = null;
            this.tableAdapterManager.Procederes_ConsultaTableAdapter = null;
            this.tableAdapterManager.ProcederesTableAdapter = null;
            this.tableAdapterManager.testTableAdapter = null;
            this.tableAdapterManager.Tipo_ConsultaTableAdapter = this.tipo_ConsultaTableAdapter;
            this.tableAdapterManager.UpdateOrder = CamiSys.CAMIDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            this.tableAdapterManager.UsuariosTableAdapter = null;
            // 
            // tipo_ConsultaBindingNavigator
            // 
            this.tipo_ConsultaBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.tipo_ConsultaBindingNavigator.BindingSource = this.tipo_ConsultaBindingSource;
            this.tipo_ConsultaBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.tipo_ConsultaBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.tipo_ConsultaBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.tipo_ConsultaBindingNavigatorSaveItem});
            this.tipo_ConsultaBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.tipo_ConsultaBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.tipo_ConsultaBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.tipo_ConsultaBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.tipo_ConsultaBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.tipo_ConsultaBindingNavigator.Name = "tipo_ConsultaBindingNavigator";
            this.tipo_ConsultaBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.tipo_ConsultaBindingNavigator.Size = new System.Drawing.Size(471, 25);
            this.tipo_ConsultaBindingNavigator.TabIndex = 0;
            this.tipo_ConsultaBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 15);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 6);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 20);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 20);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 6);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 20);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // tipo_ConsultaBindingNavigatorSaveItem
            // 
            this.tipo_ConsultaBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tipo_ConsultaBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("tipo_ConsultaBindingNavigatorSaveItem.Image")));
            this.tipo_ConsultaBindingNavigatorSaveItem.Name = "tipo_ConsultaBindingNavigatorSaveItem";
            this.tipo_ConsultaBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 23);
            this.tipo_ConsultaBindingNavigatorSaveItem.Text = "Save Data";
            this.tipo_ConsultaBindingNavigatorSaveItem.Click += new System.EventHandler(this.tipo_ConsultaBindingNavigatorSaveItem_Click_1);
            // 
            // tipo_ConsultaDataGridView
            // 
            this.tipo_ConsultaDataGridView.AutoGenerateColumns = false;
            this.tipo_ConsultaDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tipo_ConsultaDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4});
            this.tipo_ConsultaDataGridView.DataSource = this.tipo_ConsultaBindingSource;
            this.tipo_ConsultaDataGridView.Location = new System.Drawing.Point(6, 28);
            this.tipo_ConsultaDataGridView.Name = "tipo_ConsultaDataGridView";
            this.tipo_ConsultaDataGridView.Size = new System.Drawing.Size(453, 268);
            this.tipo_ConsultaDataGridView.TabIndex = 1;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "ID";
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            this.dataGridViewTextBoxColumn1.Visible = false;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "Nombre";
            this.dataGridViewTextBoxColumn2.HeaderText = "Nombre";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.Width = 200;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Precio";
            this.dataGridViewTextBoxColumn3.HeaderText = "Precio";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Comision";
            this.dataGridViewTextBoxColumn4.HeaderText = "Comision";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // TipoConsulta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(471, 308);
            this.Controls.Add(this.tipo_ConsultaDataGridView);
            this.Controls.Add(this.tipo_ConsultaBindingNavigator);
            this.Name = "TipoConsulta";
            this.Text = "TipoConsulta";
            this.Load += new System.EventHandler(this.TipoConsulta_Load);
            ((System.ComponentModel.ISupportInitialize)(this.cAMIDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaBindingNavigator)).EndInit();
            this.tipo_ConsultaBindingNavigator.ResumeLayout(false);
            this.tipo_ConsultaBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tipo_ConsultaDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CAMIDataSet cAMIDataSet;
        private System.Windows.Forms.BindingSource tipo_ConsultaBindingSource;
        private CAMIDataSetTableAdapters.Tipo_ConsultaTableAdapter tipo_ConsultaTableAdapter;
        private CAMIDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator tipo_ConsultaBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton tipo_ConsultaBindingNavigatorSaveItem;
        private System.Windows.Forms.DataGridView tipo_ConsultaDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
    }
}