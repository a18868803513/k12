package com.k12.domain;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public class Tb_Reversion {
    private int noteID;
    private Tb_User user;
    private String content;
    private int floor;

    public Tb_User getUser() {
        return user;
    }

    public void setUser(Tb_User user) {
        this.user = user;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getNoteID() {
        return noteID;
    }

    public void setNoteID(int noteID) {
        this.noteID = noteID;
    }
}
