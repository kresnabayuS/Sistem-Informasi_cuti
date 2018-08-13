<%-- 
    Document   : editJabatanView
    Created on : Aug 13, 2018, 10:03:10 AM
    Author     : Simbok_pc
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.JabatanController"%>
<%@page import="entities.Jabatan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Jabatan</title>
    </head>
    <body>
        <% JabatanController jc = new JabatanController(HibernateUtil.getSessionFactory());
           Jabatan jabatan = (Jabatan) session.getAttribute("id");
           
        %>
        <h1>Hello, mau Edit?</h1>
        <hr>
        <form action="editJabatanServlet" method="GET">
            <table border="0">
                <tr>
                    <td>Jabatan ID</td>
                    <td>: </td>
                    <td><input type="text" name="txtIdJabatan" 
                           value="<%= jabatan.getIdJabatan()%>" </td>
                </tr>
                <tr>
                    <td>Jabatan Nama</td>
                    <td>: </td>
                    <td><input type="text" name="txtNamaJabatan" 
                               value="<%= jabatan.getNamaJabatan()%>" </td>
                </tr>
                
<!--                <tr><input type="hidden" name="txtIdJabatan" 
                           value="<%= jabatan.getIdJabatan()%>" />-->
                <td colspan="3"><input type="submit" value="Save" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>
