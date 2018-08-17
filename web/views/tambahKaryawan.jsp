<%-- 
    Document   : tambahKaryawan
    Created on : Aug 17, 2018, 5:03:38 PM
    Author     : Simbok_pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="tambahKaryawanServlet" method="POST">
        <h1>Tambah Data Karyawan</h1>
         <table border="0">
            <tbody>
                <tr>
                    <td>ID Karyawan</td>
                    <td>: </td>
                    <td><input type="text" name="txtIdKaryawan" /></td>
                </tr>
                
                <tr>
                    <td>Nama Karyawan</td>
                    <td>: </td>
                    <td><input type="text" name="txtNamaKaryawan"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: </td>
                    <td><input type="text" name="txtEmail" /></td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: </td>
                    <td><input type="text" name="txtAlamat" /></td>
                </tr>
                <tr>
                    <td>Jatah Cuti</td>
                    <td>: </td>
                    <td><input type="text" name="txtJatahCuti" /></td>
                </tr>
                <tr>
                    <td>Sisa Cuti</td>
                    <td>: </td>
                    <td><input type="text" name="txtSisaCuti" /></td>
                </tr>
                
                <tr>
                    <input type="submit" value="Save" />
                </tr>
            </tbody>
        </table>
        
        </form>
    </body>
</html>
