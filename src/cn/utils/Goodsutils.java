package cn.utils;

import cn.entity.Goods;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

public class Goodsutils {

    public static Goods getGoodsByNormalForm(HttpServletRequest req) throws Exception {
        int gid = Integer.parseInt(req.getParameter("gid"));
        String goodsInfoName = req.getParameter("goodsInfoName");
        double goodsInfoPrice;
        String goodsInfoDescription = req.getParameter("goodsInfoDescription");
        int goodsInfoStock;
        int flag = Integer.parseInt(req.getParameter("flag"));
        String goodsInfoPic = req.getParameter("goodsInfoPic");

        //包装类空串排除
        String price = req.getParameter("goodsInfoPrice");
        if (price == null || "".equals(price)) {
            throw new Exception("价格不能为空！");
        } else {
            goodsInfoPrice = Double.parseDouble(price);
        }

        String stock = req.getParameter("goodsInfoStock");
        if (stock == null || "".equals(stock)) {
            throw new Exception("库存不能为空！");
        } else {
            goodsInfoStock = Integer.parseInt(stock);
        }

        if(gid <= 0 )
            throw new Exception("商品编号有误！");

        if(goodsInfoName == null || "".equals(goodsInfoName)
                || goodsInfoPrice <= 0 || goodsInfoDescription == null || "".equals(goodsInfoDescription)
                || goodsInfoStock <= 0 )
            throw new Exception("输入信息有误！");

        Goods goods = new Goods();

        goods.setGid(gid);
        goods.setGoodsInfoName(goodsInfoName);
        goods.setGoodsInfoPrice(goodsInfoPrice);
        goods.setGoodsInfoDescription(goodsInfoDescription);
        goods.setGoodsInfoStock(goodsInfoStock);
        goods.setGoodsInfoPic(goodsInfoPic);

        if(flag==1){
            goods.setFlag(true);
        }else {
            goods.setFlag(false);
        }
        System.out.println(goods);
        return goods;
    }

    public static Goods uploadGoodsFile(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        Goods goods = new Goods();

        boolean isMultipart = ServletFileUpload.isMultipartContent(req);
        if (isMultipart) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            List<FileItem> fileItemList = upload.parseRequest(req);

            if (fileItemList != null && fileItemList.size() > 0) {
                for (FileItem fileItem : fileItemList) {
                    if (fileItem.isFormField()) {
                        if ("gid".equals(fileItem.getFieldName()))
                            goods.setGid(Integer.parseInt(fileItem.getString()));
                        if ("goodsInfoName".equals(fileItem.getFieldName()))
                            goods.setGoodsInfoName(fileItem.getString("utf-8"));
                        else if ("goodsInfoPrice".equals(fileItem.getFieldName())) {
                            String price = fileItem.getString();
                            if (price == null || "".equals(price)) {
                                throw new Exception("价格不能为空！");
                            } else {
                                goods.setGoodsInfoPrice(Double.parseDouble(price));
                            }
                        } else if ("goodsInfoDescription".equals(fileItem.getFieldName())) {
                            goods.setGoodsInfoDescription(fileItem.getString("utf-8"));
                        } else if ("goodsInfoStock".equals(fileItem.getFieldName())) {
                            String stock = fileItem.getString();
                            if (stock == null || "".equals(stock)) {
                                throw new Exception("库存不能为空！");
                            } else {
                                goods.setGoodsInfoStock(Integer.parseInt(stock));
                            }
                        }
                    } else {
                        String fileName = fileItem.getName();
                        if(fileName==null || "".equals(fileName))
                            continue;
                        String parentPath = req.getServletContext().getRealPath("/upload");

                        File parentFile = new File(parentPath);

                        if(!parentFile.exists()) parentFile.mkdirs();

                        File newFile = new File(parentFile,fileName);

                        InputStream is = fileItem.getInputStream();
                        OutputStream os = new FileOutputStream(newFile);

                        IOUtils.copy(is,os);

                        os.close();
                        is.close();

                        goods.setGoodsInfoPic(fileName);
                    }
                }
            }

        } else {
            int gid = Integer.parseInt(req.getParameter("gid"));
            String goodsInfoName = req.getParameter("goodsInfoName");
            double goodsInfoPrice;
            String goodsInfoDescription = req.getParameter("goodsInfoDescription");
            int goodsInfoStock;
            int flag = Integer.parseInt(req.getParameter("flag"));
            String goodsInfoPic = req.getParameter("goodsInfoPic");

            //包装类空串排除
            String price = req.getParameter("goodsInfoPrice");
            if (price == null || "".equals(price)) {
                throw new Exception("价格不能为空！");
            } else {
                goodsInfoPrice = Double.parseDouble(price);
            }

            String stock = req.getParameter("goodsInfoStock");
            if (stock == null || "".equals(stock)) {
                throw new Exception("库存不能为空！");
            } else {
                goodsInfoStock = Integer.parseInt(stock);
            }

            if(gid <= 0 )
                throw new Exception("商品编号有误！");

            if(goodsInfoName == null || "".equals(goodsInfoName)
                    || goodsInfoPrice <= 0 || goodsInfoDescription == null || "".equals(goodsInfoDescription)
                    || goodsInfoStock <= 0 )
                throw new Exception("输入信息有误！");

            goods.setGid(gid);
            goods.setGoodsInfoName(goodsInfoName);
            goods.setGoodsInfoPrice(goodsInfoPrice);
            goods.setGoodsInfoDescription(goodsInfoDescription);
            goods.setGoodsInfoStock(goodsInfoStock);
            goods.setGoodsInfoPic(goodsInfoPic);

            if(flag==1){
                goods.setFlag(true);
            }else {
                goods.setFlag(false);
            }
            System.out.println(goods);
        }
        return goods;
    }


}
