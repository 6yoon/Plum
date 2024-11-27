<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.User" %>
<%
    User user = (User) session.getAttribute("user");
%>
<div class="header">
    <div class="header-content-box">
        <div class="logo" onclick="location.href='index.jsp'">
            <img src="<%= request.getContextPath() %>/img/logo.png" alt="Logo" />
        </div>
        <div class="search-bar">
            <input
                type="text"
                name="searchQuery"
                class="search-input-text"
                placeholder="Search"
            />
            <button type="submit" class="search-button">
                <img
                    src="<%= request.getContextPath() %>/img/search.png"
                    alt="Search"
                    class="search-icon"
                />
            </button>
        </div>
        <% if (user != null) { %>
            <div class="user-info">
                <div class="username">
                    <span><%= user.getUsername() %><span>님</span></span>
                    <div class="dropdown" onclick="dropDownBtn("btn-menu")">
                        <img src="<%= request.getContextPath() %>/img/down.png" alt="Options" />
                    </div>
                </div>   
                <form action="logout" method="get" id="btn-menu">
                    <button type="submit" class="menu-btn">Logout</button>
                    <div class="menu-btn" onclick="location.href='mypage.jsp'">mypage</div>
                </form>
            </div>
        <% } else { %>
            <div class="menu-btn" onclick="location.href='login.jsp'">Login</div>
        <% } %>
    </div>
</div>
<div class="header-size-box"></div>