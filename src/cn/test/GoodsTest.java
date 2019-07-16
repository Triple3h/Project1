package cn.test;

import cn.dao.GoodsDao;
import cn.entity.Goods;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class GoodsTest {
    private GoodsDao gd;

    @Before
    public void init(){
        gd = new GoodsDao();
    }

    @Test
    public void test1(){
        Goods goods = new Goods();
        goods.setGoodsInfoDescription("三星");
        List<Goods> list = gd.findGoods(null);
        System.out.println(list);
    }

    @Test
    public void test2(){
        Goods goods = new Goods("打打",100.2,"desc",22,false);
        int rows = gd.addGoods(goods);
        System.out.println(rows);
    }
}
