/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Dtcutikhusus;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class DtcutiKhususDAO {
     private FunctionDAO fdao;

    public DtcutiKhususDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    public boolean insertOrUpdate(Dtcutikhusus dtcutiKhusus){
        return this.fdao.insertOrUpdate(dtcutiKhusus);
    }
    
     public List<Object> getAll(){
         return this.fdao.get("SELECT FROM DtcutiKhusus");
     }
    
     public Dtcutikhusus getById(String idDetailKhusus) {
        return (Dtcutikhusus) this.fdao.getById("FROM DtcutiKhusus WHERE idDetailKhusus='" + idDetailKhusus + "'");
    }
     
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM DtcutiKhusus WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    } 
}
