/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Karyawan;
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
public class KaryawanControllerTest {
    
    public KaryawanControllerTest() {
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
     * Test of saveOrUpdate method, of class KaryawanController.
     */
    @Test
    public void testSaveOrUpdate() {
        System.out.println("saveOrUpdate");
        String idKaryawan = "K0006";
        String namaKaryawan = "Cinta Rangga";
        String email = "cintarangga@gmail.com";
        String alamat = "Jl. Kenangan No.01";
        String jatahCuti = "12";
        String sisaCuti = "0";
        String password = "cinta";
        String idJabatan = "SPV";
        String idRole = "KRY";
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        boolean expResult = true;
        boolean result = instance.saveOrUpdate(idKaryawan, namaKaryawan, email, alamat, jatahCuti, sisaCuti, password, idJabatan, idRole);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getAll method, of class KaryawanController.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        List<Karyawan> expResult = instance.getAll();
        List<Karyawan> result = instance.getAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getAllSort method, of class KaryawanController.
     */
    @Test
    public void testGetAllSort() {
        System.out.println("getAllSort");
        String category = "nama";
        String sort = "asc";
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        List<Karyawan> expResult =  instance.getAllSort(category, sort);
        List<Karyawan> result = instance.getAllSort(category, sort);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of getById method, of class KaryawanController.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        String idKaryawan = "K0001";
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        Karyawan expResult = instance.getById(idKaryawan);
        Karyawan result = instance.getById(idKaryawan);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of find method, of class KaryawanController.
     */
    @Test
    public void testFind() {
        System.out.println("find");
        String category = "nama";
        String data = "Kresna Bayu Saputra";
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        List<Karyawan> expResult = instance.find(category, data);
        List<Karyawan> result = instance.find(category, data);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      
    }

    /**
     * Test of getIdKaryawan method, of class KaryawanController.
     */
    @Test
    public void testGetIdKaryawan() {
        System.out.println("getIdKaryawan");
        KaryawanController instance = new KaryawanController(HibernateUtil.getSessionFactory());
        String expResult = instance.getIdKaryawan();
        String result = instance.getIdKaryawan();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    
    }
    
}
