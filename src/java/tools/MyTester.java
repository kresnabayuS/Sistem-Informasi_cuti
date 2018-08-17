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

    private static int workload = 10;

    public static String hashPassword(String password_plaintext) {
        String salt = BCrypt.gensalt(workload);
        String hashed_password = BCrypt.hashpw(password_plaintext, salt);
        return (hashed_password);
    }

    public static void checkPass(String plainPassword, String hashedPassword) {
        if (BCrypt.checkpw(plainPassword, hashedPassword)) {
            System.out.println("Password Matched");
        } else {
            System.out.println("Password Doesnt Match");
        }
    }

    public static void main(String[] args) {
        String password = "kresna";
        Date date = new Date();
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        DateFormat jam = new SimpleDateFormat("HH:mm:ss");
        String dateString = dateFormat.format(date);
        System.out.println("ChiperPassword dari kresna = "+hashPassword(password));
        
    }
}
