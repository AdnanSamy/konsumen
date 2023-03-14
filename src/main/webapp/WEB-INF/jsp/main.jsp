<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<c:import url="head.jsp" />

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
        </div>

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i
                            class="fas fa-bars"></i></a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                style="opacity: .8">
            <span class="brand-text font-weight-light">AdminLTE 3</span>
        </a>

        <c:import url="tree.jsp" />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper card">
           

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row m-2">
                        <button class="btn btn-primary ml-auto" id="btnNew">New</button>
                    </div>
                    <table class="table table-border mt-2" id="main_table">
                        <thead class="bg-dark">
                            <th>No.</th>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>Kota</th>
                            <th>Provinsi</th>
                            <th>Status</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
            All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 3.2.0
            </div>
        </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <div class="modal fade" id="modalCustomer" data-backdrop="static" data-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Customer</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="saveType">
                    <input type="hidden" id="dataId">
                    <div class="form-group">
                        <div class="row mt-1">
                            <div class="col-md-12">
                                <label for="nama">nama</label>
                            </div>
                            <div class="col-md-12">
                                <input type="text" required class="form-control" id="nama">
                            </div>
                            <div class="col-md-12">
                                <label for="alamat">Alamat</label>
                            </div>
                            <div class="col-md-12">
                                <textarea class="form-control" id="alamat" cols="30" rows="10"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label for="kota">Kota</label>
                            </div>
                            <div class="col-md-12">
                                <input type="text" required class="form-control" id="kota">
                            </div>
                            <div class="col-md-12">
                                <label for="provinsi">Provinsi</label>
                            </div>
                            <div class="col-md-12">
                                <input type="text" required class="form-control" id="provinsi">
                            </div>
                            <div class="col-md-12">
                                <label for="status">Status</label>
                            </div>
                            <div class="col-md-12">
                                <select required class="form-control" id="status">
                                    <option value="aktif">Aktif</option>
                                    <option value="non-aktif">Non-Aktif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button id="save" type="button" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>

    <c:import url="script.jsp" />
    <script src="<c:url value='/js/customer.js' />"></script>
    
</body>

</html>
