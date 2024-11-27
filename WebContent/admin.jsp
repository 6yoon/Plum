<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/admin.js"></script>
</head>
<body>
    <div class="tab">
        <button class="tablinks" onclick="openTab(event, 'members')">회원정보</button>
        <button class="tablinks" onclick="openTab(event, 'logs')">로그</button>
        <button class="tablinks" onclick="openTab(event, 'statistics')">통계</button>
        <button class="tablinks" onclick="openTab(event, 'inquiries')">문의사항</button>
        <button class="tablinks" onclick="openTab(event, 'serverStatus')">서버 상태</button>
        <button class="tablinks" onclick="openTab(event, 'notices')">공지사항</button>
        <form action="logout" method="get" style="display:inline;">
            <button type="submit" class="logout">로그아웃</button>
        </form>
    </div>

    <!-- Tab content -->
    <div id="members" class="tabcontent">
        <jsp:include page="page/admin/members.jsp" />
    </div>
    <div id="logs" class="tabcontent">
        <jsp:include page="page/admin/logs.jsp" />
    </div>
    <div id="statistics" class="tabcontent">
        <jsp:include page="page/admin/statistics.jsp" />
    </div>
    <div id="inquiries" class="tabcontent">
        <jsp:include page="page/admin/inquiries.jsp" />
    </div>
    
    <div id="serverStatus" class="tabcontent">
        <jsp:include page="page/admin/serverStatus.jsp" />
    </div>
    <div id="notices" class="tabcontent">
        <jsp:include page="page/admin/notices.jsp" />
    </div>
</body>
</html>