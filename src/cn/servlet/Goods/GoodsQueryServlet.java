package cn.servlet.Goods;

import cn.dao.GoodsDao;
import cn.entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GoodsQueryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GoodsDao goodsDao = new GoodsDao();
        List<Goods> list = goodsDao.findGoods(null);

        req.setAttribute("list",list);
        req.getRequestDispatcher("GoodsList.jsp").forward(req,resp);
    }
}
