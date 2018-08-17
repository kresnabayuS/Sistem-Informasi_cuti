<%-- 
    Document   : admin
    Created on : Aug 13, 2018, 9:38:45 PM
    Author     : kresna bayu
--%>
<%@page import="entities.Jabatan"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.JabatanController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Leave Application - Admin</title>

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

            <!--Navbar Search--> 
<!--            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>-->

            <!-- Navbar -->
            <form class="d-none d-md-inline-block form-inline ml-auto ">
                <div class="input-group">
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user-circle fa-fw"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">Settings</a>
                            <a class="dropdown-item" href="#">Activity Log</a>
                            <div class="dropdown-divider"></div>
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
                        <span>Beranda</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="jabatanView.jsp" >
                        <i class="fas fa-fw fa-user-friends"></i>
                        <span>Data Karyawan</span>
                    </a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../charts.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Data Karyawan Cuti</span></a>
                </li>
            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="breadcrumb-item active">Overview</li>
                    </ol>                    

                    <!-- DataTables Example -->

                    <div class="card mb-3">
                        <div class="card-header">

                            <i class="fas fa-table"></i>
                            Data Table Example</div>
                        <div class="card-body">
                            <!--Button Add-->
                            <div class="container-login100-form-btn">
                                <a class="btn btn-success" href="" data-toggle="modal"
                                   data-target="#modaltambah">Add Data </a>
                            </div>
                            <% JabatanController jc = new JabatanController(HibernateUtil.getSessionFactory()); %>
                            <p>
                            <div class="table-responsive">

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                                    <thead>
                                        <tr>
                                        <tr>
                                            <th>No</th>
                                            <th>Jabatan ID</th>
                                            <th>Jabatan Title</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        <tr>
                                            <th>No</th>
                                            <th>Jabatan ID</th>
                                            <th>Jabatan Title</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <% int i = 1;
                    for (Jabatan jabatan : jc.getAll()) {%>                
                                        <tr>
                                            <td><%= i %></td>
                                            <td><%= jabatan.getIdJabatan() %></td>
                                            <td><%= jabatan.getNamaJabatan() %></td>
                                            <td>
                                                <a href="../jabatanServlet?id=<%= jabatan.getIdJabatan()%>">Edit</a>
                                            </td>
                                        </tr>
                                        <% i++; }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>
                </div>

                <!-- modal Add-->
                <div class="modal fade" id="modaltambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <form action="../addJabatanServlet" method="POST">
                                <div class="modal-header text-center">
                                    <h4 class="modal-title w-100 font-weight-bold">Add Data</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body mx-3">
                                    <div class="md-form mb-5">
                                        <i class="fa fa-user prefix grey-text"></i>
                                        <label data-error="wrong" data-success="right" for="orangeForm-name">Jabatan ID</label>
                                        <input  type="text" id="orangeForm-name" class="form-control validate" name="txtIdJabatan">

                                    </div>

                                    <div class="md-form mb-5">
                                        <i class="fa fa-user prefix grey-text"></i>
                                        <label data-error="wrong" data-success="right" for="orangeForm-name"  >Jabatan Title</label>
                                        <input type="text" id="orangeForm-name" class="form-control validate" name="txtNamaJabatan">

                                    </div>
                                </div>
                                <div class="modal-footer d-flex justify-content-center">
                                    <button class="btn btn-deep-orange" type="submit">Add</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright © Your Website 2018</span>
                        </div>
                    </div>
                </footer>

            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

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
