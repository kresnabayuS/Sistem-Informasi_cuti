/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Jabatan;
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
public class JabatanControllerTest {
    
    public JabatanControllerTest() {
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
     * Test of saveOrEdit method, of class JabatanController.
     */
    @Test
    public void testSaveOrEdit() {
        System.out.println("saveOrEdit");
        String idJabatan = "SPV";
        String namaJabatan = "Supervisor";
        JabatanController instance = new JabatanController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrEdit(idJabatan, namaJabatan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of getAll method, of class JabatanController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        JabatanController instance = new JabatanController(HibernateUtil.getSessionFactory());
        List<Jabatan> expResult = instance.getAll();
        List<Jabatan> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      
    }

    /**
     * Test of getById method, of class JabatanController.
     */
    @Test
    public void testGetJabatanId() {
        System.out.println("getJabatanId");
        String idJabatan = "SPV";
        JabatanController instance = new JabatanController(HibernateUtil.getSessionFactory());
        Jabatan expResult = new Jabatan("SPV");
        Jabatan result = instance.getById(idJabatan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of find method, of class JabatanController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "id";
        String data = "DIR";
        JabatanController instance = new JabatanController(HibernateUtil.getSessionFactory());
        List<Jabatan> expResult = new ArrayList<>();
        expResult.add(new Jabatan("DIR"));
        List<Jabatan> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
    
}
