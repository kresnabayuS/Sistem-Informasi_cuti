/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.CutiKhusus;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiKhususDAO {
    
    private FunctionDAO fdao;

    public CutiKhususDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    public boolean insertOrUpdate(CutiKhusus cutiKhusus){
        return this.fdao.insertOrUpdate(cutiKhusus);
    }
    
    public List<Object> getAll() {
        return this.fdao.get("FROM CutiKhusus");
    }
    
    public CutiKhusus getById(String idCutiKhusus) {
        return (CutiKhusus) this.fdao.getById("FROM CutiKhusus WHERE idCutiKhusus='" + idCutiKhusus + "'");
    }
     
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM CutiKhusus WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    } 
}
