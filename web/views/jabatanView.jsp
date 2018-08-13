<%-- 
    Document   : jabatanView
    Created on : Aug 13, 2018, 12:29:02 AM
    Author     : Simbok_pc
--%>

<%@page import="entities.Jabatan"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.JabatanController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jabatan</title>
    </head>
    <body>
        <h1>Data Jabatan</h1>
         <% JabatanController jc = new JabatanController(HibernateUtil.getSessionFactory()); %>
         <p>
         <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" value="Find" name="btnFind" />
         
         <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Jabatan ID</th>
                    <th>Jabatan Title</th>
                    <th>Action</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                    for (Jabatan jabatan : jc.getAll()) {%>                
                <tr>
                    <td><%= i %></td>
                    <td><%= jabatan.getIdJabatan() %></td>
                    <td><%= jabatan.getNamaJabatan() %></td>
                    <td>
                        <a href="../jabatanServlet?id=<%= jabatan.getIdJabatan()%>">Edit</a>
                        <a href="../detailJabatan?idJabatan=<%=jabatan.getIdJabatan()%>"> | Lihat Details</a>
                    </td>
                </tr>
                <% i++; }%>
            </tbody>
        </table>    
    </body>
</html>
