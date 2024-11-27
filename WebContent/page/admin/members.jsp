<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h2>회원정보 관리</h2>

<!-- 검색 폼 -->
<form action="members" method="get">
    <input type="text" name="search" placeholder="검색 (이름/이메일)">
    <button type="submit">검색</button>
</form>

<table border="1">
    <tr>
        <th>ID</th>
        <th>이름</th>
        <th>이메일</th>
        <th>가입일</th>
        <th>관리</th>
    </tr>
    <%
        // 예제 데이터 실제db연결시 여기에갖고오는 코드 추가.
        String[][] members = {
            {"1", "홍길동", "hong@example.com", "2024-01-01"},
            {"2", "김철수", "kim@example.com", "2024-02-01"}
        };

        for (String[] member : members) {
    %>
    <tr>
        <td><%= member[0] %></td>
        <td><%= member[1] %></td>
        <td><%= member[2] %></td>
        <td><%= member[3] %></td>
        <td><button>삭제</button></td>
    </tr>
    <%
        }
    %>
</table>
