<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/signup.css" />
</head>
<body>
    <form class="Login-Container" action="signup" method="post">
        <div class="Login-logo" style="cursor: pointer;" onclick="location.href='index.jsp'">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" /> <!-- 이미지 경로 수정 필요 -->
        </div>
        <div class="login-title">
            당신의 감각적인 음악들을 <br /> 보관하고 공유하세요.
        </div>
        <div class="content-box">
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                String successMessage = (String) request.getAttribute("successMessage");
                if (errorMessage != null) {
            %>
                <p class="error"><%= errorMessage %></p>
            <%
                }
                if (successMessage != null) {
            %>
                <p class="succes"><%= successMessage %></p>
            <%
                }
            %>
            <input
                class="input-username"
                type="text"
                name="username"
                autocomplete="off"
                placeholder="사용자명을 입력하세요."
                required
            />
            <input
                class="input-email"
                type="email"
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
                <button type="submit" class="login-button">가입하기</button>
            </div>
            <div class="go-signup">
                <p class="no">이미 회원이신가요?</p>
                <p class="go" onclick="location.href='login.jsp'">로그인 하러 가기</p>
            </div>
        </div>
    </form>
</body>
</html>