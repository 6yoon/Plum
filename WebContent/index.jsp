<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Plum</title>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="css/drawer.css" />
    <link rel="stylesheet" type="text/css" href="css/mypage.css" />
    <script src="${pageContext.request.contextPath}/js/drawerToggle.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/toggleLogoutButton.js" defer></script>
</head>
<body>
    <div class="layout">
        <%@ include file="/page/header.jsp" %>
        <%@ include file="/page/component/drawer.jsp" %>
        <div class="content-wrapper">
	        <div class="container">
	            <div class="title">Home</div>
	            <div>
	                <p class="mini-title">맞춤추천</p>
	        		<%@ include file="/page/component/list.jsp" %>
	            </div>
	
	            <div class="mini-title">최근음악</div>
	        		<%@ include file="/page/component/list.jsp" %>
	
	            <div class="mini-title">인기차트</div>
	        		<%@ include file="/page/component/chart.jsp" %>
	        </div>
        </div>
    </div>
</body>
</html>
