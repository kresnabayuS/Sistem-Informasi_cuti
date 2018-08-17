<%-- 
    Document   : editKaryawanView
    Created on : Aug 16, 2018, 2:11:32 PM
    Author     : Simbok_pc
--%>


<%@page import="controllers.KaryawanController"%>
<%@page import="entities.Karyawan"%>
<%@page import="tools.HibernateUtil" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Karyawan</title>
    </head>
    <body>
        <% 
           KaryawanController kc = new KaryawanController(HibernateUtil.getSessionFactory());
           Karyawan karyawan = (Karyawan) session.getAttribute("id");
        %>
        <h1>Edit Data Karyawan</h1>
        <hr>
        <form action="editKaryawanServlet" method="GET">
            <table border="0">
<!--                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <tr>-->
                <tr>
                    <td>Karyawan ID</td>
                    <td>: </td>
                    <td><input type="text" name="txtIdKaryawan" 
                           value="<%= karyawan.getIdKaryawan()%>" </td>
                </tr>
                <tr>
                    <td>Nama Karyawan</td>
                    <td>: </td>
                    <td><input type="text" name="txtNamaKaryawan" 
                               value="<%= karyawan.getNamaKaryawan()%>" </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: </td>
                    <td><input type="text" name="txtEmail" 
                               value="<%= karyawan.getEmail()%>" </td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: </td>
                    <td><input type="text" name="txtAlamat" 
                               value="<%= karyawan.getAlamat()%>" </td>
                </tr>
                <tr>
                    <td>Jatah Cuti</td>
                    <td>: </td>
                    <td><input type="text" name="txtJatahCuti" 
                               value="<%= karyawan.getJatahCuti() %>" </td>
                </tr>
                <tr>
                    <td>Sisa Cuti</td>
                    <td>: </td>
                    <td><input type="text" name="txtSisaCuti" 
                               value="<%= karyawan.getSisaCuti() %>" </td>
                </tr>
                <tr>
                    <td>Jabatan</td>
                    <td>: </td>
                    <td><input type="text" name="txtJabatan" 
                               value="<%= karyawan.getIdJabatan().getNamaJabatan() %>" </td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td>: </td>
                    <td><input type="drop" name="txtIdRole" 
                               value="<%= karyawan.getIdRole().getNamaRole() %>" </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>: </td>
                    <td><input type="text" name="txtPassword" 
                               value="<%= karyawan.getPassword() %>" </td>
                </tr>
                <td colspan="3"><input type="submit" value="Save" /></td>
            </table>

        </form>
    </body>
</html>
