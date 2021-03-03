<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VASAC - 관리자 | 상품보기</title>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
  <link href="/resources/customer/css/style.css?ver=1.1" rel="stylesheet"> 
 <style> 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
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
 <section id="aa-myaccount">
   <div class="content-wrapper">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
            	<div class="col-md-12">
                <div class="aa-myaccount-register">                 
                 <h4>주문상세</h4>
 					<ul>
 						<li style="border:2px solid #ccc; margin-top:15px; margin-bottom:50px">
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">수령인</span>${order[0].orderRec}</p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">연락처</span>${order[0].orderPhone}</p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">주소</span>(${order[0].addr1})  ${order[0].addr2}  ${order[0].addr3}</p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">결제금액</span><fmt:formatNumber value="${order[0].amount}" pattern="###,###,###" />원</p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">배송상태</span>${order[0].status}</p>
 						</li>	
 					</ul>
 					
 					 <ul class="orderView">
  					<c:forEach items="${order}" var="orderView">     
  					<li>
  					 <div class="thumb">
    					<img src="/resources/${orderView.gdsThumbImg}" />
   					 </div>
   					<div class="gdsInfo">
    				<p>
     				<span>상품명</span>${orderView.gdsName}<br />
     				<span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /> 원<br />
     				<span>구입 수량</span>${orderView.cartStock} 개<br />
     				<span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" /> 원                  
    				</p>
   					</div>
  					</li>     
  					</c:forEach>
 					</ul>
 					<div>
 					<form method="post" class="deliveryForm">
 					<div class="button">
 					
 					<input type="hidden" class="delivery"name="status" value="" />
					<button id="delivery1" class="btn btn-primary" type="button" >배송중</button>
					<button id="delivery2" class="btn btn-primary" type="button" >배송완료</button>
					</div>
					</form>
					<script>
						$("#delivery1").click(function(){
							$(".delivery").val("배송중");
							$(".deliveryForm").submit();
						});
						
						$("#delivery2").click(function(){
							$(".delivery").val("배송완료");
							$(".deliveryForm").submit();
						});
					</script>
					
					</div>
					
			
			
                      

                 </div>
                </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
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
