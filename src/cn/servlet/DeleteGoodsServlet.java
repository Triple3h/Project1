package cn.servlet;

import cn.dao.GoodsDao;
import cn.entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DeleteGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int gid = Integer.parseInt(req.getParameter("gid"));

        int rows = 0;
        String errMsg = "";
        try {
            if(gid <= 0)
                throw new Exception("未找到商品！");

            Goods goods = new Goods();
            goods.setGid(gid);

            GoodsDao goodsDao = new GoodsDao();
            rows = goodsDao.deleteGoods(goods);

            if(rows <= 0)
                throw new Exception("删除未完成！");

        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }

        PrintWriter out = resp.getWriter();
        if(rows>0){
            out.println("<script type='text/javascript'>alert('删除成功！');location.href = 'goodsQueryServlet';</script>");
        }else {
            out.println("<script type='text/javascript'>alert('删除失败："+errMsg+"');history.back();</script>");
        }
    }
}
