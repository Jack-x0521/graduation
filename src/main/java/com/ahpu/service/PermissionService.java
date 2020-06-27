package com.ahpu.service;


import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Menu;
import com.ahpu.entity.Permission;
import com.ahpu.entity.SubSystemInfo;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 权限service接口
 */
public interface PermissionService {
    /**
     * 根 据UserId获取菜单信息
     *
     */
    Map<String, LinkedHashMap<String, List<Menu>>> getMenuInfoByUserId(String userId);

    /**
     * 根据userId获取子系统详细信息
     *
     */
    List<SubSystemInfo> getSubSystemInfoByUserId(String userId);

    List<SubSystemInfo> getSubSystemInfo();

    /**
     * 查找所有权限资源
     *
     */
    List<Permission> getPermissionList();

    /**
     * 通过角色Id查询资源集合
     *
     */
    List<Permission> getPermissionListByRoleId(String roleId);

    /**
     * 得到角色下没有的权限列表
     *
     */
    List<Permission> getPermissionListForRole(String permissionType, String permissionName, String roleId);

    /**
     * 分配权限
     *
     */
    boolean allotPermission(String ids, String roleId);

    /**
     * 删除角色下的权限
     *
     */
    boolean delPermission(String permissionId, String roleId);

    /**
     * 根据父类id得到子类集合以及子类的子类集合,并封装成前台树型所需的数据结构
     *
     */
    List<Map<String, Object>> getMenuByParentId(String id);

    /**
     * 根据父类id得到子类集合
     *
     */
    Page<Permission> getPermissionByParentId(String id, int page, int limit);

    /**
     * 通过主键查询
     *
     */
    Permission getPermissionById(String id);

    /**
     * 新增资源
     *
     */
    boolean insert(Permission permission);

    /**
     * 删除资源,并删除该资源所对应的所有权限
     *
     */
    boolean delete(String id);
}
