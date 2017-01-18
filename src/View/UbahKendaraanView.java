/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Controller.*;
import Model.*;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JTextField;

/**
 *
 * @author Budi Pradnyana
 */
public class UbahKendaraanView extends javax.swing.JFrame {
    UbahKendaraanController control;
    /**
     * Creates new form TambahWisataView
     */
    public UbahKendaraanView() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_jenis = new javax.swing.JTextField();
        btn_ubh_kend = new javax.swing.JButton();
        combo_status = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        txt_plat = new javax.swing.JTextField();
        btn_back = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("Ubah Tempat Wisata");

        jLabel2.setText("Jenis Kendaraan");

        jLabel3.setText("Status");

        btn_ubh_kend.setText("Ubah");

        combo_status.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        jLabel5.setText("Nomor Polisi");

        btn_back.setText("Kembali");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(28, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(113, 113, 113))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btn_back)
                            .addComponent(jLabel3)
                            .addComponent(jLabel2)
                            .addComponent(jLabel5))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txt_jenis)
                                    .addComponent(combo_status, 0, 208, Short.MAX_VALUE)
                                    .addComponent(txt_plat)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(72, 72, 72)
                                .addComponent(btn_ubh_kend, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(32, 32, 32))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(15, 15, 15)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txt_plat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_jenis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(combo_status, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_ubh_kend)
                    .addComponent(btn_back, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(37, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_ubh_kend;
    private javax.swing.JComboBox<String> combo_status;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JTextField txt_jenis;
    private javax.swing.JTextField txt_plat;
    // End of variables declaration//GEN-END:variables

    public void InitCombo(){
        combo_status.removeAllItems();
        combo_status.addItem("Available");
        combo_status.addItem("Booked");
    }
    
    public JButton getBtn_ubh_kend() {
        return btn_ubh_kend;
    }

    public String getTxt_status() {
        String s = (String)combo_status.getSelectedItem();
        return s;
    }

    public void setController(UbahKendaraanController c){
        this.control = c;
        btn_ubh_kend.addActionListener(c);
        btn_back.addActionListener(c);
    }

    public JComboBox<String> getCombo_status() {
        return combo_status;
    }

    public void setCombo_status(JComboBox<String> combo_status) {
        this.combo_status = combo_status;
    }

    public JTextField getTxt_jenis() {
        return txt_jenis;
    }

    public void setTxt_jenis(JTextField txt_jenis) {
        this.txt_jenis = txt_jenis;
    }

    public JTextField getTxt_plat() {
        return txt_plat;
    }

    public void setTxt_plat(JTextField txt_plat) {
        this.txt_plat = txt_plat;
    }


    public void view(Kendaraan t){
        this.txt_plat.setText(t.getPlat());
        this.txt_plat.setEditable(false);
        this.txt_jenis.setText(t.getJenis());
        this.combo_status.setSelectedItem(t.getStatus());
    }

    public JButton getBtn_back() {
        return btn_back;
    }
    
}
