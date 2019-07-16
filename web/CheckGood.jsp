<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/16
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看详情</title>
    <script type="text/javascript">
        function onback() {
            window.location.href = "goodsQueryServlet";
        }
    </script>
</head>
<body>
    <table border="1">
        <caption>商品详细信息</caption>
        <thead>
            <tr>
                <td></td> <!-- 插入图片 -->
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>商品编号</th>
                <th>
                    <input type="text" value="${good.gid}" readonly="readonly" />
                </th>
            </tr>
            <tr>
                <th>商品名字</th>
                <th>
                    <input type="text" value="${good.goodsInfoName}" readonly="readonly" />
                </th>
            </tr>
            <tr>
                <th>商品价格</th>
                <th>
                    <input type="text" value="${good.goodsInfoPrice}" readonly="readonly" />
                </th>
            </tr>
            <tr>
                <th>商品简介</th>
                <th>
                    <input type="text" value="${good.goodsInfoDescription}" readonly="readonly" />
                </th>
            </tr>
            <tr>
                <th>商品库存</th>
                <th>
                    <input type="text" value="${good.goodsInfoStock}" readonly="readonly" />
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="button" value="返回" onclick="onback()">
                </th>
            </tr>
        </tbody>
    </table>
</body>
</html>
