package cn.dao;

import cn.entity.Goods;
import cn.utils.JDBCutils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsDao {
    //查询Goods
    public List<Goods> findGoods(Goods gds){
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;
        List<Goods> goodsList = new ArrayList<>();

        try {
            conn = JDBCutils.getConnection();

            StringBuffer sf = new StringBuffer();
            List<Object> list = new ArrayList<>();

            sf.append("select *from goodsinfo where 1=1 ");
            if(gds!=null){
                if(gds.getGid()!=0){
                    sf.append("and gid = ?");
                    list.add(gds.getGid());
                }
                if(gds.getGoodsInfoName()!=null){
                    sf.append("and goodsInfo_name like ?");
                    list.add("%"+gds.getGoodsInfoName()+"%");
                }
                if(gds.getGoodsInfoDescription()!=null){
                    sf.append("and goodsInfo_description like ?");
                    list.add("%"+gds.getGoodsInfoDescription()+"%");
                }
            }

            sta = conn.prepareStatement(sf.toString());

            if(list!=null && list.size()>0){
                for(int i=0;i<list.size();i++){
                    sta.setObject(i+1,list.get(i));
                }
            }
            rs = sta.executeQuery();

            while (rs.next()){
                Goods goods = new Goods();

                goods.setGid(rs.getInt("gid"));
                goods.setGoodsInfoName(rs.getString("goodsInfo_name"));
//                goods.setGoodsInfoPic(rs.getString("setGoodsInfo_pic"));
                goods.setGoodsInfoPrice(rs.getDouble("goodsInfo_price"));
                goods.setGoodsInfoDescription(rs.getString("goodsInfo_description"));
                goods.setGoodsInfoStock(rs.getInt("goods_stock"));
                goods.setFlag(rs.getBoolean("flag"));

                goodsList.add(goods);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCutils.closeAll(conn,sta,rs);
        }
        return goodsList;
    }

    //删、改、查整合
    public int executeUpdate(String sql,List<Object> list){
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        try {
            conn = JDBCutils.getConnection();
            sta = conn.prepareStatement(sql);

            if(list!=null && list.size()>0){
                for(int i=0;i<list.size();i++){
                    sta.setObject(i+1,list.get(i));
                }
            }

            int rows = sta.executeUpdate();
            return rows;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCutils.closeAll(conn,sta,rs);
        }
        return 0;
    }

    //增
    public int addGoods(Goods goods){
        //`goodsInfo_name``goodsInfo_pic``goodsInfo_price`
        // `goodsInfo_description``goods_stock``flag`
        String sql = "insert into goodsinfo (goodsInfo_name,goodsInfo_price," +
                "goodsInfo_description,goods_stock,flag) values(?,?,?,?,?)";
        List<Object> list = new ArrayList<>();
        if(goods!=null){
            list.add(goods.getGoodsInfoName());
            list.add(goods.getGoodsInfoPrice());
            list.add(goods.getGoodsInfoDescription());
            list.add(goods.getGoodsInfoStock());
            list.add(goods.isFlag());
        }
        return this.executeUpdate(sql,list);
    }

    //删
    public int deleteGoods(Goods goods){
        //`goodsInfo_name``goodsInfo_pic``goodsInfo_price`
        // `goodsInfo_description``goods_stock``flag`
        String sql = "delete from goodsinfo where gid = ?";
        List<Object> list = new ArrayList<>();
        if(goods!=null){
            list.add(goods.getGid());
        }
        return this.executeUpdate(sql,list);
    }

    //改
    public int updateGoods(Goods goods) {
        //`goodsInfo_name``goodsInfo_pic``goodsInfo_price`
        // `goodsInfo_description``goods_stock``flag`
        String sql = "update goodsinfo set goodsInfo_name =?,goodsInfo_price =?," +
                "goodsInfo_description =?,goods_stock =?,flag =? where gid = ?";
        List<Object> list = new ArrayList<>();
        if (goods != null) {
            list.add(goods.getGoodsInfoName());
            list.add(goods.getGoodsInfoPrice());
            list.add(goods.getGoodsInfoDescription());
            list.add(goods.getGoodsInfoStock());
            list.add(goods.isFlag());
            list.add(goods.getGid());
        }
        return this.executeUpdate(sql, list);
    }
}

