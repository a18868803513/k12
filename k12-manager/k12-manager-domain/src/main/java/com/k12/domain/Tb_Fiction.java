package com.k12.domain;

/**小说的实体类
 * Created by LB on 2017/9/12.
 */
public class Tb_Fiction {
    private String id;
    private String title;//小说卷宗
    private String content;
    private String url;
    private String nextUrl;
    private String headline;//小说标题

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getNextUrl() {
        return nextUrl;
    }

    public void setNextUrl(String nextUrl) {
        this.nextUrl = nextUrl;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    @Override
    public String toString() {
        return "Tb_Fiction{" +
                "id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", url='" + url + '\'' +
                ", nextUrl='" + nextUrl + '\'' +
                ", headline='" + headline + '\'' +
                '}';
    }
}
