/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Jabatan;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class JabatanDAO {
    
    private FunctionDAO fdao;

    public JabatanDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    public boolean insertOrUpdate(Jabatan jabatan){
        return this.fdao.insertOrUpdate(jabatan);
    }
    
    public List<Object> getAll() {
        return this.fdao.get("FROM Jabatan");
    }
    
    public Jabatan getById(String idJabatan) {
        return (Jabatan) this.fdao.getById("FROM Jabatan WHERE idJabatan='" + idJabatan + "'");
    }
    
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Jabatan WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    }
}
