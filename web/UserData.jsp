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
        function onBack() {
            history.back();
        }
        function onUpdate() {
            window.location.href = "loadUserDataServlet?operate=update";
        }
        function updatePwd() {
            window.location.href = "loadUserDataServlet?operate=updatePwd";
        }
    </script>
</head>
<body>
    <table border="1">
        <tr>
            <th>用户编号</th>
            <td>
                <input type="text" name="uid" value="${user.uid}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>用户名</th>
            <td>
                <input type="text" name="username" value="${user.username}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>密码</th>
            <td>
                <input type="text" value="******" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>性别</th>
            <td>
                <input type="text" name="sex" value="${user.sex}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>联系方式</th>
            <td>
                <input type="text" name="phone" value="${user.phone}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>邮箱地址</th>
            <td>
                <input type="text" name="email" value="${user.email}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th>现住址</th>
            <td>
                <input type="text" name="addrs" value="${user.addrs}" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="button" value="返回" onclick="onBack()"/>
                <input type="button" value="修改个人信息" onclick="onUpdate()"/>
                <input type="button" value="更改密码" onclick="updatePwd()"/>
            </th>
        </tr>
    </table>
</body>
</html>
