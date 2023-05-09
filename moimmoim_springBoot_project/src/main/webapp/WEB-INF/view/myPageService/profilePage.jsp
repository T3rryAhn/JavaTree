<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width , initial-scale=1.0" />
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="/css/moimmoimBody.css">

    <title>ProfilePage</title>
</head>
<body>
<!--header 시작-->
    <header>
        <div id="header_container">
            <div id="main-logo" ><a href="/"><img src="/imgs/moimmoimUi/logo.png" alt="logo" width="200px"></a></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <a href="/" class="header_font">MOIM LIST</a>
            <a href="/" class="header_font">HOST LIST</a>
            <div id="login_icon"><a href="/"><img src="/imgs/moimmoimUi/login.png" alt="login" width="50px"></a></div>
        </div>
    </header>
<!--header 끝-->

<!-- 메인컨텐츠 시작 -->
<main>
    <h1>ProfilePage</h1>
    <hr>
    <div>
        <p>Name: ${profilePageDto.userProfileDto.userName}</p>
        <p>Nickname: ${profilePageDto.userProfileDto.userNickName}</p>
        <img src="${profilePageDto.userProfileDto.userProfileImage}" alt="User Profile Image" width="200px" height="200px">
        <p>MoimReviewScore: ${profilePageDto.userProfileDto.userMoimReviewScoreAvg}</p>
        <p>HostingCount: ${profilePageDto.userProfileDto.userHostingCount}</p>
        <p>Birth: ${profilePageDto.userProfileDto.userBirth}</p>
        <p>Email: ${profilePageDto.userProfileDto.userEmail}</p>
        <p>CreateDate: &{profilePageDto.userProfileDto.userCreateDate}</p>
        <p>PhoneNumber: &{profilePageDto.userProfileDto.phoneNum}</p>
    </div>
    <div>
        <p>Introduce: ${profilePageDto.userIntroduction}</p>
    </div>
</main>
<!-- 메인 컨텐츠 끝 -->
    <!--footer 시작-->
    <footer>
        <div id="footer_container">
            <div class="footer_logo_menu">
                <a href="#"><img src="\imgs\moimmoimUi\whiteLogo.png" alt="logo" width="200px"></a>
                <a href="#" class="footer_font">개인정보 처리방침</a>
                <a href="#" class="footer_font">기타 필요메뉴</a>
                <a href="#" class="footer_font">메뉴구성</a>
            </div>
            <div>
                <a href="#" class="footer_font">Copyright © MOIM MOIM. All Rights Reserved.</a>
            </div>
        </div>
    </footer>
    <!--footer 끝-->
</body>
</html>