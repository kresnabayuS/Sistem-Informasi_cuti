/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Dtcuti;
import java.util.List;

/**
 *
 * @author Simbok_pc
 */
public class DtcutiDAO {
    
    private FunctionDAO fdao;

    public DtcutiDAO(FunctionDAO fdao) {
        this.fdao = fdao;
    }
    
    public boolean insertOrUpdate(Dtcuti dtcuti){
        return this.fdao.insertOrUpdate(dtcuti);
    }
    
    public List<Object> getAll(){
        return this.fdao.get("FROM Dtcuti");
    }
    
     public Dtcuti getById(String idDtcuti) {
        return (Dtcuti) this.fdao.getById("FROM Dtcuti WHERE idDtcuti='" + idDtcuti + "'");
    }
     
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Dtcuti WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    } 
}
