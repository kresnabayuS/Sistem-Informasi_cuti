/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Cuti;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiDAO {
    private FunctionDAO fdao;
    
    public CutiDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    /**
     * 
     * @param cuti
     * @return 
     */
    public boolean insertOrUpdate(Cuti cuti){
        return this.fdao.insertOrUpdate(cuti);
    }
    
    /**
     * 
     * @return 
     */
    public List<Object> getAll() {
        return this.fdao.get("FROM Cuti");
    }
    
    /**
     * 
     * @param idCuti
     * @return 
     */
    public Cuti getById(String idCuti) {
        return (Cuti) this.fdao.getById("FROM Cuti WHERE idCuti='" + idCuti + "'");
    }
    
    public List<Object> search(String category, String data){
        return this.fdao.get("FOM Cuti WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')");
    }
}
