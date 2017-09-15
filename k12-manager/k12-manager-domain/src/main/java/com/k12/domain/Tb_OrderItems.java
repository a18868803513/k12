package com.k12.domain;

/**
 * Created by dwy on 2017/9/13.
 */
public class Tb_OrderItems {
    private int id;
    private int counts;
    private Tb_Order tb_order;
    private Tb_Product tb_product;

    public Tb_Product getTb_product() {
        return tb_product;
    }

    public void setTb_product(Tb_Product tb_product) {
        this.tb_product = tb_product;
    }

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

    public Tb_Order getTb_order() {
        return tb_order;
    }

    public void setTb_order(Tb_Order tb_order) {
        this.tb_order = tb_order;
    }

    @Override
    public String toString() {
        return "Tb_OrderItems{" +
                "id=" + id +
                ", counts=" + counts +
                ", tb_order=" + tb_order +
                ", tb_product=" + tb_product +
                '}';
    }

    public Tb_OrderItems(int counts, Tb_Order tb_order, Tb_Product tb_product) {
        this.counts = counts;
        this.tb_order = tb_order;
        this.tb_product = tb_product;
    }

    public Tb_OrderItems() {
    }
}
