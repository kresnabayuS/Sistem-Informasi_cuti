/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Role;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import tools.HibernateUtil;

/**
 *
 * @author Simbok_pc
 */
public class RoleControllerTest {
    
    public RoleControllerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of saveOrEdit method, of class RoleController.
     */
    @Test
    public void testSaveOrEdit() {
        System.out.println("saveOrEdit");
        String idRole = "KRY";
        String namaRole = "Karyawan1";
        RoleController instance = new RoleController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrEdit(idRole, namaRole);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getAll method, of class RoleController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        RoleController instance = new RoleController(HibernateUtil.getSessionFactory());
        List<Role> expResult = instance.getAll();
        List<Role> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getById method, of class RoleController.
     */
    @Test
    public void testGetRoleId() {
        System.out.println("getRoleId");
        String idRole = "KRY";
        RoleController instance = new RoleController(HibernateUtil.getSessionFactory());
        Role expResult = new Role("KRY");
        Role result = instance.getById(idRole);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of find method, of class RoleController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "idRole";
        String data = "KRY";
        RoleController instance = new RoleController(HibernateUtil.getSessionFactory());
        List<Role> expResult = new ArrayList<>();
        List<Role> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
}
