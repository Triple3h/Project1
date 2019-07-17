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
</head>
<body>
<center>
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
</center>
</body>
</html>
