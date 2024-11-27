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
    <script src="${pageContext.request.contextPath}/js/drawerToggle.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/toggleLogoutButton.js" defer></script>
</head>
<body>
    <div class="layout">
        <%@ include file="/page/header.jsp" %>
        <%@ include file="/page/component/drawer.jsp" %>
        <div class="content-wrapper">
            <div class="container">
        		<%@ include file="/page/library/menu.jsp" %>
        		<%@ include file="/page/library/playlist.jsp" %>
            	
            </div>
        </div>
    </div>
</body>
</html>