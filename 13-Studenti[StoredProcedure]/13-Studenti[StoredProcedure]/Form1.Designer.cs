namespace _13_Studenti_StoredProcedure_
{
    partial class Form1
    {
        /// <summary>
        /// Variabile di progettazione necessaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Pulire le risorse in uso.
        /// </summary>
        /// <param name="disposing">ha valore true se le risorse gestite devono essere eliminate, false in caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Codice generato da Progettazione Windows Form

        /// <summary>
        /// Metodo necessario per il supporto della finestra di progettazione. Non modificare
        /// il contenuto del metodo con l'editor di codice.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.btnProcedure = new System.Windows.Forms.Button();
            this.txtClasse = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(160, 24);
            this.label1.TabIndex = 0;
            this.label1.Text = "Inserisci la classe:";
            // 
            // btnProcedure
            // 
            this.btnProcedure.Location = new System.Drawing.Point(126, 136);
            this.btnProcedure.Name = "btnProcedure";
            this.btnProcedure.Size = new System.Drawing.Size(263, 46);
            this.btnProcedure.TabIndex = 1;
            this.btnProcedure.Text = "Visualizza Studenti";
            this.btnProcedure.UseVisualStyleBackColor = true;
            this.btnProcedure.Click += new System.EventHandler(this.btnProcedure_Click);
            // 
            // txtClasse
            // 
            this.txtClasse.Location = new System.Drawing.Point(217, 36);
            this.txtClasse.Name = "txtClasse";
            this.txtClasse.Size = new System.Drawing.Size(151, 22);
            this.txtClasse.TabIndex = 2;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 255);
            this.Controls.Add(this.txtClasse);
            this.Controls.Add(this.btnProcedure);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnProcedure;
        private System.Windows.Forms.TextBox txtClasse;
    }
}

