<%@ page language ="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>

<head lang="kr">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/signupPage1.css" />
    <script src="js/inputValidate.js"></script>
    <link rel="icon" href="imgs/logo.png"/>
    <title>moimmoim signup</title>

</head>

<body>
    <header id="header">
        <a href="https://www.naver.com/"><img id="logo" src="imgs/logo.png"></a>
    </header>
    <main>
        <h1 id="wellcome">wellcome to </h1>
        <img id="main-logo" src="imgs/logo.png" />


        <form class="userInfo">
            <input type="text" id ="idInput" placeholder="Type ID" />
            <input type="email" placeholder="Type your Email" />
            <button type="button" onclick="">send code to Email</button>
            <input type="text" placeholder="Type the code" />
            <input type="password" placeholder="Type the Password" />
            <input type="password" placeholder="ReType the Password" />

            <h1 id="confirm-msg"></h1>
            <button id="signup-next-bttn">NEXT</button>
        </form>



    </main>


    <!-- <footer id="footer">
        <a href="https://www.naver.com/"><img id="whitelogo" src="imgs/whiteLogo.png"></a>
        <span id="copyright">Copyright © MOIM MOIM. All Rights Reserved.</span>
    </footer> -->

</body>

</html>