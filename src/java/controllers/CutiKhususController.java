/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CutiKhususDAO;
import daos.FunctionDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiKhususController {
    
    private CutiKhususDAO ckdao;
    
    public CutiKhususController(){
    }

    public CutiKhususController(SessionFactory factory) {
        this.ckdao = new CutiKhususDAO((FunctionDAO) factory);
    }
    
    
}
