<%-- 
    Document   : cutiKhususView
    Created on : Aug 13, 2018, 2:41:27 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.CutiKhusus"%>
<%@page import="controllers.CutiKhususController"%>
<%@page import="tools.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuti Khusus</title>
    </head>
    <body>
        <h1>Data Cuti Khusus</h1>
        <% CutiKhususController ck = new CutiKhususController(HibernateUtil.getSessionFactory()); %>
    
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Cuti Khusus ID</th>
                    <th>Nama Cuti</th>
                    <th>Lama Cuti Khusus</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                    for (CutiKhusus cutiKhusus : ck.getAll()) {%>  
                <tr>
                    <td><%= i %></td>
                    <td><%= cutiKhusus.getIdCutiKhusus() %></td>
                    <td><%= cutiKhusus.getNamaCuti() %></td>
                    <td><%= cutiKhusus.getLamaCutiKhusus() %></td>
                    <td></td>
                </tr>
                <% i++; }%>
            </tbody>
        </table>

    </body>
</html>
