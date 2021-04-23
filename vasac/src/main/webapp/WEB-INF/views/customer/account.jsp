<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>VASAC | 회원가입</title>
    
    <!--  제이쿼리 -->
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
 

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
            	<div class="col-md-12">
                <div class="aa-myaccount-register">                 
                 <h4>회원정보 입력</h4>
                 <form action="account" class="aa-login-form" method="post">
                    <label for="">이름<span>*</span></label>
                    <input type="text" name="userName" id="userName">
                    <label for="">아이디<span>*</span></label>
                    <input type="text" name="userId" id="userId">
                    <button type="button" class="aa-browse-btn" id="idCk" style="float:none">중복체크</button>
                    <br><br>
                    <label for="">비밀번호<span>*</span></label>
                    <input type="password" name="userPass" id="userPass">
                    <label for="">비밀번호확인<span>*</span></label>
                    <input type="password" name="userPassCheck" id="userPassCheck">
                    <label for="">연락처<span>*</span></label>
                    <input type="text" name="userPhone" id="userPhone" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                    <button type="submit" class="aa-browse-btn" id="submit">가입</button>                    
                  </form>
                  
                  <script>
                  	$(document).ready(function(){
                  		var idck = 0;

                  		
                  		$("#submit").click(function(){
                  			if($("#userName").val()==""){
                  				alert("이름을 입력 해주세요.");
                  				$("#userName").focus();
                  				return false
                  			}
                  			if($("#userId").val()==""){
                  				alert("아이디를 입력 해주세요.");
                  				$("#userId").focus();
                  				return false
                  			}
                  			if(idck == 0){
                  				alert("아이디 중복체크를 확인 해주세요.");
                  				$("#userId").focus();
                  				return false
                  			}
                  			if($("#userPass").val()==""){
                  				alert("비밀번호를 입력해주세요.");
                  				$("#userPass").focus();
                  				return false
                  			}
                  			if($("#userPassCheck").val()==""){
                  				alert("비밀번호확인을 입력해주세요.");
                  				$("#userPassCheck").focus();
                  				return false
                  			}

                  			
                  			if($("#userPass").val() != $("#userPassCheck").val()){
                  				alert("비밀번호가 일치하지 않습니다..");
                  				$("#userPass").focus();
                  				return false
                  			}
                  		
                  			
                  			if($("#userPhone").val()==""){
                  				alert("연락처를 입력해주세요.");
                  				$("#userPhone").focus();
                  				return false
                  			}
                  		})
                  		
                  		$("#userId").change(function(){
                  			idck = 0;
                  		})
                  		


                  		
                  		$("#idCk").click(function(){
                  			if($("#userId").val()==""){
                  				alert("아이디를 입력 해주세요.");
                  				$("#userId").focus();
                  				return false
                  			}
                  			$.ajax({
                  			url : "/account/idck",
                  			type : "POST",
                  			data : {"userId" : $("#userId").val()},
                  			dataType : "json",
                  			success : function(data){
                  				if(data == 1){
                  					alert("중복된 아이디 입니다.");
                  					idck = 0;
                  				}
                  				else if(data == 0){
                  					alert("사용가능한 아이디 입니다.");
                  					idck = 1;
                  				}
                  			}
                  			
                  		})  
                  		})
                  		
                  		
                  	});</script>

                  
                  
                 </div>
                </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

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