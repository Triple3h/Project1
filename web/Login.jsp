<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/15
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <script type="text/javascript">
        function onCheck() {
            var username = document.getElementById("username");
            var password = document.getElementById("password");

            if(username.value && password.value){
                return true;
            }else {
                alert("登录失败！");
                return false;
            }
        }

        function onRegister() {
            window.location.href = "Register.jsp";
        }
    </script>
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
        div{
            height: 750px;
            background: url("images/2.jpg") no-repeat;
            background-size: auto;
            padding-top: 200px;
        }
        table{
            background: white;

        }
        td{
            background: white;
            font-size: 23px;
        }
        th{
            background: white;
        }
        input[type="text"] {
            width: 330px;
            height: 45px;
            font-size: 22px;
            line-height: 35px;
            border-radius: 3px;
            border: 1px solid #000;
            text-indent: 10px;
            background: white;
        }
        input[type="password"] {
            width: 330px;
            height: 45px;
            font-size: 22px;
            line-height: 35px;
            border-radius: 3px;
            border: 1px solid #000;
            text-indent: 10px;
            background: white;
        }
        input[type="submit"] {
            width: 180px;
            height: 45px;
            line-height: 28px;
            text-align: center;
            text-decoration: none;
            color: white;
            font-size: 16px;
            margin: 0 0 0;
            background: #F8AF14;
            border-radius: 2px;
            text-decoration: none;
            border: 1px solid white;
            margin-right: 15px;
            margin-left: 5px;
        }
        input[type="button"] {
            width: 180px;
            height: 45px;
            line-height: 28px;
            text-align: center;
            text-decoration: none;
            color: white;
            font-size: 16px;
            margin: 0 0 0;
            background: #F8AF14;
            border-radius: 2px;
            text-decoration: none;
            border: 1px solid white;
            margin-right: 15px;
            margin-left: 5px;
        }
        input[type="submit"]:hover{
            background:orangered ;
            color: white;
        }
        input[type="button"]:hover{
            background:orangered ;
            color: white;
        }
        caption{
            font-size: 30px;
            font-variant: small-caps;
        }
    </style>
</head>
<body>
<center>
    <div>
        <form action="loginServlet" method="post" onsubmit="return onCheck()">
        <table border="1">
            <caption>用户登录</caption>
            <tr>
                <th>用户名：</th>
                <td>
                    <input type="text" id="username" name="username"/>
                </td>
            </tr>
            <tr>
                <th>密码：</th>
                <td>
                    <input type="password" id="password" name="password"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="登录"/>
                    <input type="button" value="注册" onclick="onRegister()"/>
                </td>
            </tr>
        </table>
    </form>
    </div>
</center>
</body>
</html>
