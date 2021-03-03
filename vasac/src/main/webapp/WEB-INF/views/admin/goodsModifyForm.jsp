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
  <script src= "http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
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
  <style>
 div.replyModal { position:relative; z-index:1; display:none; }
 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
 div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 div.modalContent button.modal_cancel { margin-left:20px; }
</style>
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
   
		<h1 style="padding:20px 10px;">상품수정</h1>
	<form method="post" action="/admin/goodsModify" enctype="multipart/form-data">
   <table class="table table-striped table-bordered">
	
	
<tr>
		<th>1차분류</th>                                     
		<td>${goods.top_cateName}</td>
    </tr>
    
    <tr>
		<th>2차분류</th>                                     
		<td>${goods.cateName}</td>
    </tr> 
    
	<tr>
		<th>상품명</th>                                     
		<td><input type="text" class="form-control" name="gdsName" value="${goods.gdsName}"></td>
    </tr>
    <tr>
		<th>상품수량</th>                                     
		<td><input type="text" class="form-control" name="gdsStock" value="${goods.gdsStock}"></td>
    </tr>
    <tr>
		<th>상품가격</th>                                     
		<td><input type="text" class="form-control" name="gdsPrice" value="${goods.gdsPrice}"></td>
	</tr>
	<tr>
		<th>내용</th>                                    
		<td><textarea rows="10" class="form-control" id="editor" name="gdsDes">${goods.gdsDes}</textarea></td>
	</tr>

	<tr>
		<th>상품이미지</th>                                    
		<td><input type="file" id="gdsImg" name="file"></td>
	</tr>
	
	<tr>
		<th>미리보기</th>
		<td class="select_img"><img src="/resources/${goods.gdsImg}" /></td>
		<td><input type="hidden" name="gdsImg" value="${goods.gdsImg}" />
  			<input type="hidden" name="gdsThumbImg" value="${goods.gdsThumbImg}" /> 
  		</td>
		
	</tr>
	
	</table>
	 
	 <script>
  	$("#gdsImg").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(500);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });
 </script>
	
	<input type="hidden" name="gdsNum" value="${goods.gdsNum}">
	<input class="btn btn-primary" type="submit" value="수정">
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
