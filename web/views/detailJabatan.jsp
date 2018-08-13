<%-- 
    Document   : detailJabatan
    Created on : Aug 13, 2018, 11:36:14 AM
    Author     : Simbok_pc
--%>

<%@page import="entities.Jabatan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Jabatan jabatan = (Jabatan) session.getAttribute("id");%>
        <hr> Jabatan ID : <%= jabatan.getIdJabatan()%>, Nama Jabatan : <%= jabatan.getNamaJabatan()%><hr>
    </body>
</html>
