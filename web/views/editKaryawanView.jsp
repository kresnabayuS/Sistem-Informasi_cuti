<%-- 
Document   : editKaryawanView
Created on : Aug 16, 2018, 2:11:32 PM
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
<% if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    } else { %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Edit Data Karyawan</title>
        <!-- Bootstrap core CSS-->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="../css/sb-admin.css" rel="stylesheet">
    </head>
    <body id="page-top">

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
            <a class="navbar-brand mr-1" href="admin.jsp">Dashboard Admin</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar -->
            <form class="d-none d-md-inline-block form-inline ml-auto ">
                <div class="input-group">                  
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-power-off" aria-hidden="true"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
                    </div>
                    </li>

                </div>
            </form>
        </nav>
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="admin.jsp">
                        <i class="fas fa-fw fa-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="karyawanView.jsp" >
                        <i class="fas fa-fw fa-user-friends"></i>
                        <span>Data Karyawan</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="karyawanPage.jsp">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Karyawan Cuti</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Data Cuti</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Data Cuti:</h6>
                        <a class="dropdown-item" href="dtcutiView.jsp">Detail Cuti</a>
                        <a class="dropdown-item" href="dtCutiKhususView.jsp">Detail Cuti Khusus</a>
                    </div>
                </li>
            </ul>

            <div id="content-wrapper">
                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="admin.jsp">Home</a>
                        </li>
                        <li class="breadcrumb-item active">Edit Data Karyawan</li>
                    </ol>                    



                    <form action="../editKaryawanServlet" method="GET"></form>

                    <table border="0">
                        <% KaryawanController kc = new KaryawanController(HibernateUtil.getSessionFactory());
                           Karyawan karyawan = (Karyawan) session.getAttribute("id");
                        %>
                        <h1>Edit Data Karyawan</h1>
                        <div class="form-group row">

                            <div class="col-sm-6">
                                <input type="hidden" value="<%= karyawan.getIdKaryawan()%>" class="form-control" id="inpIdKaryawan" name="txtIdKaryawan">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpNmKaryawan" class="col-sm-2 col-form-label">Nama Karyawan</label>
                            <div class="col-sm-4">
                                <input type="text" value="<%= karyawan.getNamaKaryawan()%>" class="form-control" id="inpNmKaryawan" name="txtNamaKaryawan" >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpEmail" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-4">
                                <input type="text" value="<%= karyawan.getEmail()%>" class="form-control" id="inpEmail" name="txtEmail" >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpAlamat" class="col-sm-2 col-form-label">Alamat</label>
                            <div class="col-xl-6">
                                <input type="text" value="<%= karyawan.getAlamat()%>" class="form-control" id="inpAlamat" name="txtAlamat" >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpJthCuti" class="col-sm-2 col-form-label">Jatah Cuti</label>
                            <div class="col-sm-2">
                                <input type="text" value="<%= karyawan.getJatahCuti() %>" class="form-control" id="inpJthCuti" name="txtJatahCuti" value="12" >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpSisaCuti" class="col-sm-2 col-form-label">Sisa Cuti</label>
                            <div class="col-sm-2">
                                <input type="text" value="<%= karyawan.getSisaCuti() %>" class="form-control" id="inpSisaCuti" name="txtSisaCuti" >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inpJbtnKaryawan" class="col-sm-2 col-form-label">Jabatan</label>
                            <div class="col-sm-3">
                                <%
                                JabatanController jc = new JabatanController(HibernateUtil.getSessionFactory());%>
                                <select name="cmbJabatan" class="form-control" id="jabatan">
                                    <%  for (Jabatan jabatan : jc.getAll()){%>
                                    <option value="<%= jabatan.getIdJabatan() %>"><%= jabatan.getNamaJabatan() %></option>
                                    <%  } %>
                                </select>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="inpJbtnKaryawan" class="col-sm-2 col-form-label">Role</label>
                            <div class="col-sm-2">
                                <% RoleController rc = new RoleController(HibernateUtil.getSessionFactory());%>
                                <select name="cmbRole" class="form-control" id="role">
                                    <%  for (Role role : rc.getAll()){%>
                                    <option value="<%= role.getIdRole() %>"><%= role.getNamaRole() %></option>
                                    <%  } %>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-2">
                                <input type="text" value="<%= karyawan.getPassword() %>" class="form-control" id="inpSisaCuti" name="txtSisaCuti" >
                            </div>
                        </div>
                        <br>
                        <div class="col-sm-6 text-center">
                            <input type="submit" value="Save" class="btn btn-outline btn-primary" />
                        </div>
                    </table>

                    <!-- Logout Modal-->
                    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                    <a class="btn btn-primary" href="login.jsp">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Bootstrap core JavaScript-->
                    <script src="../vendor/jquery/jquery.min.js"></script>
                    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- Core plugin JavaScript-->
                    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Page level plugin JavaScript-->
                    <script src="../vendor/chart.js/Chart.min.js"></script>
                    <script src="../vendor/datatables/jquery.dataTables.js"></script>
                    <script src="../vendor/datatables/dataTables.bootstrap4.js"></script>

                    <!-- Custom scripts for all pages-->
                    <script src="../js/sb-admin.min.js"></script>

                    <!-- Demo scripts for this page-->
                    <script src="../js/demo/datatables-demo.js"></script>
                    <script src="../js/demo/chart-area-demo.js"></script>
                    </body>
                    </html>
                    <% } %>