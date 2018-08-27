/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Cuti;
import java.util.Date;
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
public class CutiControllerTest {
    
    public CutiControllerTest() {
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
     * Test of saveOrEdit method, of class CutiController.
     */
    @Test
    public void testSaveOrEdit() {
        System.out.println("saveOrEdit");
        String idCuti = "C006";
        Date tanggalAwal = new Date();
        Date tanggalAkhir = new Date();
        String keterangan = "Piknik";
        CutiController instance = new CutiController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrEdit(idCuti, tanggalAwal, tanggalAkhir, keterangan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of getAll method, of class CutiController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        CutiController instance = new CutiController(HibernateUtil.getSessionFactory());
        List<Cuti> expResult = instance.getAll();
        List<Cuti> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getById method, of class CutiController.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        String idCuti = "C006";
        CutiController instance = new CutiController(HibernateUtil.getSessionFactory());
        Cuti expResult = instance.getById(idCuti);
        Cuti result = instance.getById(idCuti);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of find method, of class CutiController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "idCuti";
        String data = "C001";
        CutiController instance = new CutiController(HibernateUtil.getSessionFactory());
        List<Cuti> expResult = instance.find(category, data);
        List<Cuti> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getIdCuti method, of class CutiController.
     */
    @Test
    public void testGetIdCuti() {
        System.out.println("getIdCuti");
        CutiController instance = new CutiController(HibernateUtil.getSessionFactory());
        String expResult = instance.getIdCuti();
        String result = instance.getIdCuti();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }
    
}
