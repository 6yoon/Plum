<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Plum</title>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/drawer.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/playlist.css" />
    <link rel="stylesheet" type="text/css" href="css/like.css" />
    <link rel="stylesheet" type="text/css" href="css/artist.css" />
    <script src="${pageContext.request.contextPath}/js/drawerToggle.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/toggleLogoutButton.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/library.js"></script>
</head>
<body>
    <div class="layout">
        <%@ include file="/page/header.jsp" %>
        <%@ include file="/page/component/drawer.jsp" %>
        <div class="content-wrapper">
            <div class="container">
        			<jsp:include page="page/library/menu.jsp" />
        		<div id=playlist class="libcontent">
        			<jsp:include page="page/library/playlist.jsp" />
    			</div>
    			<div id="like" class="libcontent">
        			<jsp:include page="page/library/like.jsp" />
    			</div>
    			<div id="artist" class="libcontent">
        			<jsp:include page="page/library/artist.jsp" />
    			</div>
        		<jsp:include page="page/library/add.jsp" />
            </div>
        </div>
    </div>
</body>
</html>