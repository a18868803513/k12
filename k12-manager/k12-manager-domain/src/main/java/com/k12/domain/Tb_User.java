package com.k12.domain;

import java.util.List;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public class Tb_User {
    private int id;
    private String username;
    private String password;
    private int status;
    private int role;
    private String tel;
    private String email;
    private String registertime;
    private String lastlogintime;
    private Tb_ShoppingCar shoppingCar;
    private List<Tb_Order> tb_orders;

    public List<Tb_Order> getTb_orders() {
        return tb_orders;
    }

    public void setTb_orders(List<Tb_Order> tb_orders) {
        this.tb_orders = tb_orders;
    }

    public Tb_ShoppingCar getShoppingCar() {
        return shoppingCar;
    }

    public void setShoppingCar(Tb_ShoppingCar shoppingCar) {
        this.shoppingCar = shoppingCar;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public String getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(String lastlogintime) {
        this.lastlogintime = lastlogintime;
    }

    @Override
    public String toString() {
        return "Tb_User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", status=" + status +
                ", role=" + role +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", registertime='" + registertime + '\'' +
                ", lastlogintime='" + lastlogintime + '\'' +
                ", shoppingCar=" + shoppingCar +
                '}';
    }
}
