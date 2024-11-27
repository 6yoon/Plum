<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서버 상태</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <header>
        <h1>서버 상태</h1>
    </header>
    <section>
        <h2>시스템 상태</h2>
        <ul>
            <li>CPU 평균 부하: <%= request.getAttribute("systemLoad") %></li>
            <li>사용 가능한 프로세서 수: <%= request.getAttribute("availableProcessors") %></li>
            <li>전체 메모리: <%= request.getAttribute("totalMemory") %> mb</li>
            <li>사용 중인 메모리: <%= request.getAttribute("usedMemory") %> mb</li>
        </ul>
    </section>
</body>
</html>
