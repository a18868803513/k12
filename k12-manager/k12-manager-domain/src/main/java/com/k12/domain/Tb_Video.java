package com.k12.domain;

/**
 * Created by LB on 2017/9/2.
 */
public class Tb_Video {
    private int id;
    private  String name;
    private  String url;
    private  String introduction;//视频描述
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
