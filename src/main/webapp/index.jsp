<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style/css/index.css">
    <link rel="stylesheet" type="text/css" href="style/css/cityselector.css">
    <title></title>
    <style>
        *{
            margin: 0;
            padding: 0
        }
        .div{
            width: 100%;
            height:500px;
            background-repeat: no-repeat;
            background-image: url("style/img/1.jpg");
            animation:frams 7s infinite;
        }
        img{vertical-align: bottom}
        @keyframes frams {
            0%{
                background-image: url("style/img/1.jpg");background-size: 100% 100%;background-repeat: no-repeat
            }
            25%{
                background-image: url("style/img/2.jpg");background-size: 100% 100%;background-repeat: no-repeat
            }
            50%{
                background-image: url("style/img/3.jpg");background-size: 100% 100%;background-repeat: no-repeat
            }
            75%{
                background-image: url("style/img/4.jpg");background-size: 100% 100%;background-repeat: no-repeat
            }
            100%{
                background-image: url("style/img/5.jpg");background-size: 100% 100%;background-repeat: no-repeat
            }
        }
    </style>
</head>

<body>
<h2>Hello World!</h2>
</body>
</html>
