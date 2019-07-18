package cn.servlet.Goods;

import cn.dao.GoodsDao;
import cn.entity.Goods;
import cn.utils.Goodsutils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String errMsg = "";
        int rows = 0;
        try {
            Goods goods = Goodsutils.uploadGoodsFile(req,resp);

            GoodsDao goodsDao = new GoodsDao();
            rows = goodsDao.addGoods(goods);

            if(rows <= 0)
                throw new Exception("未完成添加！");
        } catch (Exception e) {
                e.printStackTrace();
                errMsg = e.getMessage();
            }

        PrintWriter out = resp.getWriter();
        if(rows>0){
            out.println("<script type='text/javascript'>alert('添加成功！');location.href = 'goodsQueryServlet';</script>");
        }else{
            out.println("<script type='text/javascript'>alert('添加失败："+errMsg+"');history.back();</script>");

        }
    }
}
