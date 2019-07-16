<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/16
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加商品</title>
</head>
<body>
<form action="addGoodsServlet" method="post">
    <table border="1">
        <caption>添加一个新的商品</caption>
        <tbody>
        <tr>
            <th>商品名字</th>
            <th>
                <input type="text" name="goodsInfoName" />
            </th>
        </tr>
        <tr>
            <th>商品价格</th>
            <th>
                <input type="text" name="goodsInfoPrice" />
            </th>
        </tr>
        <tr>
            <th>商品简介</th>
            <th>
                <input type="text" name="goodsInfoDescription" />
            </th>
        </tr>
        <tr>
            <th>商品库存</th>
            <th>
                <input type="text" name="goodsInfoStock" />
            </th>
        </tr>
        <tr>
            <th>激活状态</th>
            <td>
                <select name="flag">
                    <option selected value="1">激活</option>
                    <option value="0">不激活</option>
                </select>
            </td>
        </tr>
        <%-- 这里缺个图片 --%>
        <tr>
            <th colspan="2">
                <input type="submit" value="确认">
            </th>
        </tr>
        </tbody>

    </table>
</form>
</body>
</html>
