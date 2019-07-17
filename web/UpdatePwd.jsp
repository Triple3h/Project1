<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/16
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <script type="text/javascript">
        function onCheck() {
            var oldPassword = document.getElementById("oldPassword");
            var newPassword1 = document.getElementById("newPassword1");
            var newPassword2 = document.getElementById("newPassword2");

            if(oldPassword.value && newPassword1.value && newPassword2.value){
                return true;
            }else{
                alert("修改失败！");
                return false;
            }
        }

    </script>
</head>
<body>
    <form action="updatePwdServlet" method="post" onsubmit="return onCheck()">
        <table border="1">
            <input type="hidden" name="username" value="${user.username}" readonly="readonly"/>
            <tr>
                <td>输入旧密码</td>
                <td>
                    <input type="password" name="oldPassword" id="oldPassword" />
                </td>
            </tr>
            <tr>
                <td>输入新密码</td>
                <td>
                    <input type="password" name="newPassword1" id="newPassword1" />
                </td>
            </tr>
            <tr>
                <td>确认密码</td>
                <td>
                    <input type="password" name="newPassword2" id="newPassword2" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
