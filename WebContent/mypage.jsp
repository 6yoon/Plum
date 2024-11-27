<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dto.User" %>
<%@ page import="java.util.*" %>
<%@ page import="common.JDBConnect" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Plum</title>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/drawer.css" />
    <link rel="stylesheet" type="text/css" href="css/mypage.css" />
    <script src="${pageContext.request.contextPath}/js/drawerToggle.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/toggleLogoutButton.js" defer></script>
</head>
<body>
    <div class="layout">
        <%@ include file="/page/header.jsp" %>
        <%@ include file="/page/component/drawer.jsp" %>
        <%
		    // 사용자 정보를 가져오는 로직
		    String username = user != null ? user.getUsername() : "";
		    String email = user != null ? user.getEmail() : "";
		    String gender = "여"; // 기본 성별
		    String birthdate = "2024-06-29"; // 기본 생년월일
		    String country = "대한민국"; // 기본 국가
		%>
        <div class="content-wrapper">
            <div class="container">
                <div class="mypage-title">마이페이지</div>
                <form class="info-box" id="profileForm" method="post" action="${pageContext.request.contextPath}/api/update">
                    <div class="info-box-title">프로필</div>
                    <div class="profile-box">
                        <img src="${pageContext.request.contextPath}/img/album.png" class="info-img" alt="profile" />
                        <div class="profile-info">
                            <div class="profile-info-item">
                                사용자 이름
                                <input type="text" name="username" value="<%= username %>" id="username" readonly />
                            </div>
                            <div class="profile-info-item">
                                이메일
                                <input type="email" name="email" value="<%= email %>" id="email" readonly />
                            </div>
                            <div class="profile-info-item">
                                성별
                                <input type="text" name="gender" value="<%= gender %>" id="gender" readonly />
                            </div>
                            <div class="profile-info-item">
                                생년월일
                                <input type="date" name="birthdate" value="<%= birthdate %>" id="birthdate" readonly />
                            </div>
                            <div class="profile-info-item">
                                국가 또는 지역
                                <input type="text" name="country" value="<%= country %>" id="country" readonly />
                            </div>
                        </div>
                    </div>
                    <div class="update-profile">
                        <button type="button" class="update-btn" id="editButton">수정하기</button>
                        <button type="submit" class="update-btn" style="display:none;">완료</button>
                        <button type="button" class="update-cancel" style="display:none;" id="cancelButton">취소</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>