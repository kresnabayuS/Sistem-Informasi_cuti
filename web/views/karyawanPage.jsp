<%-- 
    Document   : karyawanPage
    Created on : Aug 15, 2018, 3:34:23 PM
    Author     : kresna bayu
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
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Leave Application</title>


        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->
        <link href="../vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="../css/freelancer.min.css" rel="stylesheet">
    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Leave Application</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Home</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">Leave Request</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="login.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header class="masthead bg-primary text-white text-center">
            <div class="container">
                <img class="img-fluid mb-5 d-block mx-auto" src="../images/profile.png" alt="">
                <h1 class="text-uppercase mb-0">Leave Application</h1>
                <hr class="star-light">
            </div>
        </header>

        <!-- Portfolio Grid Section -->
        <section class="portfolio" id="portfolio">
            <div class="container">
                <h2 class="text-center text-uppercase text-secondary mb-0">Histories Leave Request</h2>
                <hr class="star-dark mb-5">

                <!-- DataTables Example -->

                <div class="card mb-3">
                    <div class="card-header">


                        <% int i = 1;
                        DtcutiController dc = new DtcutiController(HibernateUtil.getSessionFactory()); 
                        CutiController cc = new CutiController(HibernateUtil.getSessionFactory());
                        DtcutikhususController dtc = new DtcutikhususController(HibernateUtil.getSessionFactory()); 
                        CutiKhususController ck = new CutiKhususController(HibernateUtil.getSessionFactory());
                        %>
                        <p>
                        <div class="table-responsive">

                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"><thead>
                                    <tr>
                                        <th>No</th>
                                        <th>ID Karyawan</th>
                                        <th>Nama Karyawan</th>
                                        <th>Tanggal Awal</th>
                                        <th>Tanggal Akhir</th>
                                        <th>Lama Cuti</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>

                                </tfoot>
                                <tbody>
                                    <% for (Cuti cuti : cc.getAll()){
                                        for (Dtcuti dtcuti : cuti.getDtcutiList()) {
                                    %>               
                                    <tr>
                                        <td><%= i %></td>
                                        <td><%= dtcuti.getIdKaryawan().getIdKaryawan() %></td>
                                        <td><%= dtcuti.getIdKaryawan().getNamaKaryawan() %></td>
                                        <td><%= cuti.getTanggalAwal() %></td>
                                        <td><%= cuti.getTanggalAkhir() %></td>
                                        <td><%= dtcuti.getLamaCuti() %></td>
                                        <td><% if (dtcuti.getStatus() == null) {
                                                out.print("Menunggu");
                                            } else {
                                                out.print(dtcuti.getStatus());
                                            }
                                            %></td>
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
                                        <td><% if (dtcutikhusus.getStatus() == null) {
                                                out.print("Menunggu");
                                            } else {
                                                out.print(dtcutikhusus.getStatus());
                                            }
                                            %></td>
                                    </tr>
                                    <% j++;    }
                                        }  %>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        <!-- Leave Req Section -->
        <section class="text-white mb-0" id="about">
            <h2 class="text-center text-uppercase text-secondary mb-0">Leave Request Form</h2>
            <hr class="star-dark mb-5"><br><br>
            <div class="row">
                <div class="col-lg-5 mx-auto">
                    <h4 class="text-center text-secondary mb-0">Annual Leave</h4>
                </div>
                <div class="col-lg-7 mx-auto">
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>From</label>
                                <input class="form-control" id="name" type="datetime" placeholder="From" required="required">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>To</label>
                                <input class="form-control" id="email" type="datetime" placeholder="To" required="required">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div><br><br><hr><br>
            <div class="row">
                <div class="col-lg-5 mx-auto">
                    <h4 class="text-center text-secondary mb-0">Special Leave</h4>
                </div>
                <div class="col-lg-7 mx-auto">
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Special Leaves
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menikah</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Anggota keluarga meninggal</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Anak sunat</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Naik haji / umroh</a></li>
                        </ul>
                    </div><br>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>From</label>
                                <input class="form-control" id="name" type="datetime" placeholder="From" required="required">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>To</label>
                                <input class="form-control" id="email" type="datetime" placeholder="To" required="required">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div><br><br>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Message</label>
                                <textarea class="form-control" id="message" rows="5" placeholder="Message" required="required"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div><br><br><hr><br>
            <div class="row">
                <div class="col-lg-5 mx-auto">
                    <h4 class="text-center text-secondary mb-0">Attachment</h4>
                </div>
                <div class="col-lg-7 mx-auto">
                    <h5 class="text-center text-secondary mb-0">Document</h5>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Select File...</label>
                                <input class="form-control" id="name" placeholder="Select File..." required="required">
                            </div>
                        </div>
                        <div id="success">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary" id="sendMessageButton">Choose File</button>
                            </div></div>
                    </form>
                </div>
            </div><br><br>
            <div id="success" class="col-lg-10 mx-auto"></div>
            <div class="form-group" align="center">
                <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">SUBMIT</button>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Location</h4>
                        <p class="lead mb-0">Jakarta
                            <br>Indonesia</p>
                    </div>
                    <div class="col-md-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fa fa-fw fa-facebook"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fa fa-fw fa-google-plus"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fa fa-fw fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fa fa-fw fa-linkedin"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fa fa-fw fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h4 class="text-uppercase mb-4">Leave Request</h4>
                        <p class="lead mb-0">
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <div class="copyright py-4 text-center text-white">
            <div class="container">
                <small>Copyright &copy; Leave Request 2018</small>
            </div>
        </div>

        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
        <div class="scroll-to-top d-lg-none position-fixed ">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
                <i class="fa fa-chevron-up"></i>
            </a>
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

        <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="../vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Contact Form JavaScript -->
        <script src="../js/jqBootstrapValidation.js"></script>
        <script src="../js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="../js/freelancer.min.js"></script>

        <script src="../js/demo/datatables-demo.js"></script>

    </body>

</html>
<% } %>