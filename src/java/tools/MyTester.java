/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.JabatanController;

/**
 *
 * @author Simbok_pc
 */
public class MyTester {
    
     public static void main(String[] args) {
        System.out.println(HibernateUtil.getSessionFactory());
         System.out.println("Berhasil");
         JabatanController jc = new JabatanController(
                HibernateUtil.getSessionFactory());
         
//    for (Jabatan jabatan : jc.getAll()) {
////        for (Job job : jc.search("jobId", "AD")) {
//            System.out.println(jabatan.getIdJabatan
//                    +" - "+job.get());
//        }
}
}
