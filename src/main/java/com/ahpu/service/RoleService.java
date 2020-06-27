package com.ahpu.service;

import com.ahpu.entity.Role;

import java.util.List;

public interface RoleService {
    /**
     * 通用查询
     *
     */
    List<Role> selectSysRole(Role role);

    /**
     * 根据主键id查询
     *
     */
    Role selectByPrimaryKey(String id);

    /**
     * 新增
     *
     */
    boolean insert(Role role);

    /**
     * 修改
     *
     */
    boolean updateByPrimaryKey(Role role);

    /**
     * 删除
     *
     */
    boolean deleteByPrimaryKey(int id);

    /**
     * 分配角色
     *
     */
    boolean allotRole(String userIds, String roleId);

    /**
     * 删除角色下的用户
     *
     */
    boolean delUser(String userId, String roleId);

    /**
     * 得到所有角色,没有条件
     *
     */
    List<Role> getRoleList();

}
