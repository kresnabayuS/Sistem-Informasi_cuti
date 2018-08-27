<%-- 
Document   : editKaryawanView
Created on : Aug 16, 2018, 2:11:32 PM
Author     : Simbok_pc
--%>


<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.DtcutiController"%>
<%@page import="entities.Dtcuti"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Edit Detail Cuti</title>
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
                        <li class="breadcrumb-item active">Edit Detail Cuti</li>
                    </ol>                    

                    <form action="../editDtcutiServlet" method="GET"></form>

                        <table border="0">
                            <% DtcutiController dtc = new DtcutiController(HibernateUtil.getSessionFactory());
                            Dtcuti dtcuti = (Dtcuti) session.getAttribute("id");
                            %>
                            <h1>Edit Detail Cuti</h1>

                            <div class="form-group row">
                                <label for="id" class="col-sm-2 col-form-label">ID Detail Cuti</label>
                                <div class="col-sm-4">
                                    <td><input type="text" name="txtIdDtcuti" disabled="disabled"
                                   value="<%= dtcuti.getIdDtcuti()%>" /></td>         
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="ID Karyawan" class="col-sm-2 col-form-label">ID Karyawan</label>
                                <div class="col-sm-4">
                                     <td><input type="text" name="txtIdKaryawan" disabled="disabled"
                                   value="<%= dtcuti.getIdKaryawan().getNamaKaryawan() %>"/></td>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="Cuti" class="col-sm-2 col-form-label">Cuti</label>
                                <div class="col-xl-6">
                                    <input type="text" name="txtIdCuti" disabled="disabled"
                                           value="<%= dtcuti.getIdCuti().getKeterangan()  %>">
                                </div>  
                            </div>

                            <div class="form-group row">
                                <label for="Lama Cuti" class="col-sm-2 col-form-label">Lama Cuti</label>
                                <div class="col-sm-2">
                                    <input type="text" name="txtLamaCuti" disabled="disabled"
                                           value="<%= dtcuti.getLamaCuti() %> hari">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="Status" class="col-sm-2 col-form-label">Status</label>
                                <div class="col-sm-3">
                                    <select name="cmbStatus">
                                        <option>Diterima</option>
                                        <option>Ditolak</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="col-sm-6 text-center">
                                <input type="submit" value="Save" class="btn btn-outline btn-primary" />
                            </div>
                        </table>
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
