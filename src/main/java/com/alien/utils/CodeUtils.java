package com.alien.utils;

import java.util.Random;

/**
 * 码生产规则
 */
public class CodeUtils {

    /** 自定义进制(0,1没有加入,容易与o,l混淆) */
    private static final char[] r =new char[]{'3','4','5','7','9','Q','W','E','R','T','U','P','A','S','D','F','H','J','K','L','X','N','M'};
    /** (不能与自定义进制有重复) */
    private static final char b='C';

    /** 进制长度 */
    private static final int binLen=r.length;

    /** 序列最小长度 */
    private static final int s=6;

    /**
     * 根据ID生成六位随机码
     * @param id ID
     * @return 随机码
     */
    public static String toSerialCode(long id) {
        char[] buf=new char[32];
        int charPos=32;

        while((id / binLen) > 0) {
            int ind=(int)(id % binLen);
            // System.out.println(num + "-->" + ind);
            buf[--charPos]=r[ind];
            id /= binLen;
        }
        buf[--charPos]=r[(int)(id % binLen)];
        String str=new String(buf, charPos, (32 - charPos));
        // 不够长度的自动随机补全
        if(str.length() < s) {
            StringBuilder sb=new StringBuilder();
            sb.append(b);
            Random rnd=new Random();
            for(int i=1; i < s - str.length(); i++) {
                sb.append(r[rnd.nextInt(binLen)]);
            }
            str+=sb.toString();
        }
        return str;
    }

    public static long codeToId(String code) {
        char chs[]=code.toCharArray();
        long res=0L;
        for(int i=0; i < chs.length; i++) {
            int ind=0;
            for(int j=0; j < binLen; j++) {
                if(chs[i] == r[j]) {
                    ind=j;
                    break;
                }
            }
            if(chs[i] == b) {
                break;
            }
            if(i > 0) {
                res=res * binLen + ind;
            } else {
                res=ind;
            }
            // System.out.println(ind + "-->" + res);
        }
        return res;
    }

/**
 *合同生成规则:
 *
 * （其中数字去除0、2、6、1、8；英文字母去除掉O，Z， Y，G，I，B）
 */
    /** 自定义进制（其中数字去除0、2、6、1、8；英文字母去除掉O，Z， Y，G，I，B) */
    private static final char[] member_r=new char[]{'3','4','5','7','9','Z','Q','W','E','R','T','U','P','A','D','F','H','J','K','L','X','N','M'};

    /** (不能与自定义进制有重复) */
    private static final char c='V';

    /** 序列最小长度 */
    private static final int member_length=8;

    public static String createCode(String date) {
        int i;
        int count = 0;
        StringBuffer sb = new StringBuffer();
        sb.append(date);
        Random rnd = new Random();
        while (count < member_length) {
            i = Math.abs(rnd.nextInt(binLen));
            if (i >= 0 && i < member_r.length) {
                sb.append(member_r[i]);
                count++;
            }
        }
        return sb.toString();
    }

}
