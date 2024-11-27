<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="list-box">
    <div class="btn-box">
        <button class="arrow-btn" onclick="scroll('left', madeListRef)">
            <div>&#8249;</div>
        </button>
        <button class="arrow-btn" onclick="scroll('right', madeListRef)">
            <div>&#8250;</div>
        </button>
    </div>
    <div class="list" id="madeListRef">
        <%
            for (int index = 0; index < 8; index++) {
        %>
            <div class="album" id="album<%= index %>"></div>
        <%
            }
        %>
    </div>
</div>
