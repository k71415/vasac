<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">             

              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
  				  
                  <li><a href="account.html">즐겨찾기</a></li>
                  <c:choose>
                  	<c:when test="${member.userId == null }">
                  <li class="hidden-xs"><a href="/login">로그인</a></li>
                  <li class="hidden-xs"><a href="/account">회원가입</a></li>
                  </c:when>
                    <c:when test="${member.userId != null }">
                  <li class="hidden-xs"><a href="/logout">로그아웃</a></li>
                  <li class="hidden-xs"><a href="/product/cart">장바구니</a></li>
                  </c:when>
                  </c:choose>
				  
				  <li class="hidden-xs"><a href="/order">주문조회</a></li>
				  <c:if test="${member.verify == 1 }">
				  <li class="hidden-xs"><a href="admin/index">관리자 페이지</a></li>
				  </c:if>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <!-- img based logo -->
               <a href="/"><img src="/resources/customer/img/logo.jpg" alt="logo img"></a>
              </div>
              <!-- / logo  -->
               <!-- cart box -->  
              <!-- / cart box -->
                      
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>