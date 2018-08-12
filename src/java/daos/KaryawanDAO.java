/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Karyawan;
import java.util.List;

/**
 *
 * @author Simbok_pc
 */
public class KaryawanDAO {
    
    private FunctionDAO fdao;

    public KaryawanDAO(FunctionDAO fdao) {
        this.fdao = fdao;
    }
    
    public boolean insertOrUpdate(Karyawan karyawan){
        return this.fdao.insertOrUpdate(karyawan);
    }
    
    public List<Object> getAll() {
        return this.fdao.get("FROM Karyawan");
    }
    
    public Karyawan getById(String idKaryawan) {
        return (Karyawan) this.fdao.getById("FROM Karyawan WHERE idKaryawan='" + idKaryawan + "'");
    }
    
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Karyawan WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    }
}
