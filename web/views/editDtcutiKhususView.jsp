<%-- 
    Document   : editDtcutiKhususView
    Created on : Aug 22, 2018, 11:41:02 AM
    Author     : Simbok_pc
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.DtcutikhususController"%>
<%@page import="entities.Dtcutikhusus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cuti Khusus</title>
    </head>
    <body>
        <%
            DtcutikhususController dc = new DtcutikhususController(HibernateUtil.getSessionFactory());
            Dtcutikhusus dtcutikhusus = (Dtcutikhusus) session.getAttribute("id");
        %>
        <h1>Edit Detail Cuti Khusus</h1>
    </body>
     <hr>
        <form action="../editDtcutiKhususServlet" method="GET">
            <table border="0">
                <tbody>
                    <tr>
                        <td>ID Detail Cuti Khusus</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdDtcutiKhusus" disabled="disabled"
                                   value="<%= dtcutikhusus.getIdDetailKhusus()%>" /></td>             
                    </tr>
                    <tr>
                        <td>ID Karyawan</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdKaryawan" disabled="disabled"
                                   value="<%= dtcutikhusus.getIdKaryawan().getNamaKaryawan() %>"/></td>
                    </tr>
                    <tr>
                        <td>Cuti Khusus</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdCutiKhusus" disabled="disabled"
                                   value="<%= dtcutikhusus.getIdCutiKhusus().getNamaCuti()  %>"/></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>: </td>
                        <td><select name="cmbStatus">
                                <option>Diterima</option>
                                <option>Ditolak</option>
                            </select></td>
                    </tr>
                </tbody>
            </table>  
            <input type="submit" value="Save" />
        </form>
</html>
