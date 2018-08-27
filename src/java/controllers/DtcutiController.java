/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.DtcutiDAO;
import entities.Cuti;
import entities.Dtcuti;
import entities.Karyawan;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class DtcutiController {
    
    private DtcutiDAO ddao;
    
    public DtcutiController(){
        
    }
    
    public DtcutiController(SessionFactory factory) {
        this.ddao = new DtcutiDAO(factory);
    }
public boolean saveOrEdit(String idDtcuti, String status, String lamaCuti, String idCuti, String idKaryawan){
        Dtcuti dtcuti = new Dtcuti(idDtcuti, status, new BigInteger(lamaCuti), new Cuti(idCuti), new Karyawan(idKaryawan));
        return this.ddao.insertOrUpdate(dtcuti);
    }
    
    private List<Dtcuti> convertToListDtcuti(List<Object> dataAwal) {
        List<Dtcuti> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Dtcuti dtcuti = (Dtcuti) object;
            datas.add(dtcuti);
        }
        return datas;
    }
    
    public List<Dtcuti> getAll() {
        return this.convertToListDtcuti(this.ddao.getAll());
    }
    
    public Dtcuti getById(String idDtcuti) {
        return this.ddao.getById(idDtcuti);
    }
    
    public List<Dtcuti> find(String category, String data){
        return this.convertToListDtcuti(this.ddao.search(category, data));
    }
}
