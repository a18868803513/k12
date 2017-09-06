package com.k12.utils;

/**
 * Created by Administrator on 2017/9/5/005.
 */
public class isChinese {
    public static boolean isChinese(String string){
        int n = 0;
        for(int i = 0; i < string.length(); i++) {
            n = (int)string.charAt(i);
            if(!(19968 <= n && n <40869)) {
                return false;
            }
        }
        return true;
    }
}
