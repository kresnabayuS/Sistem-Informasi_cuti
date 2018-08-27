<%-- 
    Document   : detailKaryawanCuti
    Created on : Aug 21, 2018, 11:17:05 AM
    Author     : Simbok_pc
--%>

<%@page import="entities.Dtcuti"%>
<%@page import="entities.Dtcutikhusus"%>
<%@page import="entities.Cuti"%>
<%@page import="entities.CutiKhusus"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.DtcutiController"%>
<%@page import="controllers.DtcutikhususController"%>
<%@page import="controllers.CutiController"%>
<%@page import="controllers.CutiKhususController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    } else { %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Leave Application - Karyawan Cuti</title>

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
                        <li class="breadcrumb-item active">Data Karyawan</li>
                    </ol>

                    <!-- DataTables -->

                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Data Cuti </div>

                        <% 
                            int i = 1;
                            DtcutiController dc = new DtcutiController(HibernateUtil.getSessionFactory()); 
                            CutiController cc = new CutiController(HibernateUtil.getSessionFactory());
                            DtcutikhususController dtc = new DtcutikhususController(HibernateUtil.getSessionFactory()); 
                            CutiKhususController ck = new CutiKhususController(HibernateUtil.getSessionFactory());
            
                        %>
                        <p>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>ID Karyawan</th>
                                        <th>Nama Karyawan</th>
                                        <th>Tanggal Awal</th>
                                        <th>Tanggal Akhir</th>
                                        <th>Lama Cuti</th>
                                        <th>Keterangan</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <% 
                                        for (Cuti cuti : cc.getAll()){
                                         for (Dtcuti dtcuti : cuti.getDtcutiList()) {
                                    %> 
                                    <tr>
                                        <td><%= i %></td>
                                        <td><%= dtcuti.getIdKaryawan().getIdKaryawan() %></td>
                                        <td><%= dtcuti.getIdKaryawan().getNamaKaryawan() %></td>
                                        <td><%= cuti.getTanggalAwal() %></td>
                                        <td><%= cuti.getTanggalAkhir() %></td>
                                        <td><%= dtcuti.getLamaCuti() %></td>
                                        <td><%= cuti.getKeterangan() %></td>
                                        <td><% if (dtcuti.getStatus() == null) {
                                                out.print("Menunggu");
                                            } else {
                                                out.print(dtcuti.getStatus());
                                            }
                                            %></td>
                                        <td>
                                            <a href="../actionTerimaApproval?idUmum=<%= cuti.getIdCuti() %>">Diterima</a>
                                            <a href="../actionTolak?idUmum=<%= cuti.getIdCuti() %>"> | Ditolak</a>
                                        </td> 
                                    </tr>
                                    <% 
                                        i++;
                                        }
                                        }
                    int j = i;
                                        for (CutiKhusus cutikhusus : ck.getAll()){
                                         for (Dtcutikhusus dtcutikhusus : cutikhusus.getDtcutikhususList()) {
                                    %>
                                    <tr>
                                        <td><%= j %></td>
                                        <td><%= dtcutikhusus.getIdKaryawan().getIdKaryawan() %></td>
                                        <td><%= dtcutikhusus.getIdKaryawan().getNamaKaryawan() %></td>
                                        <td><%= cutikhusus.getTanggalAwal() %></td>
                                        <td><%= cutikhusus.getTanggalAkhir() %></td>
                                        <td><%= cutikhusus.getLamaCutiKhusus() %></td>
                                        <td><%= cutikhusus.getNamaCuti() %></td>
                                        <td><% if (dtcutikhusus.getStatus() == null) {
                                                out.print("Menunggu");
                                            } else {
                                                out.print(dtcutikhusus.getStatus());
                                            }
                                            %></td>

                                        <td>
                                            <a href="../actionTerimaApproval?idKhusus=<%= cutikhusus.getIdCutiKhusus() %>">Diterima</a>
                                            <a href="../actionTolak?idKhusus=<%= cutikhusus.getIdCutiKhusus() %>"> | Ditolak</a>
                                        </td>

                                    </tr>

                                    <%
                                       j++;    
                                        }
                    }
                                    %>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
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
<% } %>