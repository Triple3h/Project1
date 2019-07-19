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
        th{
            font-size: 21px;
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
        input[type="button"]:hover{
            background:orangered ;
            color: white;
        }
    </style>
</head>
<body>
<center>
    <div>
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
    </div>
</center>
</body>
</html>
