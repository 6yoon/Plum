<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h2>문의사항 관리</h2>
<div id="chatWindow">
    <!-- 문의사항 채팅 내용 표시 -->
</div>
<input type="text" id="adminMessage" placeholder="답변 입력">
<button onclick="sendMessage()">전송</button>

<script>
function sendMessage() {
    let message = document.getElementById('adminMessage').value;
    // AJAX로 메시지 전송 구현
    alert("전송된 메시지: " + message);
}
</script>
