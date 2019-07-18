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
import java.rmi.server.ExportException;
import java.util.ArrayList;
import java.util.List;

public class LoadGoodsDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int gid = Integer.parseInt(req.getParameter("gid"));
        String operate = req.getParameter("operate");

        GoodsDao goodsDao = new GoodsDao();
        List<Goods> list = new ArrayList<>();

        String errMsg = "";
        try {
            Goods goods = new Goods();
            goods.setGid(gid);
            list = goodsDao.findGoods(goods);

            if(list == null || list.size()<1){
                throw new Exception("未找到商品！");
            }

        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }
        req.setAttribute("good",list.get(0));
        if("".equals(errMsg)){
            if("update".equals(operate)){
                req.getRequestDispatcher("UpdateGoods.jsp").forward(req,resp);
            }else if("check".equals(operate)){
                req.getRequestDispatcher("CheckGood.jsp").forward(req,resp);
            }
        }else {
            PrintWriter out = resp.getWriter();
            out.println("<script type='text/javascript'>alert('"+errMsg+"');history.back();</script>");
        }
    }
}
