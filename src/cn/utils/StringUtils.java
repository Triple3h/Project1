package cn.utils;

public class StringUtils {
    public static boolean isNotNull(String str){
        return str!=null && !"".equals(str);
    }

    public static Integer str2Int(String str,Integer defValue,boolean isThrow){
        if(isNotNull(str)){
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                if(isThrow) throw e;
            }
        }
        return defValue;
    }

}
