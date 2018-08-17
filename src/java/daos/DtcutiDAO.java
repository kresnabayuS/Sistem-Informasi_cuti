/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Dtcuti;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class DtcutiDAO {
    
    private FunctionDAO fdao;

    public DtcutiDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    public boolean insertOrUpdate(Dtcuti dtcuti){
        return this.fdao.insertOrUpdate(dtcuti);
    }
    
     public List<Object> getAll(){
         return this.fdao.get("SELECT FROM Dtcuti");
     }
//    public List<Object> getAll(){
//        return this.fdao.get("SELECT d.id_dtcuti, k.nama_karyawan, j.nama_jabatan, k.email, c.tanggal_awal, c.tanggal_akhir, d.lama_cuti, c.keterangan, d.status FROM Dtcuti d JOIN Cuti c ON d.id_cuti=c.id_cuti JOIN Karyawan k ON d.id_karyawan=k.id_karyawan JOIN Jabatan j ON k.id_jabatan=j.id_jabatan;");
//    }
    
//    public List<Object[]> getAllSort(String category, String sort){
//        return this.fdao.get("SELECT d.id_dtcuti, k.nama_karyawan, j.nama_jabatan, k.email, c.tanggal_awal, c.tanggal_akhir, d.lama_cuti, c.keterangan, d.status FROM Dtcuti d JOIN Cuti c ON d.id_cuti=c.id_cuti JOIN Karyawan k ON d.id_karyawan=k.id_karyawan JOIN Jabatan j ON k.id_jabatan=j.id_jabatan;");
//    }
    
     public Dtcuti getById(String idDtcuti) {
        return (Dtcuti) this.fdao.getById("FROM Dtcuti WHERE idDtcuti='" + idDtcuti + "'");
    }
     
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Dtcuti WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    } 
}
