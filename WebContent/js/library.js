// 탭을 여는 함수
function openTab(evt, tabName) {
    // 모든 탭을 숨긴다.
    var i, libcontent, menubtn;
    libcontent = document.getElementsByClassName("libcontent");
    for (i = 0; i < libcontent.length; i++) {
        libcontent[i].style.display = "none";
    }

    // 모든 버튼의 active 클래스를 제거한다.
    menubtn = document.getElementsByClassName("menubtn");
    for (i = 0; i < menubtn.length; i++) {
        menubtn[i].className = menubtn[i].className.replace(" active", "");
    }

    // 해당 탭을 표시하고 active 클래스를 추가한다.
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

// 페이지가 로드될 때 기본 탭을 보여주기 위해 호출
window.onload = function() {
    document.getElementsByClassName("menubtn")[0].click(); // 첫 번째 탭을 기본적으로 클릭한 것처럼 설정
}
