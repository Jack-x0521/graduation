package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.util.List;
/**
 * 权限表，决定用户的具体操作
 *
 */
@TableName("gm_permission")
@Data
public class Permission {
	@TableId(value = "PermissionID",type = IdType.UUID)
	private String permissionId;
	/**
	 * 名称
	 */
    private String permissionName;
	/**
	 * 类型
	 */
	private String permissionType;
	/**
	 *  资源路径
	 */
	private String url;
	/**
	 *  权限字符串 如：employees:create,employees:update,employees:delete
	 */
	private String permissionMark;
	/**
	 * 父类Id
	 */
	private String parentId;
	/**
	 * 优先级
	 */
	private Integer priority;
	/**
	 * 是否启用
	 */
	private Integer available;
	/**
	 * 创建时间
	 */
	private String createTime;
	/**
	 * 最后一次修改时间
	 */
	private String lastTime;
	/**
	 * 权限下拥有的角色
	 */
	@TableField(exist = false)
	private List<Role> roles;

}