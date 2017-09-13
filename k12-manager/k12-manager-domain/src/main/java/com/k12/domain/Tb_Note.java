package com.k12.domain;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public class Tb_Note {
    private int NoteID;
    private String title;
    private String content;
    private String createTime;
    private int authorId;

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


    public int getNoteID() {

        return NoteID;
    }

    public void setNoteID(int noteID) {
        NoteID = noteID;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    @Override
    public String toString() {
        return "Tb_Note{" +
                "NoteID=" + NoteID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime='" + createTime + '\'' +
                ", authorId=" + authorId +
                '}';
    }
}
