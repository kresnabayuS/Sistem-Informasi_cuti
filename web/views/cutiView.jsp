<%-- 
    Document   : cutiView
    Created on : Aug 13, 2018, 2:40:59 PM
    Author     : Simbok_pc
--%>

<%@page import="controllers.CutiKhususController"%>
<%@page import="entities.Cuti"%>
<%@page import="controllers.CutiController"%>
<%@page import="tools.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuti</title>
    </head>
    <body>
        <% CutiController cc = new CutiController(HibernateUtil.getSessionFactory()); %>
        <h1>Data Cuti</h1>
        <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" value="Find" name="btnFind" />
        <a href="tambahCuti.jsp">Tambah Data</a>
        <p>

        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Cuti ID</th>
                    <th>Tanggal Awal</th>
                    <th>Tanggal Akhir</th>
                    <th>Keterangan</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                <% int i = 1;
                    for (Cuti cuti : cc.getAll()) {
                %> 
                <tr>
                    <td><%= i %></td>
                    <td><%= cuti.getIdCuti() %></td>
                    <td><%= cuti.getTanggalAwal() %></td>
                    <td><%= cuti.getTanggalAkhir() %></td>
                    <td><%= cuti.getKeterangan() %></td>
                    <td>
                        <a href="../karyawanServlet?id=<%= karyawan.getIdKaryawan()%>">Edit</a>
                    </td>
                </tr>
                <%
                       i++;
                    }
                %>
                <tr>

                </tr>
            </tbody>
        </table>

    </body>
</html>
