package cn.servlet;

import cn.dao.GoodsDao;
import cn.entity.Goods;

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
        String goodsInfoName = req.getParameter("goodsInfoName");
        double goodsInfoPrice;
        String goodsInfoDescription = req.getParameter("goodsInfoDescription");
        int goodsInfoStock;
//        String goodsInfoPic = req.getParameter("goodsInfoPic");
        int flag = Integer.parseInt(req.getParameter("flag"));
        //缺少图片

        String errMsg = "";
        int rows = 0;
        try {

            //包装类空串排除
            String price = req.getParameter("goodsInfoPrice");
            if(price == null || "".equals(price)) {
                throw new Exception("价格不能为空！");
            }else {
                goodsInfoPrice = Double.parseDouble(price);
            }

            String stock = req.getParameter("goodsInfoStock");
            if(stock == null || "".equals(stock)) {
                throw new Exception("库存不能为空！");
            }else {
                goodsInfoStock = Integer.parseInt(stock);
            }

            if(goodsInfoName == null || "".equals(goodsInfoName)
                || goodsInfoPrice <= 0 || goodsInfoDescription == null || "".equals(goodsInfoDescription)
                || goodsInfoStock <= 0 )
                throw new Exception("输入信息有误！");
            //少图片判断

            GoodsDao goodsDao = new GoodsDao();
            Goods goods = new Goods();

            goods.setGoodsInfoName(goodsInfoName);
            goods.setGoodsInfoPrice(goodsInfoPrice);
            goods.setGoodsInfoDescription(goodsInfoDescription);
            goods.setGoodsInfoStock(goodsInfoStock);

            if(flag==1){
                goods.setFlag(true);
            }else {
                goods.setFlag(false);
            }

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
