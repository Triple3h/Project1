package cn.utils;

import cn.entity.Goods;

import javax.servlet.http.HttpServletRequest;

public class Goodsutils {

    public static Goods getGoodsByNormalForm(HttpServletRequest req) throws Exception {

        Goods goods = new Goods();

        goods.setGoodsInfoName(req.getParameter("goodsInfoName"));
        goods.setGoodsInfoDescription(req.getParameter("goodsInfoDescription"));
        goods.setFlag(Boolean.parseBoolean(req.getParameter("flag")));

        String price = req.getParameter("goodsInfoPrice");
        if(price == null || "".equals(price)) {
            throw new Exception("价格不能为空！");
        }else {
            goods.setGoodsInfoPrice(Double.parseDouble(price));
        }

        String stock = req.getParameter("goodsInfoStock");
        if(stock == null || "".equals(stock)) {
            throw new Exception("库存不能为空！");
        }else {
            goods.setGoodsInfoStock(Integer.parseInt(stock));
        }
        return goods;
    }
}
