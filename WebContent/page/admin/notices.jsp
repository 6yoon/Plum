<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h2>공지사항 전송</h2>
<form action="/api/sendNotice" method="post">
    <textarea name="notice" rows="4" cols="50" placeholder="공지사항 입력"></textarea>
    <button type="submit">전송</button>
</form>
