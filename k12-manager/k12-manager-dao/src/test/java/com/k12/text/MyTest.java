package com.k12.text;

import com.k12.utils.Article;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.junit.Test;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class MyTest {
    public static void main(String args[]) throws IOException {


        Document doc = Jsoup.connect("http://ask.rednet.cn/question/132373").get();
        System.out.println(doc);
        /*System.out.println( doc.getElementsByClass("read-content j_readContent"));*/


    }

}
