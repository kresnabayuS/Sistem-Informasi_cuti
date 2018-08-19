<%-- 
    Document   : tambahKaryawan
    Created on : Aug 17, 2018, 5:03:38 PM
    Author     : Simbok_pc
--%>
<%@page import="controllers.RoleController"%>
<%@page import="controllers.JabatanController"%>
<%@page import="controllers.KaryawanController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Karyawan"%>
<%@page import="entities.Jabatan"%>
<%@page import="entities.Role"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Karyawan</title>
    </head>
    <body>
        <form action="../tambahKaryawanServlet" method="POST">
            <h2>Tambah Data Karyawan</h2>
            <table border="0">
                <% KaryawanController kc = new KaryawanController (HibernateUtil.getSessionFactory());
                 String id = kc.getIdKaryawan();
                %>
                <tbody>
                    <tr>
                        <td>ID Karyawan</td>
                        <td>: </td>
                        <td><input type="text" name="txtIdKaryawan" value="<%= id%>" /></td>
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
                        <td><input type="text" name="txtJatahCuti" value="12"/></td>
                    </tr>
                    <tr>
                        <td>Sisa Cuti</td>
                        <td>: </td>
                        <td><input type="text" name="txtSisaCuti" /></td>
                    </tr>
                    <tr>
                        <td>Jabatan</td>
                        <td>: </td>
                        <td><select name="cmbJabatan">
                                <%
                                    JabatanController jc = new JabatanController(HibernateUtil.getSessionFactory());
                                     for (Jabatan jabatan : jc.getAll()){
                                %><option value="<%= jabatan.getIdJabatan() %>"><%= jabatan.getNamaJabatan() %></option>
                                <%
                                        }
                                %>
                            </select></td>             
                    </tr>
                    <tr>
                        <td>Role</td>
                        <td>: </td>
                        <td><select name="cmbRole">
                                <%
                                    RoleController rc = new RoleController(HibernateUtil.getSessionFactory());
                                
                                    for (Role role : rc.getAll()){
                                %><option value="<%= role.getIdRole() %>"><%= role.getNamaRole() %></option>
                                <%
                                    }
                                %>  
                            </select></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>: </td>
                        <td><input type="text" name="txtPassword" /></td>
                    </tr>
                    <tr>

                    </tr>
                </tbody>


            </table>
            <input type="submit" value="Save" />
        </form>
    </body>
</html>
