<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="nav">
    <div class="toggle-header">
        <!-- 왼쪽 드로어 토글 버튼 -->
        <div class="left-drawer-toggle-btn">
            <svg viewBox="0 0 100 80" width="40" height="40">
                <rect width="100" height="20"></rect>
                <rect y="30" width="100" height="20"></rect>
                <rect y="60" width="100" height="20"></rect>
            </svg>
        </div>

        <!-- 오른쪽 드로어 토글 버튼 -->
        <div class="right-drawer-toggle-btn">
            <svg viewBox="0 0 100 80" width="40" height="40">
                <rect width="100" height="20"></rect>
                <rect y="30" width="100" height="20"></rect>
                <rect y="60" width="100" height="20"></rect>
            </svg>
        </div>
    </div>

    <!-- 왼쪽 드로어 -->
    <div class="left-drawer">
        <div class="drawer-left">
            <div class="left-drawer-menu-btn">HOME</div>
            <div class="left-drawer-btn">맞춤추천</div>
            <div class="left-drawer-btn">최근음악</div>
            <div class="left-drawer-btn">인기차트</div>
            <div class="left-drawer-menu-btn">라이브러리</div>
            <div class="left-drawer-btn">재생목록</div>
            <div class="left-drawer-btn">좋아요 누른 음악</div>
            <div class="left-drawer-btn">내 아티스트</div>
        </div>
    </div>

    <!-- 오른쪽 드로어 -->
    <div class="right-drawer">
        <div class="profile-list">
            <li>
                <img src="https://via.placeholder.com/50" alt="Profile" />
                <p>
                    <span>yewon</span>
                    <br />
                    Kanye West - Runaway
                </p>
            </li>
            <li>
                <img src="https://via.placeholder.com/50" alt="Profile" />
                <p>
                    <span>nayoon</span>
                    <br />
                    Kanye West - Runaway
                </p>
            </li>
            <li>
                <img src="https://via.placeholder.com/50" alt="Profile" />
                <p>
                    <span>jaehyun</span>
                    <br />
                    Kanye West - Runaway
                </p>
            </li>
        </div>
    </div>
</nav>