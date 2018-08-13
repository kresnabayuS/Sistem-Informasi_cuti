<%-- 
    Document   : karyawanView
    Created on : Aug 13, 2018, 2:12:10 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Karyawan"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.KaryawanController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Karyawan</title>
    </head>
    <body>
        <h1>Data Karyawan</h1>
        <% KaryawanController kc = new KaryawanController(HibernateUtil.getSessionFactory()); %>
   
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Karyawan ID</th>
                    <th>Nama Karyawan</th>
                    <th>Email</th>
                    <th>Alamat</th>
                    <th>Jatah Cuti</th>
                    <th>Sisa Cuti</th>
                    <th>Jabatan ID</th>
                    <th>Role ID</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                   for (Karyawan karyawan : kc.getAll()) { %>
                <tr>
                    <td><%= i %></td>
                    <td><%= karyawan.getIdKaryawan() %></td>
                    <td><%= karyawan.getNamaKaryawan() %></td>
                    <td><%= karyawan.getEmail() %></td>
                    <td><%= karyawan.getAlamat() %></td>
                    <td><%= karyawan.getJatahCuti() %></td>
                    <td><%= karyawan.getSisaCuti() %></td>
                    <td><%= karyawan.getIdJabatan() %></td>
                    <td><%= karyawan.getIdRole() %></td>
                    <td></td>
                </tr>
                <% i++; }%>
                
            </tbody>
        </table>

    </body>
</html>