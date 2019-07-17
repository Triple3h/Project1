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
</head>
<body>
<center>
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
</center>
</body>
</html>
