<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | 주문목록</title>
    
    <!-- Font awesome -->
    <link href="/resources/customer/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="/resources/customer/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="/resources/customer/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="/resources/customer/stylesheet" type="text/css" href="/resources/customer/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="/resources/customer/stylesheet" type="text/css" href="/resources/customer/css/slick.css">
    <!-- price picker slider -->
    <link rel="/resources/customer/stylesheet" type="text/css" href="/resources/customer/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="/resources/customer/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="/resources/customer/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="/resources/customer/css/style.css?ver=1.1" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
   <!-- Start header section -->
  <%@ include file="include/header.jsp" %>
  <!-- / header section -->
  <!-- menu -->
  <%@ include file="include/menu.jsp" %>
  <!-- / menu -->  
 

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
            	<div class="col-md-12">
                <div class="aa-myaccount-register">                 
                 <h4>주문목록</h4>
 					<ul>
 					<c:forEach var="o" items="${orderList}">
 						<li style="border-bottom:1px solid #ccc; margin-top:15px">
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">주문번호</span><a style="text-decoration:underline" href="/order-detail?orderId=${o.orderId}" >${o.orderId}</a></p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">주문날짜</span><fmt:formatDate value="${o.orderDate}" pattern="yyyy/MM/dd  HH:mm:ss" /></p>
 						<p><span style="font-size:20px; font-weight: bold; margin-right:20px">결제금액</span><fmt:formatNumber value="${o.amount}" pattern="###,###,###" />원</p>
 						
 						</li>
 					</c:forEach>		
 					</ul>
                 </div>
                </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!--  Cart view section -->

  <!-- footer -->  
  <%@ include file="include/footer.jsp" %>
  <!-- / footer -->
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="account.html">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>


    
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/customer/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="/resources/customer/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="/resources/customer/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="/resources/customer/js/sequence.js"></script>
  <script src="/resources/customer/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="/resources/customer/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="/resources/customer/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="/resources/customer/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="/resources/customer/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="/resources/customer/js/custom.js"></script> 
  

  </body>
</html>