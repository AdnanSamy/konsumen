<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jQuery -->
<script src="<c:url value='/plugins/jquery/jquery.min.js' />"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<c:url value='/plugins/jquery-ui/jquery-ui.min.js' />"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>

<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<c:url value='/plugins/bootstrap/js/bootstrap.bundle.min.js' />"></script>
<!-- ChartJS -->
<script src="<c:url value='plugins/chart.js/Chart.min.js' />"></script>
<!-- AdminLTE App -->
<script src="<c:url value='/dist/js/adminlte.js' />"></script>