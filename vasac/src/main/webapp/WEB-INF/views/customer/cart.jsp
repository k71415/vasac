<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | 카트</title>
    
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
    <link href="/resources/customer/css/style.css?afterr" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <style>
  .orderInfo { border:5px solid #eee; padding:20px; display:none; margin-top:15px;}
.orderInfo .inputArea { margin:10px 0; }
.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
.orderInfo .inputArea input { font-size:14px; padding:5px; }
#userAddr2, #userAddr3 { width:250px; }

.orderInfo .inputArea:last-child { margin-top:30px; }
.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
</style>

  </head>
  <body>
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <%@ include file="include/header.jsp" %>
  <!-- / header section -->
  <!-- menu -->
  <%@ include file="include/menu.jsp" %> 	
  <!-- / menu -->
  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/resources/customer/img/slider/2.jpg" alt="Men slide img" />
              </div>
              <div class="seq-title">
               
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/resources/customer/img/slider/2.jpg" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">
                
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/resources/customer/img/slider/3.jpg" alt="Women Jeans slide img" />
              </div>
              <div class="seq-title">
                
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="/resources/customer/img/slider/4.jpg" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                
              </div>
            </li>
            <!-- single slide item -->  
             <li>
              <div class="seq-model">
                <img data-seq src="/resources/customer/img/slider/5.jpg" alt="Male Female slide img" />
              </div>
              <div class="seq-title">
               
              </div>
            </li>                   
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>
  <!-- / slider -->
  <!-- Start Promo section -->
  
  <!-- / Promo section -->
  <!-- product category -->
    <!-- product category -->
  <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th></th>
                        <th>이미지</th>
                        <th>상품</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>합계</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:set var="i" value="0" />
                      <c:forEach var="c" items="${cartList}">
                      <tr> 	
                        <td><a class="btn btn-primary" href="deleteCart?cartNum=${c.cartNum}" id="delete">삭제</a></td>
                        <td><a href="#"><img src="/resources/${c.gdsThumbImg}" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">${c.gdsName}</a></td>
                        <td><fmt:formatNumber value="${c.gdsPrice}" pattern="###,###,###"/>원</td>
                        <td>${c.cartStock}개</td>
                        <td><fmt:formatNumber value="${c.gdsPrice * c.cartStock}" pattern="###,###,###"/>원</td>                       
                      </tr>
                      <input type="hidden" value="${i = i + c.gdsPrice * c.cartStock}" >
                      </c:forEach>
 
                      </tbody>
                  </table>
                </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>총 합계</th>
                     <td><fmt:formatNumber value="${i}" pattern="###,###,###"/>원</td>
                   </tr>
                 </tbody>
               </table>
               <div class="orderOpne">
               <button type="button"  class="aa-browse-btn" id="order-btn">주문정보입력</button>
        <script>
   		$(".aa-browse-btn").click(function(){
   			$(".orderInfo").slideDown();
   			$(".aa-browse-btn").slideUp();
   		});
   		</script>
             </div>
           </div>
           <div class="orderInfo">
 		<form role="form" method="post" autocomplete="off">
    
  		<input type="hidden" name="amount" value="${i}" />
    
  		<div class="inputArea">
   		<label for="">수령인</label>
   		<input type="text" name="orderRec" id="orderRec" required="required" />
  		</div>
  
  		<div class="inputArea">
   		<label for="orderPhon">수령인 연락처</label>
   		<input type="text" name="orderPhone" id="orderPhone" required="required" />
  		</div>
  
  		<div class="inputArea">
   		<label for="userAddr1">우편번호</label>
   		<input type="text" name="addr1" id="userAddr1" required="required" />
  		</div>
  
  		<div class="inputArea">
   		<label for="userAddr2">1차 주소</label>
   		<input type="text" name="addr2" id="userAddr2" required="required" />
  		</div>
  
  		<div class="inputArea">
   		<label for="userAddr3">2차 주소</label>
   		<input type="text" name="addr3" id="userAddr3" required="required" />
  		</div>
  		<c:forEach items="${cartList}" var="c">
  		<input type="hidden" name="gdsNum" value="${c.gdsNum}">
  		<input type="hidden" name="cartStock" value="${c.cartStock}">
  		</c:forEach>
  
  		<div class="inputArea">
   		<button type="submit" class="order_btn">주문</button>
   		<button type="button" class="cancel_btn">취소</button> 
   		
   		<script>
   		$(".cancel_btn").click(function(){
   			$(".orderInfo").slideUp();
   			$(".aa-browse-btn").slideDown();	
   		
   		});
   		
   		$(".order_btn").click(function(){
   			alert("주문이 완료되었습니다.");
   		})
   		</script>

  		</div>
  
 		</form> 
		</div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
  <!-- / product category -->

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