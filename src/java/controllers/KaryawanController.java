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
import method.BCrypt;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class KaryawanController {

    private KaryawanDAO kdao;

    public KaryawanController() {

    }

    public KaryawanController(SessionFactory factory) {
        this.kdao = new KaryawanDAO(factory);
    }

//    public boolean saveOrEdit(String idKaryawan, String namaKaryawan, String email, String alamat, String jatahCuti, String sisaCuti, String password, String idJabatan, String idRole){
//        Karyawan karyawan = new Karyawan(idKaryawan, namaKaryawan, email, alamat, new BigInteger(jatahCuti), new BigInteger(sisaCuti), password, new Jabatan(idJabatan), new Role(idRole));
//        return this.kdao.insertOrUpdate(karyawan);
//    }
    public boolean saveOrUpdate(String idKaryawan, String namaKaryawan, 
            String email, String alamat, String jatahCuti, String sisaCuti, 
            String password, String idJabatan, String idRole) {
        Karyawan k = new Karyawan(idKaryawan, namaKaryawan, email, alamat, 
                new BigInteger(jatahCuti), new BigInteger(sisaCuti), 
                BCrypt.hashpw(password, BCrypt.gensalt(12)), new Jabatan(idJabatan), new Role(idRole));
        return this.kdao.insertOrUpdate(k);
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

    public List<Karyawan> getAllSort(String category, String sort) {
        return this.convertToListKaryawan(this.kdao.search(category, sort));
    }

    public Karyawan getById(String idKaryawan) {
        return this.kdao.getById(idKaryawan);
    }

    public List<Karyawan> find(String category, String data) {
        return this.convertToListKaryawan(this.kdao.search(category, data));
    }

    public String getIdKaryawan() {
        return this.kdao.getIdKaryawan();
    }
    
    public boolean login (String id, String password){
        Karyawan karyawan = (Karyawan) kdao.getById(id);
        return BCrypt.checkpw(password, karyawan.getPassword());
    }

    public boolean login(String category, String email, String password) {
        Karyawan kar = (Karyawan) kdao.search(category,email).get(0);
        System.err.println(kar.getIdKaryawan()+","+kar.getEmail());
        return BCrypt.checkpw(password, kar.getPassword());
    }
    
    public Karyawan getByCategory (String category, String value){
        Karyawan kar = (Karyawan) kdao.search(category, value).get(0);
        return this.kdao.getById(kar.getIdKaryawan());
    }
}
