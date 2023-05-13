<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
    <meta chatset="UTF-8">
    <title>결제 및 대금수령</title>
    <meta name="viewport" content="width=device-width , initial-scale=1.0" />
    <link rel="stylesheet" href="css/myPageUi/myPageReceipt.css">
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <header>
            <div id="header_container">
                <div id="header_logo"><a href="/"><img src="img/logo.png" alt="logo" width="180px"></a></div>
                <div id="login_icon"><a href="/"><img src="img/login.png" alt="login" width="40px"></a></div>

            </div>
        </header>
    </header>
    <main>
        <h1><a href="/">마이페이지</a> > 결제 및 대금수령</h1>
        <div class="receipt_body">
        <p>수령받으실 금액</p>
        <p>XXXXXX 원</p>
        <label for="accountnumber">입금 받으실 계좌</label>
        <input type="text" name="accountnumber" class="acnumber_box" pattern="[0-9]*" required>
        <button id="registerButton">등록</button>
        <div id="loadingMessage" style="display: none;">서비스 준비중입니다.</div>
        <script src="myPageReceipt.js"></script>
        </div>
        </main>
    <footer>
        <div id="footer_container">
            <div id="logo" ><a href="/"><img src="img/logo_white.png" alt="logo" width="200px"></a></div>
            <a href="/" class="footer_font">개인정보 처리방침</a>
            <a href="/" class="footer_font">기타 필요메뉴</a>
            <a href="/" class="footer_font">메뉴구성</a>

            <a href="/" class="footer_font">Copyright © MOIM MOIM. All Rights Reserved.</a>
    </footer>
</body>
</html>