package com.k12.domain;

/**
 * Created by dwy on 2017/9/12.
 */
public class Tb_ShoppingItems {
    private int id;
    private int counts;
    private String username;
    private Tb_Product tb_product;
    private Tb_ShoppingCar tb_shoppingCar;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Tb_Product getTb_product() {
        return tb_product;
    }

    public void setTb_product(Tb_Product tb_product) {
        this.tb_product = tb_product;
    }

    public Tb_ShoppingCar getTb_shoppingCar() {
        return tb_shoppingCar;
    }

    public void setTb_shoppingCar(Tb_ShoppingCar tb_shoppingCar) {
        this.tb_shoppingCar = tb_shoppingCar;
    }

    @Override
    public String  toString() {
        return "Tb_ShoppingItems{" +
                "id=" + id +
                ", counts=" + counts +
                ", username='" + username + '\'' +
                ", tb_product=" + tb_product +
                ", tb_shoppingCar=" + tb_shoppingCar +
                '}';
    }
}
