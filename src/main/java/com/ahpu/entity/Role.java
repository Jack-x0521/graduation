package com.ahpu.entity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 角色表，决定用户可以访问的页面
 *
 */
@Data
@TableName("gm_role")
public class Role implements Serializable {
    @TableId(value = "id",type = IdType.UUID)
	private String id;
	/**
	 * 角色
	 */
	private String role;
	/**
	 * 角色描述
	 */
	private String description;
	/**
	 * 角色中的权限
	 */
	@TableField(exist = false)
	private List<Permission> permissions;
	/**
	 * 用户 - 角色关系
	 */
	@TableField(exist = false)
    private List<User> users;
}