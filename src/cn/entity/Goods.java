package cn.entity;

public class Goods {
    private int gid;
    private String goodsInfoName;
    private String goodsInfoPic;
    private double goodsInfoPrice;
    private String goodsInfoDescription;
    private int goodsInfoStock;
    private boolean flag;

    public Goods(int gid, String goodsInfoName, String goodsInfoPic, double goodsInfoPrice, String goodsInfoDescription, int goodsInfoStock, boolean flag) {
        this.gid = gid;
        this.goodsInfoName = goodsInfoName;
        this.goodsInfoPic = goodsInfoPic;
        this.goodsInfoPrice = goodsInfoPrice;
        this.goodsInfoDescription = goodsInfoDescription;
        this.goodsInfoStock = goodsInfoStock;
        this.flag = flag;
    }

    public Goods(String goodsInfoName, double goodsInfoPrice, String goodsInfoDescription, int goodsInfoStock, boolean flag) {
        this.goodsInfoName = goodsInfoName;
        this.goodsInfoPrice = goodsInfoPrice;
        this.goodsInfoDescription = goodsInfoDescription;
        this.goodsInfoStock = goodsInfoStock;
        this.flag = flag;
    }

    public Goods(int gid, String goodsInfoName, double goodsInfoPrice, String goodsInfoDescription, int goodsInfoStock, boolean flag) {
        this.gid = gid;
        this.goodsInfoName = goodsInfoName;
        this.goodsInfoPrice = goodsInfoPrice;
        this.goodsInfoDescription = goodsInfoDescription;
        this.goodsInfoStock = goodsInfoStock;
        this.flag = flag;
    }

    public Goods() {
    }

    public Goods(int gid) {
        this.gid = gid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGoodsInfoName() {
        return goodsInfoName;
    }

    public void setGoodsInfoName(String goodsInfoName) {
        this.goodsInfoName = goodsInfoName;
    }

    public String getGoodsInfoPic() {
        return goodsInfoPic;
    }

    public void setGoodsInfoPic(String goodsInfoPic) {
        this.goodsInfoPic = goodsInfoPic;
    }

    public double getGoodsInfoPrice() {
        return goodsInfoPrice;
    }

    public void setGoodsInfoPrice(double goodsInfoPrice) {
        this.goodsInfoPrice = goodsInfoPrice;
    }

    public String getGoodsInfoDescription() {
        return goodsInfoDescription;
    }

    public void setGoodsInfoDescription(String goodsInfoDescription) {
        this.goodsInfoDescription = goodsInfoDescription;
    }

    public int getGoodsInfoStock() {
        return goodsInfoStock;
    }

    public void setGoodsInfoStock(int goodsInfoStock) {
        this.goodsInfoStock = goodsInfoStock;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", goodsInfoName='" + goodsInfoName + '\'' +
                ", goodsInfoPrice=" + goodsInfoPrice +
                ", goodsInfoDescription='" + goodsInfoDescription + '\'' +
                ", goodsInfoStock=" + goodsInfoStock +
                ", flag=" + flag +
                '}';
    }
}
