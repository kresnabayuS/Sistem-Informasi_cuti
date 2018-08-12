/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CutiDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Simbok_pc
 */
public class CutiController {
    
    private CutiDAO cdao;

    public CutiController(){
        
    }
    
    public CutiController(SessionFactory factory) {
        this.cdao = new CutiDAO(factory);
    }
    
    public boolean saveOrEdit
