/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CutiKhususDAO;
import daos.FunctionDAO;
import entities.Cuti;
import entities.CutiKhusus;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiKhususController {
    
    private CutiKhususDAO ckdao;
    
    public CutiKhususController(){
    }

    public CutiKhususController(SessionFactory factory) {
        this.ckdao = new CutiKhususDAO(factory);
    }
    
    public boolean saveOrEdit(String idCutiKhusus, String keteranganCuti, BigInteger lamaCutiKhusus){
        CutiKhusus cutiKhusus = new CutiKhusus(idCutiKhusus, keteranganCuti, lamaCutiKhusus);
        return this.ckdao.insertOrUpdate(cutiKhusus);
    }
    
    private List<CutiKhusus> convertToListCutiKhusus(List<Object> dataAwal) {
        List<CutiKhusus> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            CutiKhusus cutiKhusus = (CutiKhusus) object;
            datas.add(cutiKhusus);
        }
        return datas;
    }
    
    public List<CutiKhusus> getAll() {
        return this.convertToListCutiKhusus(this.ckdao.getAll());
    }
    
    public CutiKhusus getById(String idCutiKhusus) {
        return this.ckdao.getById(idCutiKhusus);
    }
    
    public List<CutiKhusus> find(String category, String data){
        return this.convertToListCutiKhusus(this.ckdao.search(category, data));
    }
}
