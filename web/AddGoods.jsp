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
    <script type="text/javascript" src="js/upload.js" rel="stylesheet">
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
        input[type="file"] {
            width: 180px;
            height: 45px;
            line-height: 28px;
            text-align: center;
            text-decoration: none;
            color: white;
            font-size: 16px;
            margin: 0 0 0;
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
        .flag{
            width: 80px;
            height: 45px;
            line-height: 28px;
            text-align: center;
            text-decoration: none;
            color: white;
            font-size: 16px;
            margin: 0 0 0;
            background-color: lightgreen;
            border-radius: 2px;
            text-decoration: none;
            border: 1px solid white;
            margin-right: 15px;
            margin-left: 5px;
        }
    </style>
</head>
<body>
<center>
    <div>
        <form action="addGoodsServlet" method="post" enctype="multipart/form-data">
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
            <th>商品图片</th>
            <th>
                <img id="goodsPic" src="upload/${goodsInfoPic}" style="display: ${goodsInfoPic!=null?'block':'none'}" width="300px" height="200px">
                <input type="hidden" id="goodsInfoPic" name="goodsInfoPic" />
                <input type="button" value="上传" onclick="onUploadImg()">
            </th>
        </tr>
        <tr>
            <th>激活状态</th>
            <td>
                <select name="flag" class="flag">
                    <option selected value="1">激活</option>
                    <option value="0">不激活</option>
                </select>
            </td>
        </tr>
        <%-- 这里缺个图片 --%>
        <tr>
            <th colspan="2">
                <input type="submit" value="确认">
                <input type="button" value="返回" onclick="onBack()">
            </th>
        </tr>
        </tbody>

    </table>
</form>
    </div>
</center>
</body>
</html>
