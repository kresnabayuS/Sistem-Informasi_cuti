<%-- 
    Document   : editDtcutiView
    Created on : Aug 21, 2018, 9:59:23 PM
    Author     : Simbok_pc
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.DtcutiController"%>
<%@page import="entities.Dtcuti"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cuti</title>
    </head>
    <body>
        <%
            DtcutiController dtc = new DtcutiController(HibernateUtil.getSessionFactory());
            Dtcuti dtcuti = (Dtcuti) session.getAttribute("id");
        %>
        <h2>Edit Detail Cuti</h2>
        <hr>
        <form action="../editDtcutiServlet" method="GET">
            <table border="0">
                <tbody>
                    <tr>
                        <td>ID Detail Cuti</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdDtcuti" disabled="disabled"
                                   value="<%= dtcuti.getIdDtcuti()%>" /></td>             
                    </tr>
                    <tr>
                        <td>ID Karyawan</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdKaryawan" disabled="disabled"
                                   value="<%= dtcuti.getIdKaryawan().getNamaKaryawan() %>"/></td>
                    </tr>
                    <tr>
                        <td>Cuti</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdCuti" disabled="disabled"
                                   value="<%= dtcuti.getIdCuti().getKeterangan()  %>"/></td>
                    </tr>
                    <tr>
                        <td>Lama Cuti</td>
                        <td>: </td>
                        <td><input type="text" name="txtLamaCuti" disabled="disabled"
                                       value="<%= dtcuti.getLamaCuti() %> hari"/></td>
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
    </body>
</html>
