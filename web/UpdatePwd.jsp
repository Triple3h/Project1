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
    </div>
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
                        <input type="button" value="返回" onclick="onBack()" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
