package com.ahpu.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.ahpu.entity.Menu;
import com.ahpu.entity.Permission;
import com.ahpu.entity.SubSystemInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 权限操作
 *
 */
@Mapper
public interface PermissionMapper extends BaseMapper<Permission> {

    /**
     * 根据UserId获取菜单信息
     *
     */
    List<Menu> getMenuInfoByUserId(String userId);

    /**
     *  userId
     *
     */
    List<SubSystemInfo> getSubSystemInfoByUserId(@Param(value = "userId") String userId);
    List<SubSystemInfo> getSubSystemInfo();
    /**
     * 根据角色查找所有权限
     *
     *
     */
    List<Permission> selectPermissionByRoleId(@Param(value = "roleId") String roleId);

    /**
     * 分配权限
     *
     *
     */
    int allotPermission(@Param(value = "roleId") String roleId, @Param(value = "permissionId") String permissionId);

    /**
     * 删除角色下的权限
     *
     * @param permissionId
     *
     */
    int delPermission(@Param(value = "permissionId") String permissionId, @Param(value = "roleId") String roleId);

    /**
     * 根据权限id删除所有其权限的赋予
     *
     */
    int delPermissionByPermissionId(@Param(value = "permissionId") String permissionId);
}
