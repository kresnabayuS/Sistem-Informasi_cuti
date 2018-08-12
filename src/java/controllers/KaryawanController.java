/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.FunctionDAO;
import daos.KaryawanDAO;
import entities.Dtcuti;
import entities.Jabatan;
import entities.Karyawan;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class KaryawanController {
    
    
    private KaryawanDAO kdao;
    
    public KaryawanController(){
        
    }
    
    public KaryawanController(SessionFactory factory) {
        this.kdao = new KaryawanDAO((FunctionDAO) factory);
    }
    
    public boolean saveOrEdit(BigDecimal idKaryawan, String namaKaryawan, String email, String alamat, BigInteger jatahCuti, String idRole, BigInteger sisaCuti, List<Dtcuti> dtcutiList, Jabatan idJabatan){
        Karyawan karyawan = new Karyawan(idKaryawan, namaKaryawan, email, alamat, jatahCuti, idRole, sisaCuti, dtcutiList, idJabatan);
        return this.kdao.insertOrUpdate(karyawan);
    }
    
    private List<Karyawan> convertToListKaryawan(List<Object> dataAwal) {
        List<Karyawan> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Karyawan karyawan = (Karyawan) object;
            datas.add(karyawan);
        }
        return datas;
    }
    
    public List<Karyawan> getAll() {
        return this.convertToListKaryawan(this.kdao.getAll());
    }
    
    public Karyawan getById(String idKaryawan) {
        return this.kdao.getById(idKaryawan);
    }
    
    public List<Karyawan> find(String category, String data){
        return this.convertToListKaryawan(this.kdao.search(category, data));
    }
}
