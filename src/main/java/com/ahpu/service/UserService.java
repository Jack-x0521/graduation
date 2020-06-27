package com.ahpu.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.User;

import java.util.List;

public interface UserService {

    /**
     * 通过UserName查询到User对象,并且将User所拥有的角色也查出来,并将角色下拥有的权限也查出来
     *
     */
    User findUserByUserName(String userName);

    /**
     * 仅仅得到User对象
     *
     */
    User getUserByUserName(String userName);

    /**
     * 通过User对象查找列表
     *
     */
    Page<User> getUserList(User user, int page, int limit);

    /**
     * 得到角色下没有的用户列表
     *
     */
    Page<User> getUserListForRole(User user, int page, int limit, String roleId);

    /**
     * 通过角色id得到下面的用户
     *
     */
    Page<User> getUserListByRoleId(String roleId, int page, int limit);

    /**
     * 修改密码
     *
     */
    boolean changePass(String newPas, String userName);

    /**
     * 修改用户状态
     *
     */
    boolean updateUserStatus(String id, Integer status);

    /**
     * 根据主键id查询
     *
     */
    User selectByPrimaryKey(String id);

    /**
     * 新增
     *
     */
    boolean insert(User user);

    /**
     * 修改
     *
     */
    boolean updateByPrimaryKey(User user);

    /**
     * 删除,单个删除批量删除通用
     *
     */
    boolean deleteByPrimaryKey(String ids);

    /**
     * 修改登陆时间
     *
     */
    void updateLoginTime(String userName, String time);

    List<User> selectList();

    boolean isAdmin(String userId);
    boolean isUser(String userId);
    boolean isRole(String userId,String roleId);

    /**
     * 统计用户总户数
     */
    String zumNumber();
}
