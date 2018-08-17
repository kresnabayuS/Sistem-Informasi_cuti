/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.KaryawanDAO;
import entities.Jabatan;
import entities.Karyawan;
import entities.Role;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import method.BCrypt;

/**
 *
 * @author Simbok_pc
 */
public class KaryawanController {
    
    
    private KaryawanDAO kdao;
    
    public KaryawanController(){
        
    }
    
    public KaryawanController(SessionFactory factory) {
        this.kdao = new KaryawanDAO(factory);
    }
    
    public boolean saveOrEdit(String idKaryawan, String namaKaryawan, String email, String alamat, BigInteger jatahCuti, BigInteger sisaCuti, String password, Jabatan idJabatan, Role idRole){
        Karyawan karyawan = new Karyawan(idKaryawan, namaKaryawan, email, alamat, jatahCuti, sisaCuti, password, idJabatan, idRole);
        return this.kdao.insertOrUpdate(karyawan);
    }
    
  public boolean login(String category,String email, String password){
        Karyawan karyawan = (Karyawan) kdao.search(category, email).get(0);
        return BCrypt.checkpw(password, karyawan.getPassword());
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
