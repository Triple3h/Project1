<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/17
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更改个人信息</title>
    <%--<script type="text/javascript">
        function onCheck() {
            var password1 = document.getElementById("password1");
            var password2 = document.getElementById("password2");
            if(username.value && password1.value && password2.value){
                return true;
            }else
                alert()
                return false;
        }
    </script>--%>
</head>
<body>
    <form action="updateUserServlet" method="post" <%--onsubmit="return onCheck()"--%>>
        <table border="1">
            <input type="hidden" name="uid" value="${user.uid}" readonly="readonly"/>
            <input type="hidden" name="username" value="${user.username}" readonly="readonly"/>
            <input type="hidden" name="password" value="${user.password}" readonly="readonly"/>
            <tr>
                <th>性别</th>
                <td>
                    <c:choose>
                        <c:when test="${'男'.equals(user.sex)}">
                            <input type="radio" name="sex" value="男" checked="checked"/>男
                            <input type="radio" name="sex" value="女" />女
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="sex" value="男" />男
                            <input type="radio" name="sex" value="女" checked="checked"/>女
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>联系方式</th>
                <td>
                    <input type="text" name="phone" value="${user.phone}" />
                </td>
            </tr>
            <tr>
                <th>邮箱地址</th>
                <td>
                    <input type="text" name="email" value="${user.email}" />
                </td>
            </tr>
            <tr>
                <th>现住址</th>
                <td>
                    <input type="text" name="addrs" value="${user.addrs}" />
                </td>
            </tr>
            <tr>
                <th>
                    <input type="submit" value="确认修改" />
                </th>
            </tr>
        </table>
    </form>
</body>
</html>
