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
            var td= obj.parentElement;
            var content='<input type="file" name="goodsInfoPic" />';
            content+='<input type="button" value="取消上传" onclick="onCancelImg(this)">';

            td.innerHTML = content;
        }

        function onCancelImg(obj) {
            var td= obj.parentElement;
            var content='<img src="upload/${good.goodsInfoPic}" width="500" height="500px" />';
            content+='<input type="button" value="重新上传" onclick="onResetImg(this)">';
            content+='<input type="hidden" name="picPath" value="${good.goodsInfoPic}">';

            td.innerHTML = content;
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
        td{
            font-size: 21px;
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
        input[type="submit"]:hover{
            background:orangered ;
            color: white;
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
        caption{
            font-size: 30px;
            font-variant: small-caps;
        }
    </style>
</head>
<body>
<center>
    <div>
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
                        <th>激活状态</th>
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
                        <input type="button" value="返回" onclick="onBack()">
                    </th>
                </tr>
            </table>
        </form>
    </div>
</center>
</body>
</html>
