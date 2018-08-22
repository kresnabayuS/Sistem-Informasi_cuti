/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Karyawan;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class KaryawanDAO {

    private FunctionDAO fdao;

    public KaryawanDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }

    public boolean insertOrUpdate(Karyawan karyawan) {
        return this.fdao.insertOrUpdate(karyawan);
    }

    public List<Object> getAll() {
        return this.fdao.get("FROM Karyawan order by id_Karyawan");
    }

    public Karyawan getById(String idKaryawan) {
        return (Karyawan) this.fdao.getById("FROM Karyawan WHERE id_Karyawan='" + idKaryawan + "'");
    }

    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Karyawan WHERE " +category+ " LIKE '%" +data+ "%'");
    }

    public String getIdKaryawan() {
        return (String) this.fdao.getById("Select CONCAT('K',LPAD((TO_NUMBER(SUBSTR(MAX(id_Karyawan),4,3))+1),4, '0')) FROM Karyawan");
    }
}
