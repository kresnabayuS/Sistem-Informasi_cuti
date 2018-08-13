/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.sun.org.apache.bcel.internal.generic.AALOAD;
import daos.FunctionDAO;
import daos.JabatanDAO;
import entities.Jabatan;
import entities.Karyawan;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class JabatanController {
    
    private JabatanDAO jdao;
    
    public JabatanController(){
        
    }
    
    public JabatanController(SessionFactory factory) {
        this.jdao = new JabatanDAO(factory);
    }
    
    public boolean saveOrEdit(String idJabatan, String namaJabatan){
        Jabatan jabatan = new Jabatan(idJabatan, namaJabatan);
        return this.jdao.insertOrUpdate(jabatan);
    }
    
    private List<Jabatan> convertToListJabatan(List<Object> dataAwal) {
        List<Jabatan> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Jabatan jabatan = (Jabatan) object;
            datas.add(jabatan);
        }
        return datas;
    }
    
    public List<Jabatan> getAll() {
        return this.convertToListJabatan(this.jdao.getAll());
    }
    
    public Jabatan getById(String idJabatan) {
        return this.jdao.getById(idJabatan);
    }
    
    public List<Jabatan> find(String category, String data){
        return this.convertToListJabatan(this.jdao.search(category, data));
    }
}
