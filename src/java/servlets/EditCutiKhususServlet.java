/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.CutiKhususController;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.HibernateUtil;

/**
 *
 * @author Simbok_pc
 */
public class EditCutiKhususServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("txtIdCutiKhusus");
        String name = request.getParameter("txtNamaCuti");
        String lama = request.getParameter("txtLamaCutiKhusus");
        String tgl_awal  = request.getParameter("txtTglAwal");
        String tgl_akhir = request.getParameter("txtTglAkhir");
        
                
        try (PrintWriter out = response.getWriter()) {
            
            DateFormat tgl = new SimpleDateFormat("yyyy-MM-dd");
            Date tanggal_awal = tgl.parse(tgl_awal);
            Date tanggal_akhir = tgl.parse(tgl_akhir);
            CutiKhususController ck = new CutiKhususController(HibernateUtil.getSessionFactory());
            if(ck.saveOrEdit(id, name, Integer.parseInt(lama),tanggal_awal, tanggal_akhir)){
                   out.println("Selamat, edit cuti khusus berhasil!");
            } else {
                out.println("Coba Lagi!");
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
