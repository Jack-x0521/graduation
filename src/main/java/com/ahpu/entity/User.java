package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 用户实体类
 *
 *
 */
@Data
@TableName("gm_user")
public class User implements Serializable {
    /**
     * 自增长主键，默认ID为1的账号为超级管理员
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 注册的昵称
     */
    private String userName;
    /**
     * 登录时的密码，不持久化到数据库
     */
    @TableField(exist = false)
    private String plainPassword;
    /**
     * 加密后的密码
     */
    private String password;

    /**
     * 手机号
     */
    private String iphone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 用户注册时间
     */
    private String createdDate;
    /**
     * 用户最后一次登录时间
     */
    private String updatedDate;
    /**
     * 一个用户拥有多个角色
     */
    @TableField(exist = false)
    private List<Role> roleList;
    @TableField(exist = false)
    private String role;
    /**
     * 用户状态，0表示用户已删除
     */
    private Integer status;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 地址
     */
    private String address;
    /**
     * 性别
     */
    private String sex;
    /**
     * 头像
     */
    private String imgUrl;

}