package cn.servlet.Goods;

import cn.utils.Goodsutils;
import cn.utils.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdateGoodsImgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = null;
        String errMsg = "";

        try {
            fileName = Goodsutils.uploadGoodsFile(req, resp).getGoodsInfoPic();
            if(!StringUtils.isNotNull(fileName)){
                throw new Exception("上传文件不能为空!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }

        PrintWriter out = resp.getWriter();
        if(!StringUtils.isNotNull(errMsg)){
            out.println("<script type='text/javascript'>window.opener.onChangeImgValue('"+fileName+"');window.close();</script>");
        }else {
            out.println("<script type='text/javascript'>alert('上传失败："+errMsg+"');history.back();</script>");
        }
    }
}
