// drawerToggle.js

document.addEventListener('DOMContentLoaded', function () {
    const leftDrawerToggleBtn = document.querySelector('.left-drawer-toggle-btn');
    const rightDrawerToggleBtn = document.querySelector('.right-drawer-toggle-btn');
    const leftDrawer = document.querySelector('.left-drawer');
    const rightDrawer = document.querySelector('.right-drawer');

    // 왼쪽 드로어 토글
    leftDrawerToggleBtn.addEventListener('click', function () {
        leftDrawer.classList.toggle('open'); // 'open' 클래스를 토글
    });

    // 오른쪽 드로어 토글
    rightDrawerToggleBtn.addEventListener('click', function () {
        rightDrawer.classList.toggle('open'); // 'open' 클래스를 토글
    });
});