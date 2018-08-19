<%-- 
    Document   : tambahCuti
    Created on : Aug 19, 2018, 4:18:04 PM
    Author     : Simbok_pc
--%>

<%@page import="controllers.CutiController"%>
<%@page import="entities.Cuti"%>
<%@page import="tools.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuti</title>
    </head>
    <body>
        <form action="../tambahCutiServlet" method="POST">
            <h2>Tambah Data Cuti</h2>
            <br>
            <table border="0">
                <%
                    CutiController cc = new CutiController(HibernateUtil.getSessionFactory());
                    String id_cuti = cc.getIdCuti();
                %>
                <tbody>
                    <tr>
                        <td>ID Cuti</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdCuti" value="<%= id_cuti%>" /></td>             
                    </tr>
                    <tr>
                        <td>Tanggal Awal</td>
                        <td>: </td>
                        <td><input type="date" name="txtTanggalAwal"/></td>
                    </tr>
                    <tr>
                        <td>Tanggal Akhir</td>
                        <td>: </td>
                        <td><input type="date" name="txtTanggalAkhir"/></td>
                    </tr>
                    <tr>
                        <td>Keterangan</td>
                        <td>: </td>
                        <td><input type="text" name="txtKeterangan" /></td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Save" />
        </form>
    </body>
</html>
