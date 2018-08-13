/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.FunctionDAO;
import daos.RoleDAO;
import entities.Role;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class RoleController {
    
    private RoleDAO rdao;
    
    public RoleController(){
        
    }
    
    public RoleController(SessionFactory factory) {
        this.rdao = new RoleDAO(factory);
    }
    
    public boolean saveOrEdit(String idRole, String namaRole){
        Role role = new Role(idRole, namaRole);
        return this.rdao.insertOrUpdate(role);
    }
    
    private List<Role> convertToListRole(List<Object> dataAwal) {
        List<Role> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Role role = (Role) object;
            datas.add(role);
        }
        return datas;
    }
    
    public List<Role> getAll() {
        return this.convertToListRole(this.rdao.getAll());
    }
    
    public Role getById(String idRole) {
        return this.rdao.getById(idRole);
    }
    
    public List<Role> find(String category, String data){
        return this.convertToListRole(this.rdao.search(category, data));
    }
}
