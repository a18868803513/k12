package com.k12.domain;

/**
 * Created by dwy on 2017/9/11.
 */
public class Tb_ShoppingCar {
    private int id;
    private Tb_User tb_user;
    private int status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Tb_User getTb_user() {
        return tb_user;
    }

    public void setTb_user(Tb_User tb_user) {
        this.tb_user = tb_user;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
