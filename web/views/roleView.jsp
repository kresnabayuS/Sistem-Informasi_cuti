<%-- 
    Document   : roleView
    Created on : Aug 13, 2018, 11:44:04 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Role"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.RoleController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Role</title>
    </head>
    <body>
        <h1>Data Role</h1>
        <% RoleController rc = new RoleController(HibernateUtil.getSessionFactory()); %>
    
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Role ID</th>
                    <th>Nama Role</th>
                </tr>
            </thead>
            
            <tbody>
                <% int i = 1;
                    for (Role role : rc.getAll()) {%> 
                <tr>
                    <td><%= i %></td>
                    <td><%= role.getIdRole() %></td>
                    <td><%= role.getNamaRole() %></td>
                </tr>
                 <%
                        i++;
                     }
                 %>
            </tbody>   
    </body>
</html>
