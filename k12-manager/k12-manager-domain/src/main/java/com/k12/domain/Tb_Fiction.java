package com.k12.domain;

/**小说的实体类
 * Created by LB on 2017/9/12.
 */
public class Tb_Fiction {
    private Long id;
    private String title;//小说卷宗
    private String content;
    private Tb_Headline headline;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public Tb_Headline getHeadline() {
        return headline;
    }

    public void setHeadline(Tb_Headline headline) {
        this.headline = headline;
    }
}
