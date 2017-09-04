package com.k12.domain;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class Tb_Course {
    private int id;
    private String course;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "Tb_Course{" +
                "id=" + id +
                ", course='" + course + '\'' +
                '}';
    }
}
