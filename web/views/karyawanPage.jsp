<%-- 
    Document   : karyawanPage
    Created on : Aug 15, 2018, 3:34:23 PM
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

                            <!--                    <i class="fas fa-table"></i>
                                                Data Table Example</div>
                                            <div class="card-body">-->
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
                 
                    <!--<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>-->
                </div>
            </div>


            <!--                                <div class="col-md-6 col-lg-4">
                                                <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1">
                                                    <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                                                        <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                                                            <i class="fa fa-search-plus fa-3x"></i>
                                                        </div>
                                                    </div>
                                                    <img class="img-fluid" src="../images/portfolio/cabin.png" alt="">
                                                </a>
                                            </div>
            -->

        </section>

        <!-- Leave Req Section -->
        <section class="text-white mb-0" id="about">
            <h2 class="text-center text-uppercase text-secondary mb-0">Leave Request Form</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Name</label>
                                <input class="form-control" id="name" type="text" placeholder="Name" required="required" data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Email Address</label>
                                <input class="form-control" id="email" type="email" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Phone Number</label>
                                <input class="form-control" id="phone" type="tel" placeholder="Phone Number" required="required" data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Message</label>
                                <textarea class="form-control" id="message" rows="5" placeholder="Message" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Send</button>
                        </div>
                    </form>
                </div>>
            </div>
        </div>
    </section>


    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Location</h4>
                    <p class="lead mb-0">2215 John Daniel Drive
                        <br>Clark, MO 65243</p>
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
                    <h4 class="text-uppercase mb-4">About Freelancer</h4>
                    <p class="lead mb-0">Freelance is a free to use, open source Bootstrap theme created by
                        <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                </div>
            </div>
        </div>
    </footer>

    <div class="copyright py-4 text-center text-white">
        <div class="container">
            <small>Copyright &copy; Your Website 2018</small>
        </div>
    </div>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
        <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->

    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/cabin.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/cake.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/circus.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/game.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/safe.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
        <div class="portfolio-modal-dialog bg-white">
            <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                <i class="fa fa-3x fa-times"></i>
            </a>
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                        <hr class="star-dark mb-5">
                        <img class="img-fluid mb-5" src="../images/portfolio/submarine.png" alt="">
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                        <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                            <i class="fa fa-close"></i>
                            Close Project</a>
                    </div>
                </div>
            </div>
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
