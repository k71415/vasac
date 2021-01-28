<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VASAC - 관리자 | 상품등록</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../resources/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../resources/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../resources/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../resources/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../resources/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../resources/admin/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file="include/nav.jsp" %> 
  <!-- /.navbar -->

  <!-- Sidebar -->
  <%@ include file="include/side.jsp" %>  
  <!-- /.sidebar -->


  <!-- Main -->
  <div class="content-wrapper">
   
		<h1 style="padding:20px 10px;">상품등록</h1>
	<form method="post" action="/admin/reg">
   <table class="table table-striped table-bordered">
	
	
	<tr>
		<th>1차분류</th>
        <td>
        	
        	<select class="form-control">
        		<option value="">1차 분류</option>
        			<c:forEach var="n" items="${category}">
        			<c:if test="${n.cateCodeRef == null}">
        				<option value="">${n.cateName}</option>        			
        			</c:if>
        			</c:forEach>
        		
        	</select>
        	
        </td>
    </tr>
	<tr>
		<th>2차분류</th>
        <td>
        
        	<select name="cateCode" class="form-control">
        		<option value="">2차 분류</option>
        		<c:forEach var="n" items="${category}">
        			<c:if test="${n.cateCodeRef != null}">	
        				<option value="${n.cateCode}">${n.cateName}</option> 
        			</c:if> 
        		</c:forEach> 			
        	
        	</select>
        </td>
    </tr>
    
	<tr>
		<th>상품명</th>                                     
		<td><input type="text" class="form-control" name="gdsName" value=""></td>
    </tr>
    <tr>
		<th>상품수량</th>                                     
		<td><input type="text" class="form-control" name="gdsStock" value=""></td>
    </tr>
    <tr>
		<th>상품가격</th>                                     
		<td><input type="text" class="form-control" name="gdsPrice" value=""></td>
	</tr>
	<tr>
		<th>내용</th>                                    
		<td><textarea rows="10" class="form-control" id="editor" name="gdsDes"></textarea></td>
	</tr>

	<tr>
		<th>상품이미지</th>                                    
		<td><input type="file" name="gdsImg"></td>
	</tr>
	
	</table>
	<input type="submit" value="등록">
</form>
  </div>
  <!-- /.Main -->

 
  <!-- footer -->
  <%@ include file="include/footer.jsp" %> 	
  <!-- /.footer --> 



  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- jQuery -->
<script src="../resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../resources/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../resources/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../resources/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../resources/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../resources/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../resources/admin/plugins/moment/moment.min.js"></script>
<script src="../resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../resources/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../resources/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../resources/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../resources/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../resources/admin/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../resources/admin/dist/js/pages/dashboard.js"></script>
</body>
</html>
