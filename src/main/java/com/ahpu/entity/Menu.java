package com.ahpu.entity;


import java.io.Serializable;

/**
 * 菜单基础类
 *
 *
 */
public class Menu implements Serializable {

    /**
     * 临时实体类，并没有表实体
     */
    private static final long serialVersionUID = 1L;
    private String menuId;                //菜单id
    protected String menuName;        //菜单名称
    private String perentMenuId;        //上级菜单ID
    private Menu perentMenu;        //上级菜单信息
    private String menuURL;            //菜单URL
    private boolean available;        //菜单是否可用
    private String menuDesc;        //菜单描述
    private String menuMark;

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getPerentMenuId() {
        return perentMenuId;
    }

    public void setPerentMenuId(String perentMenuId) {
        this.perentMenuId = perentMenuId;
    }

    public Menu getPerentMenu() {
        return perentMenu;
    }

    public void setPerentMenu(Menu perentMenu) {
        this.perentMenu = perentMenu;
    }

    public String getMenuURL() {
        return menuURL;
    }

    public void setMenuURL(String menuURL) {
        this.menuURL = menuURL;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public String getMenuDesc() {
        return menuDesc;
    }

    public void setMenuDesc(String menuDesc) {
        this.menuDesc = menuDesc;
    }

    public String getMenuMark() {
        return menuMark;
    }

    public void setMenuMark(String menuMark) {
        this.menuMark = menuMark;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "menuId='" + menuId + '\'' +
                ", menuName='" + menuName + '\'' +
                ", perentMenuId='" + perentMenuId + '\'' +
                ", perentMenu=" + perentMenu +
                ", menuURL='" + menuURL + '\'' +
                ", available=" + available +
                ", menuDesc='" + menuDesc + '\'' +
                ", menuMark='" + menuMark + '\'' +
                '}';
    }
}
