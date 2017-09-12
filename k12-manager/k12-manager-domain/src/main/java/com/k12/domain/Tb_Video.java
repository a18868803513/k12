package com.k12.domain;

/**
 * Created by LB on 2017/9/2.
 */
public class Tb_Video {
    private int id;
    private  String name;
    private  String url;
    private  String introduction;//视频描述
    private  int status;
    private String statusName;//status的别名
    private String createTime;
    private String updateTime;
    private String imgpath;
    private int gid;
    private int cid;

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getImgpath() {
        return imgpath;
    }

    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    private  Tb_Course course;
    private Tb_Grade  grade;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public Tb_Course getCourse() {
        return course;
    }

    public void setCourse(Tb_Course course) {
        this.course = course;
    }

    public Tb_Grade getGrade() {
        return grade;
    }

    public void setGrade(Tb_Grade grade) {
        this.grade = grade;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Tb_Video{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", introduction='" + introduction + '\'' +
                ", course=" + course +
                ", grade=" + grade +
                '}';
    }
}
