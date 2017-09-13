package com.k12.domain;

import java.util.List;

/**
 * Created by dwy on 2017/9/11.
 */
public class Tb_ShoppingCar {
    private int id;
    private Tb_User tb_user;
    private List<Tb_ShoppingItems> itemses;
    private int status;

    public List<Tb_ShoppingItems> getItemses() {
        return itemses;
    }

    public void setItemses(List<Tb_ShoppingItems> itemses) {
        this.itemses = itemses;
    }

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
