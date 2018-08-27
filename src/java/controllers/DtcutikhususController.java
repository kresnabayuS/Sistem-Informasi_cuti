/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import daos.DtcutiKhususDAO;
import entities.CutiKhusus;
import entities.Dtcutikhusus;
import entities.Karyawan;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class DtcutikhususController {
    
    /**
     * DISAMAIN SAMA DAO YAAA !!!
     *
     */
    private DtcutiKhususDAO dkdao;
    
    public DtcutikhususController(){
        
    }
    
    public DtcutikhususController(SessionFactory factory) {
        this.dkdao = new DtcutiKhususDAO(factory);
    }
public boolean saveOrEdit(String idDetailKhusus, String status, String idCutiKhusus, String idKaryawan){
        Dtcutikhusus dtcutikhusus = new Dtcutikhusus(idDetailKhusus, status, new CutiKhusus(idCutiKhusus), new Karyawan(idKaryawan));
        return this.dkdao.insertOrUpdate(dtcutikhusus);
    }
    
    private List<Dtcutikhusus> convertToListDtcuti(List<Object> dataAwal) {
        List<Dtcutikhusus> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Dtcutikhusus dtcutiKhusus = (Dtcutikhusus) object;
            datas.add(dtcutiKhusus);
        }
        return datas;
    }
    
    public List<Dtcutikhusus> getAll() {
        return this.convertToListDtcuti(this.dkdao.getAll());
    }
    
    public Dtcutikhusus getById(String idDtcuti) {
        return this.dkdao.getById(idDtcuti);
    }
    
    public List<Dtcutikhusus> find(String category, String data){
        return this.convertToListDtcuti(this.dkdao.search(category, data));
    }
}

