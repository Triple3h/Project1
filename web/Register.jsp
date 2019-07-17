<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/16
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
<center>
    <form action="registerServlet" method="post">
        <table border="1">
            <tr>
                <th>用户名*</th>
                <td>
                    <input type="text" name="username" />
                </td>
            </tr>
            <tr>
                <th>密码*</th>
                <td>
                    <input type="password" name="password1" />
                </td>
            </tr>
            <tr>
                <th>确认密码*</th>
                <td>
                    <input type="password" name="password2" />
                </td>
            </tr>
            <tr>
                <th>联系方式</th>
                <td>
                    <input type="text" name="phone" />
                </td>
            </tr>
            <tr>
                <th>邮箱地址</th>
                <td>
                    <input type="text" name="email" />
                </td>
            </tr>
            <tr>
                <th>现住址</th>
                <td>
                    <input type="text" name="addrs" />
                </td>
            </tr>
            <tr>
                <th>兴趣爱好</th>
                <td>
                    <input type="text" name="hobbys"/>
                </td>
            </tr>
            <tr>
                <th>性别*</th>
                <td class="radio1">
                    <input type="radio" name="sex" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="确认注册" />
                </th>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
