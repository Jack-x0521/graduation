package com.ahpu.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.ahpu.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
/**
 * 角色数据访问层
 */
public interface RoleMapper extends BaseMapper<Role> {
    /**
     * 通过userId查询其下面的所有角色
     *
     */
    List<Role> selectRoleListByUserId(@Param(value = "userId") String Userid);

    /**
     * 通过角色Id查询到角色用户关系表中的userId集合
     *
     */
    List<String> slectRoleAndUser(@Param(value = "roleId") String roleId);
    /**
     * 通过角色Id查询到角色用户关系表中的permissionId集合
     *
     */
    List<String> slectPermissionAndUser(@Param(value = "roleId") String roleId);

    /**
     * 分配角色
     *
     */
    int allotRole(@Param(value = "roleId") String roleId, @Param(value = "userId") String userId);

    /**
     * 删除角色下的用户
     *
     */
    int delUser(@Param(value = "userId") String userId, @Param(value = "roleId") String roleId);

    /**
     * 根据用户id删除被赋予的角色
     *
     */
    int delUserByUserId(@Param(value = "userId") String userId);
}
