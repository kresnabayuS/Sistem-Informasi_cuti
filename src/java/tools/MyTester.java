/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.JabatanController;
import controllers.KaryawanController;
import entities.Jabatan;
import entities.Karyawan;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import method.BCrypt;

/**
 *
 * @author Simbok_pc
 */
public class MyTester {

    public static void main(String[] args) {
        System.out.println(HibernateUtil.getSessionFactory());
        System.out.println("oke");

        KaryawanController kc = new KaryawanController(HibernateUtil.getSessionFactory());
        System.out.println(BCrypt.hashpw("kresna12", BCrypt.gensalt(12)));
        System.out.println(BCrypt.checkpw("kresna12", BCrypt.hashpw("kresna12", BCrypt.gensalt(12))));
    }
}
