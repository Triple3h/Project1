<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/7/25
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传图片界面</title>
</head>
<body>
    <form action="updateGoodsImgServlet" enctype="multipart/form-data" method="post">
        上传图片:<input type="file" name="goodsInfoPic" />
        <input type="submit" value="提交">
    </form>
</body>
</html>
