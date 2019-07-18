<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/16
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<center>
    <table border="1">
        <caption>商品详细信息</caption>
        <thead>
            <tr>
                <td colspan="2">
                    <c:choose>
                        <c:when test="${good.goodsInfoPic!=null}">
                            <img src="upload/${good.goodsInfoPic}" width="500px" height="500px">
                        </c:when>
                        <c:otherwise>
                            尚未上传图片！
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>商品编号</th>
                <th>
                    ${good.gid}
                </th>
            </tr>
            <tr>
                <th>商品名字</th>
                <th>
                    ${good.goodsInfoName}
                </th>
            </tr>
            <tr>
                <th>商品价格</th>
                <th>
                    ${good.goodsInfoPrice}
                </th>
            </tr>
            <tr>
                <th>商品简介</th>
                <th>
                    ${good.goodsInfoDescription}
                </th>
            </tr>
            <tr>
                <th>商品库存</th>
                <th>
                    ${good.goodsInfoStock}
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="button" value="返回" onclick="onback()">
                </th>
            </tr>
        </tbody>
    </table>
</center>
</body>
</html>
