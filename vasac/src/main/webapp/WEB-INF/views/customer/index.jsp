<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
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
    <link href="/resources/customer/css/style.css?afteeerrrrr" rel="stylesheet">    

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
    <script>
    var msg = "${msg}";
    if (msg == "ok"){
    	alert("회원가입이 완료되었습니다.")
    }
    </script>
    
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
  <%@ include file="include/slider.jsp" %>
  <!-- / slider -->
  <!-- Start Promo section -->

  <!-- / Promo section -->
  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                <!-- start prduct navigation -->
                 <ul class="nav nav-tabs aa-products-tab">
                    <li class="active"><a href="#men" data-toggle="tab">Best</a></li>
                    <li><a href="#women" data-toggle="tab">New</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <!-- Start men product category -->
                    <div class="tab-pane fade in active" id="men">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[0].gdsNum}"><img src="/resources/${list[0].gdsThumbImg}" ></a>
                            
                              <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[0].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[0].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[0].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[0].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                        
                       
                          <!-- product badge -->
                        
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[1].gdsNum}"><img src="/resources/${list[1].gdsThumbImg}"></a>
                            
                             <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[1].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[1].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[1].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[1].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                       
                          <!-- product badge -->
                        
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[2].gdsNum}"><img src="/resources/${list[2].gdsThumbImg}" alt="polo shirt img"></a>
                        
                             <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[2].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[2].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[2].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[2].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                         
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[3].gdsNum}"><img src="/resources/${list[3].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[3].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[3].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[3].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[3].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                   
                          <!-- product badge -->
                         
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[4].gdsNum}"><img src="/resources/${list[4].gdsThumbImg}" alt="polo shirt img"></a>
                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[4].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[4].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[4].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[4].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                        
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[5].gdsNum}"><img src="/resources/${list[5].gdsThumbImg}" alt="polo shirt img"></a>
                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[5].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[5].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[5].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[5].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                          
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[6].gdsNum}"><img src="/resources/${list[6].gdsThumbImg}" alt="polo shirt img"></a>
                          
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[6].gdsName}</a></h4>
                              <c:choose>
                              <c:when test="${list[6].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[6].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[6].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                      
                          <!-- product badge -->
                          
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[7].gdsNum}"><img src="/resources/${list[7].gdsThumbImg}" alt="polo shirt img"></a>
                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[7].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[7].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[7].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[7].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                    
                          <!-- product badge -->
                         
                        </li>                      
                      </ul>
                      
                    </div>
                    <!-- / men product category -->
                    <!-- start women product category -->
                    <div class="tab-pane fade" id="women">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[8].gdsNum}"><img src="/resources/${list[8].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[8].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[8].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[8].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[8].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                        
                          <!-- product badge -->

                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[9].gdsNum}"><img src="/resources/${list[9].gdsThumbImg}" alt="polo shirt img"></a>
                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[9].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[9].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[9].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[9].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                         
                          <!-- product badge -->

                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[10].gdsNum}"><img src="/resources/${list[10].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[10].gdsName}</a></h4>
                                                           <c:choose>
                              <c:when test="${list[10].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[10].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[10].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                         
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[11].gdsNum}"><img src="/resources/${list[11].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[11].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[11].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[11].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[11].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                      
                          <!-- product badge -->

                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[12].gdsNum}"><img src="/resources/${list[12].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[12].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[12].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[12].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[12].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>
                         
                         
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[13].gdsNum}"><img src="/resources/${list[13].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[13].gdsName}</a></h4>
                                                           <c:choose>
                              <c:when test="${list[13].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[13].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[13].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                          
                        
                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[14].gdsNum}"><img src="/resources/${list[14].gdsThumbImg}" alt="polo shirt img"></a>
                         
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[14].gdsName}</a></h4>
                              <span class="aa-product-price"><fmt:formatNumber value="${list[14].gdsPrice}" pattern="###,###,###"/>원</span>
                            </figcaption>
                          </figure>                          
                         
                          <!-- product badge -->

                        </li>
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="product-detail?gdsNum=${list[15].gdsNum}"><img src="/resources/${list[15].gdsThumbImg}" alt="polo shirt img"></a>
                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#">${list[15].gdsName}</a></h4>
                                                            <c:choose>
                              <c:when test="${list[15].gdsStock == 0}">
                              <span class="aa-product-price">품절</span>
                              </c:when>
                              <c:when test="${list[15].gdsStock != 0}">
                              <span class="aa-product-price"><fmt:formatNumber value="${list[15].gdsPrice}" pattern="###,###,###"/>원</span>
                              </c:when>
                              </c:choose>
                            </figcaption>
                          </figure>                         
                         
                          <!-- product badge -->
                        </li>                        
                      </ul>
                      
                    </div>
                    <!-- / women product category -->
                    <!-- start sports product category -->

                    <!-- / sports product category -->
                    <!-- start electronic product category -->
                   
                    <!-- / electronic product category -->
                  </div>
                  <!-- quick view modal -->                  
                  <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">                      
                        <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <div class="row">
                            <!-- Modal view slider -->
                            <div class="col-md-6 col-sm-6 col-xs-12">                              
                              <div class="aa-product-view-slider">                                
                                <div class="simpleLens-gallery-container" id="demo-1">
                                  <div class="simpleLens-container">
                                      <div class="simpleLens-big-image-container">
                                          <a class="simpleLens-lens-image" data-lens-image="/resources/customer/img/view-slider/large/polo-shirt-1.png">
                                              <img src="/resources/customer/img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image">
                                          </a>
                                      </div>
                                  </div>
                                  <div class="simpleLens-thumbnails-container">
                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="/resources/customer/img/view-slider/large/polo-shirt-1.png"
                                         data-big-image="/resources/customer/img/view-slider/medium/polo-shirt-1.png">
                                          <img src="/resources/customer/img/view-slider/thumbnail/polo-shirt-1.png">
                                      </a>                                    
                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="/resources/customer/img/view-slider/large/polo-shirt-3.png"
                                         data-big-image="/resources/customer/img/view-slider/medium/polo-shirt-3.png">
                                          <img src="/resources/customer/img/view-slider/thumbnail/polo-shirt-3.png">
                                      </a>

                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="/resources/customer/img/view-slider/large/polo-shirt-4.png"
                                         data-big-image="/resources/customer/img/view-slider/medium/polo-shirt-4.png">
                                          <img src="/resources/customer/img/view-slider/thumbnail/polo-shirt-4.png">
                                      </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- Modal view content -->
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class="aa-product-view-content">
                                <h3>T-Shirt</h3>
                                <div class="aa-price-block">
                                  <span class="aa-product-view-price">$34.99</span>
                                  <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
                                <h4>Size</h4>
                                <div class="aa-prod-view-size">
                                  <a href="#">S</a>
                                  <a href="#">M</a>
                                  <a href="#">L</a>
                                  <a href="#">XL</a>
                                </div>
                                <div class="aa-prod-quantity">
                                  <form action="">
                                    <select name="" id="">
                                      <option value="0" selected="1">1</option>
                                      <option value="1">2</option>
                                      <option value="2">3</option>
                                      <option value="3">4</option>
                                      <option value="4">5</option>
                                      <option value="5">6</option>
                                    </select>
                                  </form>
                                  <p class="aa-prod-category">
                                    Category: <a href="#">Polo T-Shirt</a>
                                  </p>
                                </div>
                                <div class="aa-prod-view-bottom">
                                  <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                  <a href="#" class="aa-add-to-cart-btn">View Details</a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>                        
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- / quick view modal -->              
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Products section -->

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