/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Role;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class RoleDAO {
    
    private FunctionDAO fdao;

    public RoleDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    public boolean insertOrUpdate(Role role){
        return this.fdao.insertOrUpdate(role);
    }
    
    public List<Object> getAll() {
        return this.fdao.get("FROM Role");
    }
    
    public Role getById(String idRole) {
        return (Role) this.fdao.getById("FROM Role WHERE idRole='" + idRole + "'");
    }
    
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Role WHERE REGEXP_LIKE(" + category + ",'%" + data + "%','i')"); // query tersebut merupakan HQL //
    }
}
