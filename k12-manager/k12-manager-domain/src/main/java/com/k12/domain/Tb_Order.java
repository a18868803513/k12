package com.k12.domain;

import java.util.List;

/**
 * Created by dwy on 2017/9/13.
 */
public class Tb_Order {
    private int id;
    private String no;
    private String receiverName;
    private int status;
    private String receiverAddress;
    private String receiverPhone;
    private double money;
    private String createTime;
    private Tb_User tb_user;
    private List<Tb_OrderItems> tb_orderItemses;

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverPhone() {
        return receiverPhone;
    }

    public void setReceiverPhone(String receiverPhone) {
        this.receiverPhone = receiverPhone;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public List<Tb_OrderItems> getTb_orderItemses() {
        return tb_orderItemses;
    }

    public void setTb_orderItemses(List<Tb_OrderItems> tb_orderItemses) {
        this.tb_orderItemses = tb_orderItemses;
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }

    public Tb_User getTb_user() {
        return tb_user;
    }

    public void setTb_user(Tb_User tb_user) {
        this.tb_user = tb_user;
    }

    @Override
    public String toString() {
        return "Tb_Order{" +
                "id=" + id +
                ", receiverName='" + receiverName + '\'' +
                ", status=" + status +
                ", receiverAddress='" + receiverAddress + '\'' +
                ", receiverPhone='" + receiverPhone + '\'' +
                ", money=" + money +
                ", createTime='" + createTime + '\'' +
                ", tb_user=" + tb_user +
                ", tb_orderItemses=" + tb_orderItemses +
                '}';
    }
}
