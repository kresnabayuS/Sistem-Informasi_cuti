/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Dtcuti;
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
public class DtcutiControllerTest {
    
    public DtcutiControllerTest() {
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
     * Test of saveOrEdit method, of class DtcutiController.
     */
    @Test
    public void testSaveOrEdit() {
        System.out.println("saveOrEdit");
        String idDtcuti = "DT06";
        String status = "menunggu";
        String lamaCuti = "2";
        String idCuti = "C001";
        String idKaryawan = "K0006";
        DtcutiController instance = new DtcutiController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrEdit(idDtcuti, status, lamaCuti, idCuti, idKaryawan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getAll method, of class DtcutiController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        DtcutiController instance = new DtcutiController(HibernateUtil.getSessionFactory());
        List<Dtcuti> expResult = instance.getAll();
        List<Dtcuti> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getById method, of class DtcutiController.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        String idDtcuti = "DT06";
        DtcutiController instance = new DtcutiController(HibernateUtil.getSessionFactory());
        Dtcuti expResult = instance.getById(idDtcuti);
        Dtcuti result = instance.getById(idDtcuti);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of find method, of class DtcutiController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "idDtcuti";
        String data = "DT06";
        DtcutiController instance = new DtcutiController(HibernateUtil.getSessionFactory());
        List<Dtcuti> expResult = instance.find(category, data);
        List<Dtcuti> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
    
}
