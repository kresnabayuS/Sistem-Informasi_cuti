<%-- 
    Document   : dtCutiKhususView
    Created on : Aug 19, 2018, 3:36:43 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Dtcutikhusus"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.DtcutikhususController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cuti Khusus</title>
    </head>
    <body>
        <h2>Data Detail Cuti Khusus</h2>
        <%
            DtcutikhususController dkc = new DtcutikhususController(HibernateUtil.getSessionFactory());
        %>
        
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Detail Cuti Khusus ID</th>
                    <th>Karyawan ID</th>
                    <th>Cuti Khusus ID</th>
                    <th>Status</th>
                     <th>Action</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                    for (Dtcutikhusus dtcutikhusus : dkc.getAll()) {
                %> 
                <tr>
                    <td><%= i %></td>
                    <td><%= dtcutikhusus.getIdDetailKhusus() %></td>
                    <td><%= dtcutikhusus.getIdKaryawan().getNamaKaryawan() %></td>
                    <td><%= dtcutikhusus.getIdCutiKhusus().getNamaCuti() %></td>
                    <td><% if (dtcutikhusus.getStatus() == null) {
                            out.print("Menunggu");
                        } else {
                            out.print(dtcutikhusus.getStatus());
                        }
                        %></td>
                     <td>
                        <a href="../dtcutiKhususServlet?id=<%= dtcutikhusus.getIdDetailKhusus() %>">Edit</a>
                    </td>
                </tr>
                 <%
                        i++;
                     }
                 %>
                
            </tbody>
    </body>
</html>
