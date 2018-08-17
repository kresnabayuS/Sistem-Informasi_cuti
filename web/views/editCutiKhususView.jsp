<%-- 
    Document   : editCutiKhususView
    Created on : Aug 14, 2018, 11:19:28 PM
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
        <% CutiKhususController ck = new CutiKhususController(HibernateUtil.getSessionFactory());
            CutiKhusus cutiKhusus = (CutiKhusus) session.getAttribute("id");
        %>
        <h1>Hai, mau edit? </h1>
        <hr>
        <form action="editCutiKhususServlet" method="GET">
            <table border="0">
<!--                <thead>-->
                    <tr>
                        <th>Cuti Khusus ID</th>
                        <th>: </th>
                        <th><input type="text" name="txtIdCutiKhusus" 
                                   value="<%= cutiKhusus.getIdCutiKhusus()%>" /></th>
                    </tr>
<!--                </thead>
                <tbody>-->
                    <tr>
                        <td>Nama Cuti Khusus</td>
                        <td>: </td>
                        <td><input type="text" name="txtNamaCuti" 
                                   value="<%= cutiKhusus.getNamaCuti()%>" /></td>
                    </tr>
                    <tr>
                        <td>Lama Cuti Khusus</td>
                        <td>: </td>
                        <td><input type="text" name="txtLamaCutiKhusus" 
                                   value="<%= cutiKhusus.getLamaCutiKhusus()%>" /></td>
                    </tr>
                    <td colspan="3"><input type="submit" value="Save" /></td>
                <!--</tbody>-->
            </table>

        </form>
    </body>
</html>
