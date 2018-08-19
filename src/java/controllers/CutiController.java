/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CutiDAO;
import entities.Cuti;
import entities.CutiKhusus;
import entities.Dtcuti;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiController {
    
    private CutiDAO cdao;

    public CutiController(){
        
    }
    
    public CutiController(SessionFactory factory) {
        this.cdao = new CutiDAO(factory);
    }
    
    public boolean saveOrEdit(String idCuti, Date tanggalAwal, Date tanggalAkhir, String keterangan){
        Cuti cuti = new Cuti(idCuti, tanggalAwal, tanggalAkhir, keterangan);
        return this.cdao.insertOrUpdate(cuti);
    }
    
    private List<Cuti> convertToListCuti(List<Object> dataAwal) {
        List<Cuti> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Cuti cuti = (Cuti) object;
            datas.add(cuti);
        }
        return datas;
    }
    
    public List<Cuti> getAll() {
        return this.convertToListCuti(this.cdao.getAll());
    }
    
    public Cuti getById(String idCuti) {
        return this.cdao.getById(idCuti);
    }
    
    public List<Cuti> find(String category, String data){
        return this.convertToListCuti(this.cdao.search(category, data));
    }
    
    public String getIdCuti(){
        return this.cdao.getIdCuti();
    }
}
    

