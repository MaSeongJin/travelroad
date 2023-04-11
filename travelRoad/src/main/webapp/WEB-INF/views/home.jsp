<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="../css/index.css">
    <title>Travel Road</title>
</head>

<body>
    <header>
        <div class="menuWrap">
            <div class="logo">
                <img src="../img/logo.png" alt="logo">
            </div>
            <ul class="menu">
                <li><a href="#">여행가기</a></li>
                <li><a href="#">여행후기</a></li>
                <li><a href="#">여행스토리</a></li>
            </ul>
        </div>
    </header>

    <div class="body">
        <h1>여행가기</h1>
        <div class="bodyTop">
            <div class="travelGoWrap">
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quae beatae expedita esse aut eius voluptatibus magnam, ullam provident voluptatem quos. Quasi quae eum aliquid nesciunt, nobis fugit debitis inventore labore.</p>
                <div class="travelGo">
                    <form>
                        <div>
                            <label>도착 시간</label>
                            <input type="date">
                            <input type="time">
                        </div>
                        <div>
                            <label>출발 시간</label>
                            <input type="date">
                            <input type="time">
                        </div>
                    </form>
                    <button type="submit">GO</button>
                </div>
            </div>        
            <section class="login">
                <div class="loginWrap">
                    <form class="loginInput"  action="/signin" method="post">
                        <input type="text" name="username" placeholder="아이디" required="required" />
                        <input type="password" name="password" placeholder="비밀번호" required="required" />
                        <button>로그인</button>
                    </form>
                    <div class="socialLogin">
                        <button onclick="javascript:location.href='/oauth2/authorization/facebook'">
                            <i class="fab fa-facebook-square"></i>
                            <span>Facebook 로그인</span>
                        </button>
                        <button onclick="javascript:location.href='/oauth2/authorization/facebook'">
                            <i class="fab fa-facebook-square"></i>
                            <span>kakao 로그인</span>
                        </button>
                    </div>
                </div>
                <div class="signIn">
                    <span>계정이 없으신가요?</span>
                    <a href="/signup">가입하기</a>
                </div>
            </section>
            
            <%-- <section class="loginSuccess">
                <div class="userInfo">
                    <div class="userImgWrap">
                        <img src="../img/1566559758217-10.jpg" alt="" class="usrImg">
                    </div>
                    <div class="userInfoWrap">
                        <div class="userInfoWrapTop">
                            <div class="userNameWrap">
                                <span class="userName">마성진</span>
                                <span>님</span>
                            </div>
                            <a class="logout">로그아웃</a>
                        </div>
                        <p class="userInfoWrapbottom">travelRoad에 오신 것을 환영합니다.</p>
                    </div>
                </div>
                <button class="mypage">마이페이지</button>
            </section> --%>
            
        </div> 
        <h1>여행후기</h1>
        <div class="slickSlider">
            <div>your content</div>
            <div>your content</div>
            <div>your content</div>
        </div>
        <h1>여행스토리</h1>
        <div class="story">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <footer>
        마성진의 포트폴리오입니다.
    </footer>

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        $('.slickSlider').slick();
        $('.slick-arrow').empty();
        $('.slick-prev').text("◀");
        $('.slick-next').text("▶");
        
    </script>
</body>
</html>