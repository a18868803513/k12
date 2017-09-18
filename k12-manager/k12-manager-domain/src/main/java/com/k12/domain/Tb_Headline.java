package com.k12.domain;

/**
 * Created by LB on 2017/9/14.
 */
public class Tb_Headline {
    private  int  id;
    private  String novelTitle;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNovelTitle() {
        return novelTitle;
    }

    public void setNovelTitle(String novelTitle) {
        this.novelTitle = novelTitle;
    }

    @Override
    public String toString() {
        return "Tb_Headline{" +
                "id=" + id +
                ", novelTitle='" + novelTitle + '\'' +
                '}';
    }
}

