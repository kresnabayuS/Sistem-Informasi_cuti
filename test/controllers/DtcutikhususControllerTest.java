/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Dtcutikhusus;
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
public class DtcutikhususControllerTest {
    
    public DtcutikhususControllerTest() {
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
     * Test of saveOrEdit method, of class DtcutikhususController.
     */
    @Test
    public void testSaveOrEdit() {
        System.out.println("saveOrEdit");
        String idDetailKhusus = "DK01";
        String status = "Menunggu";
        String idCutiKhusus = "CK01";
        String idKaryawan = "K0001";
        DtcutikhususController instance = new DtcutikhususController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrEdit(idDetailKhusus, status, idCutiKhusus, idKaryawan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getAll method, of class DtcutikhususController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        DtcutikhususController instance = new DtcutikhususController(HibernateUtil.getSessionFactory());
        List<Dtcutikhusus> expResult = instance.getAll();
        List<Dtcutikhusus> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getById method, of class DtcutikhususController.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        String idDtcuti = "DT01";
        DtcutikhususController instance = new DtcutikhususController(HibernateUtil.getSessionFactory());
        Dtcutikhusus expResult = instance.getById(idDtcuti);
        Dtcutikhusus result = instance.getById(idDtcuti);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of find method, of class DtcutikhususController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "status";
        String data = "Menunggu";
        DtcutikhususController instance = new DtcutikhususController(HibernateUtil.getSessionFactory());
        List<Dtcutikhusus> expResult = instance.find(category, data);
        List<Dtcutikhusus> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
    
}
