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
    <script type="text/javascript">
        function onBack() {
            history.back();
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
                    &nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="男"/>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="sex" value="女"/>女
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="确认注册" />
                    <input type="button" value="返回" onclick="onBack()"/>
                </th>
            </tr>
        </table>
    </form>
    </div>
</center>
</body>
</html>
