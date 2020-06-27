package com.ahpu.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.ahpu.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * 用户数据访问层
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
    /**
     * 通过roleId查询其下面的所有用户
     *
     */
    List<User> selectUserListByRoleId(RowBounds var1, @Param(value = "roleId") String roleId);
}
