<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/15
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改商品页面</title>
    <script type="text/javascript">
        function onResetImg(obj) {
            var td = obj.parentNode;
        }
    </script>
</head>
<body>
<center>
    <form action="updateGoodsServlet" method="post" enctype="multipart/form-data">
        <table border="1">
            <caption>商品详情</caption>
                <input type="hidden" name="gid" value="${good.gid}">
                <thead>
                    <tr>
                        <td colspan="2">
                            <c:choose>
                                <c:when test="${good.goodsInfoPic!=null}">
                                    <img src="upload/${good.goodsInfoPic}" width="500px" height="500px">
                                    <input type="button" value="重新上传" onclick="onResetImg(this)">
                                    <input type="hidden" name="goodsInfoPic" value="${good.goodsInfoPic}"/>
                                </c:when>
                                <c:otherwise>
                                    没有上传图片！<br/>
                                    <input type="file" name="goodsInfoPic" />
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </thead>
            <tbody>
                <tr>
                    <th>商品名字</th>
                    <td>
                        <input type="text" name="goodsInfoName" value="${good.goodsInfoName}"/>
                    </td>
                </tr>
                <tr>
                    <th>商品价格</th>
                    <td>
                        <input type="text" name="goodsInfoPrice" value="${good.goodsInfoPrice}"/>
                    </td>
                </tr>
                <tr>
                    <th>商品简介</th>
                    <td>
                        <input type="text" name="goodsInfoDescription" value="${good.goodsInfoDescription}"/>
                    </td>
                </tr>
                <tr>
                    <th>商品库存</th>
                    <td>
                        <input type="text" name="goodsInfoStock" value="${good.goodsInfoStock}"/>
                    </td>
                </tr>
                <tr>
                    <td>激活状态：</td>
                    <td>
                        <select name="flag">
                            <option selected value="1">激活</option>
                            <option value="0">不激活</option>
                        </select>
                    </td>
                </tr>
            </tbody>
            <tr>
                <th colspan="2" align="center">
                    <input type="submit" value="提交修改" />
                </th>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
