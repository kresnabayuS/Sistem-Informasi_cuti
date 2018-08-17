<%-- 
    Document   : detailKaryawan
    Created on : Aug 17, 2018, 3:23:27 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Karyawan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Karyawan</title>
    </head>
    <body>
        <% Karyawan karyawan = (Karyawan)session.getAttribute("id"); %>
        
        
        Karyawan ID : <%= karyawan.getIdKaryawan() %><br>
        Nama Karyawan : <%= karyawan.getNamaKaryawan() %><br> 
        Email : <%= karyawan.getEmail() %><br> 
        Alamat : <%= karyawan.getAlamat() %><br> 
        Jatah Cuti : <%= karyawan.getJatahCuti() %><br> 
        Sisa Cuti : <%= karyawan.getSisaCuti() %><br> 
        Jabatan : <%= karyawan.getIdJabatan().getNamaJabatan() %><br> 
        Role : <%= karyawan.getIdRole().getNamaRole() %><br> 
        
        <br><a href="views/karyawanView.jsp">Back</a>
    </body>
</html>
