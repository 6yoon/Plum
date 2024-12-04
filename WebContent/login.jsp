<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/signup.css" />
</head>
<body>
    <form class="Login-Container" action="login" method="post">
        <div class="Login-logo" style="cursor: pointer;" onclick="location.href='index.jsp'">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo"/> <!-- 이미지 경로 수정 필요 -->
        </div>
        <div class="login-title">당신의 감각적인 음악들을 <br/> 보관하고 공유하세요.</div>
        <div class="content-box">
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
                <p class="error"><%= errorMessage %></p>
            <%
                }
            %>
            <div class="input-wrapper">
	            <input
	                class="input-email"
	                type="text"
	                name="email"
	                autocomplete="off"
	                placeholder="이메일을 입력하세요."
	                required
	            />
	
	            <input
	                class="input-pw"
	                type="password"
	                name="password"
	                autocomplete="off"
	                placeholder="비밀번호를 입력하세요."
	                required
	            />
	
	            <div class="Login-button-box">
	                <button type="submit" class="login-button">로그인 하기</button>
	                <a href="https://accounts.spotify.com/authorize?client_id=01e9cd5d987748cab58f0690b9583c79&response_type=code&redirect_uri=http://localhost:8080/MyWebSite/callback&scope=user-read-private user-read-email user-read-playback-state user-modify-playback-state streaming" class="login-button">
	                    <img src="${pageContext.request.contextPath}/img/spotify.png" alt="Icon" class="login-button-icon"/>
	                </a>
	            </div>
            </div>
            <div class="go-signup">
                <p class="no">계정이 없나요?</p>
                <p class="go" onclick="location.href='signup.jsp'">Plum에 가입하기</p>
            </div>
        </div>
    </form>
</body>
</html>