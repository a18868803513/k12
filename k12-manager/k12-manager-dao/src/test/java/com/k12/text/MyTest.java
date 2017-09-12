package com.k12.text;

import com.k12.utils.Article;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.junit.Test;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class MyTest {
    public static void main(String args[]) throws IOException {
        String startUrl = "http://read.qidian.com/chapter/ia-u3DXBy9B7DVpbqm07HA2/TuCGfeMZgTJMs5iq0oQwLQ2";
        /*Document doc = Jsoup.parseBodyFragment(startUrl);
        System.out.println(doc);*/
       /* Document doc=Jsoup.parse(startUrl);
        Element body=doc.body();
        System.out.println(body);*/
/*        Document doc = Jsoup.connect("http://www.bxwx.org/b/5/5131/832883.html").data("query", "Java")
                .userAgent("Mozilla")
                .cookie("auth", "token")
                .timeout(3000)
                .post();*/
        Document doc = Jsoup.connect("http://read.qidian.com/chapter/ia-u3DXBy9B7DVpbqm07HA2/TuCGfeMZgTJMs5iq0oQwLQ2").get();
        Document doc1=Jsoup.connect("http://www.youku.com/").get();
        System.out.println(doc1);
       /* System.out.println("============标题===="+doc.title());
        System.out.println(doc.select("a#j_chapterPrev").attr("href"));*/
       /* System.out.println(doc);*/

       /* System.out.println( doc.getElementsByClass("read-content j_readContent"));*/
 /*     String title = doc.title();
        System.out.println(title);
        System.out.println(doc.getElementById("content"));*/
    }
    @Test
    public  void text1() throws IOException {
        String startUrl = "http://www.bxwx.org/b/5/5131/832883.html";
        Article article = getArticle(startUrl);
        while(article.getNextUrl() != null && article.getContent() != null && !article.getId().equals("996627")) {
            Document doc = Jsoup.connect(startUrl).timeout(5000).get();
            System.out.println(doc.getElementById("title").text());
            System.out.println(doc.getElementById("content").text());
            Element ul = doc.select("ul").first();
            String regex = "<li><a href=\"(.*?)\">下一页<\\/a><\\/li>";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(ul.toString());
            System.out.println(matcher.find());
            System.out.println(matcher.group());
            Document nextDoc = Jsoup.parse(matcher.group());
            Element href = nextDoc.select("a").first();
            System.out.println(href.attr("href"));
            article.setContent(doc.getElementById("content").text());
            article.setId(href.attr("href"));
            article.setTitle(doc.getElementById("title").text());
            article.setUrl(startUrl);
            startUrl="http://www.bxwx.org/b/5/5131/"+href.attr("href");
            article.setNextUrl(startUrl);
            article = getArticle(startUrl);
        }

    }
    public static Document getDocument(String url){
        Document doc = null;
        try {
            doc = Jsoup.connect(url).timeout(5000).get();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return doc;
    }
    /**
     * 根据获取的Document对象找到章节标题
     * @param doc
     * @return 标题
     */
    public static String getTitle(Document doc){
        return doc.getElementById("newstitle").val();
    }

    /**
     * 根据获取的Document对象找到小说内容
     * @param doc
     * @return 内容
     */
    public static String getContent(Document doc){
        if(doc.getElementById("left_zw") != null){
            return doc.getElementById("left_zw").text();
        }else{
            return null;
        }

    }
    /**
     * 根据获取的Document对象找到下一章的Url地址
     * @param doc
     * @return 下一章Url
     */
    public static String getNextUrl(Document doc){
        Element ul = doc.select("ul").first();
        String regex = "<li><a href=\"(.*?)\">下一页<\\/a><\\/li>";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(ul.toString());
        Document nextDoc = null;
        if (matcher.find()) {
            nextDoc = Jsoup.parse(matcher.group());
            Element href = nextDoc.select("a").first();
            return "http://www.bxwx.org/b/5/5131/" + href.attr("href");
        }else{
            return null;
        }


    }

    /**
     * 根据url获取id
     * @param url
     * @return id
     */
    public static String getId(String url){
        String urlSpilts[] = url.split("/");
        return (urlSpilts[urlSpilts.length - 1]).split("\\.")[0];
    }

    /**
     * 根据小说的Url获取一个Article对象
     * @param url
     * @return
     */
    public static Article getArticle(String url){
        Article article = new Article();
        article.setUrl(url);
        Document doc = getDocument(url);
        article.setId(getId(url));
        article.setTitle(getTitle(doc));
        article.setNextUrl(getNextUrl(doc));
        article.setContent(getContent(doc));
        return article;
    }
}
