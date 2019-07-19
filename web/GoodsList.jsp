<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/15
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <script type="text/javascript">
        function onUpdate(gid) {
            window.location.href = "loadGoodsDataServlet?gid="+gid+"&operate=update";
        }

        function onDelete(gid) {
            window.location.href = "deleteGoodsServlet?gid="+gid;
        }

        function onAdd() {
            window.location.href = "AddGoods.jsp";
        }

        function UserInfo() {
            window.location.href = "loadUserDataServlet";
        }

        function onCheck(gid) {
            window.location.href = "loadGoodsDataServlet?gid="+gid+"&operate=check";
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
        #top{
            position: absolute;
            top: 10%;
            right: 10%;
        }

        table{
            background: white;

        }
        td{
            background: white;
        }
        th{
            background: white;
            width: 100px;
            height: 50px;
            font-size: 23px;
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
            width: 110px;
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
            width: 110px;
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
    <span id="top" >
        <tr>
            <td>
                欢迎${userInfo.username}登录&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <a href="quitUserServlet">退出登录</a>
            </td>
        </tr>
    </span >
<center>
    <div>
        <table border="1">
            <caption>商品列表</caption>
            <thead>
                <tr>
                    <th>商品编号</th>
                    <th>商品名字</th>
                    <th>商品价格</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="goods">
                    <tr>
                        <td>${goods.gid}</td>
                        <td>${goods.goodsInfoName}</td>
                        <td>${goods.goodsInfoPrice}</td>
                        <td>
                            <input type="button" value="修改" onclick="onUpdate(${goods.gid})"/>&nbsp;
                            <input type="button" value="删除" onclick="onDelete(${goods.gid})"/>&nbsp;
                            <input type="button" value="查看详情" onclick="onCheck(${goods.gid})"/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
            <tr>
                <th colspan="7" align="center">
                    <input type="button" value="添加新商品" onclick="onAdd()"/>
                    <input type="button" value="个人中心" onclick="UserInfo()"/>
                </th>
            </tr>
        </table>
    </div>
</center>
</body>
</html>
