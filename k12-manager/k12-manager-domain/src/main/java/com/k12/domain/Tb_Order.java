package com.k12.domain;

import java.util.List;

/**
 * Created by dwy on 2017/9/13.
 */
public class Tb_Order {
    private int id;
    private String username;
    private int status;
    private String receiverAddress;
    private String receiverPhone;
    private int money;
    private String createTime;
    private List<Tb_OrderItems> tb_orderItemses;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
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

    @Override
    public String toString() {
        return "Tb_Order{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", status=" + status +
                ", receiverAddress='" + receiverAddress + '\'' +
                ", receiverPhone='" + receiverPhone + '\'' +
                ", money=" + money +
                ", createTime='" + createTime + '\'' +
                ", tb_orderItemses=" + tb_orderItemses +
                '}';
    }
}
