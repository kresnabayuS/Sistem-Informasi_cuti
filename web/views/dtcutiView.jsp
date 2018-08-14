<%-- 
    Document   : dtcutiView
    Created on : Aug 13, 2018, 2:41:12 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Dtcuti"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.DtcutiController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cuti</title>
    </head>
    <body>
        <h1>Data Detail Cuti</h1>
        <% DtcutiController dc = new DtcutiController(HibernateUtil.getSessionFactory()); %>
        
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Detail Cuti ID</th>
                    <th>Nama Karyawan</th>
                    <th>Lama Cuti</th>
                    <th>Cuti ID</th>
                    <th>Status</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                    for (Dtcuti dtcuti : dc.getAll()) {%> 
                <tr>
                    <td><%= i %></td>
                    <td><%= dtcuti.getIdDtcuti() %></td>
                    <td><%= dtcuti.getIdKaryawan().getIdKaryawan() %></td>
                    <td><%= dtcuti.getLamaCuti() %></td>
                    <td><%= dtcuti.getIdCuti().getIdCuti() %></td>
                    <td><%= dtcuti.getStatus()%></td>
                </tr>
                 <%
                        i++;
                     }
                 %>
                
            </tbody>
    </body>
</html>
