<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | 상품</title>
    
    <!-- Font awesome -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    <link href="/resources/customer/css/style.css?afterrr" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <style>
 div.replyModal { position:relative; z-index:99; display:none; }
 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:475px; height:155px; }
 div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 div.modalContent button.modal_cancel { margin-left:20px; }
</style>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
                          <script>
                      function replyList(){
                      var gdsNum = ${goods.gdsNum};
                      var userId = "${member.userId}";
                      $.getJSON("/product-detail/replyList" + "?gdsNum=" + gdsNum, function(data){
                    	  var str ="";
                    	  $(data).each(function(){
                    		  console.log(data);
                    		  
                    		  var repDate = new Date(this.repDate);
                    		  repDate = repDate.toLocaleDateString("ko-US")
                    		 if(this.userId == userId){
                    		  str += "<li data-repNum='" + this.repNum + "'>"
                    		  + "<div class='media'>"
                    		  + "<div class='media-body'>"
                    		  + "<h4 class='media-heading'>"
                    		  + "<strong>" + this.userId + "</strong>"                    		 
                    		  + "<span> " + repDate + "</span>"
                    		  + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>수정</button>"
                    		  + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>삭제</button>"
                    		  + "</h4>"
                    		  + "<p class='replyContent'>" + this.repCon + "</p>"                   		  
                    		  + "</div>"
                    		  + "</div>"
                    		  + "</li>";
                    		 }
                    		 else{
                       		  str += "<li data-repNum='" + this.repNum + "'>"
                    		  + "<div class='media'>"
                    		  + "<div class='media-body'>"
                    		  + "<h4 class='media-heading'>"
                    		  + "<strong>" + this.userId + "</strong>"
                    		 
                    		  + "<span> " + repDate + "</span>"
                    		  + "</h4>"
                    		  + "<p>" + this.repCon + "</p>"
                    		  + "</div>"
                    		  + "</div>"
                    		  + "</li>";
                    		 } 
                    		 
                    		
                    		  
                    	  });
                    	  $(".aa-review-nav").html(str);
                      });
                      }
   
   </script>

    
  

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

  <!-- Start Promo section -->
  
  <!-- / Promo section -->
  <!-- product category -->
    <!-- product category -->
  <section id="aa-product-details">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-product-details-area">
            <div class="aa-product-details-content">
              <div class="row">
                <!-- Modal view slider -->
                <div class="col-md-5 col-sm-5 col-xs-12">                              
                  <div class="aa-product-view-slider">                                
                    <div id="demo-1" class="simpleLens-gallery-container">
                      <div class="simpleLens-container">
                      <div class="simpleLens-thumbnails-container">
                          <img src="resources/${goods.gdsThumbImg}" />
                                                           
                      </div>
                    </div>
                  </div>
                  </div>
                  </div>
                
                <!-- Modal view content -->
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
                    <h3>${goods.gdsName}</h3>
                    <div class="aa-price-block">
                      <span class="aa-product-view-price"><fmt:formatNumber value="${goods.gdsPrice}" pattern="###,###,###" />원</span>
                      
                    </div>
              
                    <div class="aa-prod-quantity">
                      <form action="/product/addCart" method="post">
                        <c:if test="${goods.gdsStock != 0 }">
                        <select id="" name="cartStock" style="margin-right:15px">                        
                         <c:forEach var="i" begin="1" end="10" step="1">
                          <c:if test="${goods.gdsStock >= i }">
                          <option value="${i}">${i} </option>
                          </c:if>
                         </c:forEach>
                        </select>
                        </c:if>
                     <input name="gdsNum" type="hidden" value="${goods.gdsNum}" >
                      <p class="aa-prod-category">
                        	<c:if test="${goods.gdsStock != 0 }">
                        	주문가능수량: <a href="#">${goods.gdsStock}개</a>
                        	</c:if>
                        	
                        	<c:if test="${goods.gdsStock == 0 }">
                        	주문가능수량: <a href="#" >품절</a>
                        	</c:if>
                      </p>
                      <br>
                      <c:if test="${goods.gdsStock != 0 }">
                      <input class="aa-add-to-cart-btn" type="submit" value="장바구니" >
                      </c:if>
					</form> 
                    </div>
                  
                  </div>
                </div>
              </div>
            </div>
            <div class="aa-product-details-bottom">
              <ul class="nav nav-tabs" id="myTab2">
                <li><a href="#description" data-toggle="tab">설명</a></li>
                <li><a href="#review" data-toggle="tab">리뷰</a></li>                
              </ul>
			<input type="hidden" value="${member.userId}" >
              <!-- Tab panes -->
              <div class="tab-content">
                <div class="tab-pane fade in active" id="description">                  
                  <p>${goods.gdsDes}</p>
                </div>
                <div class="tab-pane fade " id="review">
                 <div class="aa-product-review-area">
               
                   <ul class="aa-review-nav" id="aa-review-nav">
                    	<%-- <c:forEach var="r" items="${replys}">
                    	<li>
                        <div class="media">                        
                          <div class="media-body">
                            <h4 class="media-heading"><strong>${r.userId}</strong> - <span><fmt:formatDate value="${r.repDate}" pattern="YYYY-MM-dd" /></span></h4>

                            <p>${r.repCon}</p>
                          </div>
                        </div>
                      </li>
                      </c:forEach> --%>
                      </ul>
                      <script>
                      replyList();
                      </script>
                      <script>
                      $(document).on('click', '.modify', function(){
                    	  $(".replyModal").attr("style", "display:block;");
                    	  var repNum = $(this).attr("data-repNum");
                    	  var repCon = $(this).parent().parent().children(".replyContent").text();
                    	  
                    	  $(".modal_repNum").val(repNum);
                    	  $(".modal_repCon").val(repCon);
                    	  
                      });
                      </script>
                      
                      <script>
                      $(document).on('click', '.delete', function(){
                    	  var check = confirm("삭제 하시겠습니까?");
                    	  if(check){
                    		  var data = { 
                    		  repNum : $(this).attr("data-repNum")
                    	  };
                    	  }
                    	 $.ajax({
                    		 url : "/product-detail/deleteReply",
                    	 	 type : "post",
                    	 	 data : data,
                    	 	 success : function(){
                    	 		 replyList();
                    	 		 alert("삭제 완료!");
                    	 	 }
                    	 });
                      });
                      </script>
                      
                      <script>
                      $(document).on('click', '.modal_modify_btn', function(){
                    	  var check = confirm("수정 하시겠습니까?");
                    	  if(check){
                    	  var data = {
                    			  repNum : $(".modal_repNum").val(),
                    			  repCon : $(".modal_repCon").val()
                    	  };
	  
                    	  $.ajax({
                    		  url : "/product-detail/modifyreply",
                    		  type : "post",
                    		  data : data,
                    		  success : function(){
                    			  replyList();
                    			  $(".replyModal").attr("style", "display:none;");
                    			  alert("수정 완료!");
                    		  }
                    	  });
                    	  }
                      });
                      </script> 

      
                 <c:if test="${member == null }">

                        <p style="text-align:center; margin:50px 0px; font-size:20px">후기를 남기시려면 <a href="/login" style="color:#999">로그인</a> 해주세요</p>

                </c:if>
                   <!-- review form -->
                  <c:if test="${member != null }">
                   <form  role="form" method="post" autocomplete="off" class="aa-review-form" id="aa-review-form" >
                      <input type="hidden" name="gdsNum" id="gdsNum" value="${goods.gdsNum}">
                      <div class="form-group">
                        <label for="message">Your Review</label>
                        <textarea class="form-control" rows="3" id="repCon" name="repCon"></textarea>
                      </div>

                      <button type="button" class="btn btn-default aa-review-submit" id="aa-review-submit">리뷰작성</button>
                   </form>
                   <script>
                   $("#aa-review-submit").click(function(){
                	   var fromObj = $("aa-review-form[role='form']");
                	   var gdsNum = $("#gdsNum").val();
                	   var repCon = $("#repCon").val();
                	   
                	   var data = {
                		   gdsNum : gdsNum,
                		   repCon : repCon
                	   };
                	   
                	   $.ajax({
                		   url : "/product-detail/addreply",
                		   type : "post",
                		   data : data,
                		   success : function(){
                			   $("#repCon").val("");
                			   replyList();
                		   }
                	   });
                	  
                   });
                   	</script>
                   
                   </c:if>
                 </div>
                </div>            
              </div>
            </div>  
          </div>
        </div>
      </div>
    </div>
  </section>
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
	<div class="replyModal" >

 <div class="modalContent">
  
  <div>
   <textarea class="modal_repCon" name="modal_repCon"></textarea>
   <input type="hidden" class="modal_repNum">
  </div>
  
  <div>
   <button type="button" class="modal_modify_btn">수정</button>
   <button type="button" class="modal_cancel">취소</button>
  </div>
  
 </div>

 <div class="modalBackground"></div>
 
</div>
                      <script>
                      $(".modal_cancel").click(function(){
                    	  $(".replyModal").attr("style", "display:none;");
                      })
                      </script>


  </body>
</html>