package com.k12.domain;

/**
 * Created by dwy on 2017/9/4.
 */
public class Tb_Product {
    private int id;
    private String name;
    private double price;
    private String img;
    private String instrudction;
    private int status;
    private int num;
    private String barcode;
    private Tb_Grade tb_grade;
    private Tb_Course tb_course;
    private String statusName;
    private String createTime;
    private String updateTime;
    private String grade;
    private String course;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
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



    public Tb_Grade getTb_grade() {
        return tb_grade;
    }

    public void setTb_grade(Tb_Grade tb_grade) {
        this.tb_grade = tb_grade;
    }

    public Tb_Course getTb_course() {
        return tb_course;
    }

    public void setTb_course(Tb_Course tb_course) {
        this.tb_course = tb_course;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getInstrudction() {
        return instrudction;
    }

    public void setInstrudction(String instrudction) {
        this.instrudction = instrudction;
    }


    @Override
    public String toString() {
        return "Tb_Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                ", instrudction='" + instrudction + '\'' +
                ", status=" + status +
                ", num=" + num +
                ", barcode='" + barcode + '\'' +
                ", tb_grade=" + tb_grade +
                ", tb_course=" + tb_course +
                ", statusName='" + statusName + '\'' +
                ", createTime='" + createTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", grade='" + grade + '\'' +
                ", course='" + course + '\'' +
                '}';
    }
}
