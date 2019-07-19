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
        }
        th{
            background: white;
            width: 150px;
        }
        input[type="text"] {
            width: 300px;
            height: 45px;
            font-size: 22px;
            line-height: 35px;
            border-radius: 3px;
            border: 1px solid #000;
            text-indent: 10px;
            background: white;
        }

        input[type="password"] {
            width: 300px;
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
        .radio1{
            font-size: 25px;
        }
    </style>
</head>
<body>
    <center>
        <div>
            <form action="updateUserServlet" method="post" <%--onsubmit="return onCheck()"--%>>
            <table border="1">
                <input type="hidden" name="uid" value="${user.uid}" readonly="readonly"/>
                <input type="hidden" name="username" value="${user.username}" readonly="readonly"/>
                <input type="hidden" name="password" value="${user.password}" readonly="readonly"/>
                <tr>
                    <th>性别</th>
                    <td class="radio1">
                        <c:choose>
                            <c:when test="${'男'.equals(user.sex)}">
                                &nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="男" checked="checked"/>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex" value="女" />女
                            </c:when>
                            <c:otherwise>
                                &nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <th colspan="2">
                        <input type="submit" value="确认修改" />
                    </th>
                </tr>
            </table>
        </form>
        </div>
    </center>
</body>
</html>
