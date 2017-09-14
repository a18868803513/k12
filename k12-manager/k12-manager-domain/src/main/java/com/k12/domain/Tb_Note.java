package com.k12.domain;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public class Tb_Note {
    private int noteID;
    private String title;
    private String content;
    private String createTime;
    private Tb_User user;

    public int getNoteID() {
        return noteID;
    }

    public void setNoteID(int noteID) {
        this.noteID = noteID;
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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }


    public Tb_User getUser() {
        return user;
    }

    public void setUser(Tb_User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Tb_Note{" +
                "noteID=" + noteID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime='" + createTime + '\'' +
                ", user=" + user +
                '}';
    }
}
