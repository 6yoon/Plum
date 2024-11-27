function dropDownBtn() {
        const logoutForm = document.getElementById('btn-menu');
        if (logoutForm.style.display === 'none' || logoutForm.style.display === '') {
            logoutForm.style.display = 'flex'; // 보이게 설정
        } else {
            logoutForm.style.display = 'none'; // 숨기기 설정
        }
    }