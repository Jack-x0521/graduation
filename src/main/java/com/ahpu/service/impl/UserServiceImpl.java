package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Permission;
import com.ahpu.entity.Role;
import com.ahpu.entity.User;
import com.ahpu.mapper.PermissionMapper;
import com.ahpu.mapper.RoleMapper;
import com.ahpu.mapper.UserMapper;
import com.ahpu.service.UserService;
import com.ahpu.util.DateUtil;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户service实现类
 *
 *
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Resource
    private RoleMapper roleMapper;
    @Resource
    private PermissionMapper permissionMapper;
    @Resource
    private ShiroUtils shiroUtils;

    @Override
    public User findUserByUserName(String userName) {
        User searchUser = new User();
        searchUser.setUserName(userName);
        User user = userMapper.selectOne(searchUser);
        if (user != null) {
            List<Role> roleList = roleMapper.selectRoleListByUserId(user.getId());
            if (!roleList.isEmpty()) {
                for (Role role : roleList) {
                    List<Permission> permissionList = permissionMapper.selectPermissionByRoleId(role.getId());
                    role.setPermissions(permissionList);
                }
            }
            user.setRoleList(roleList);
            return user;
        }
        return null;
    }

    @Override
    public User getUserByUserName(String userName) {
        User searchUser = new User();
        searchUser.setUserName(userName);
        User user = userMapper.selectOne(searchUser);
        return user;
    }

    @Override
    public Page<User> getUserList(User user, int page, int limit) {
        EntityWrapper<User> searchInfo = new EntityWrapper<>();
        if (user != null) {
            if (user.getUserName() != null && !"".equals(user.getUserName())) {
                searchInfo.eq("userName", user.getUserName());
            }
            if (user.getStatus() != null && !"".equals(user.getStatus())) {
                searchInfo.eq("status", user.getStatus());
            }
        }
        searchInfo.ne("userName", "adminStrator");
        searchInfo.orderBy("createdDate desc");
        Page<User> pageInfo = new Page<>(page, limit);
        List<User> userList = userMapper.selectPage(pageInfo, searchInfo);
        if (!userList.isEmpty()) {
            pageInfo.setRecords(userList);
        }
        return pageInfo;
    }

    @Override
    public Page<User> getUserListForRole(User user, int page, int limit, String roleId) {
        EntityWrapper<User> searchInfo = new EntityWrapper<>();
        if (user != null) {
            if (user.getStatus() != null && !"".equals(user.getStatus())) {
                searchInfo.eq("status", user.getStatus());
            }
        }
        searchInfo.ne("userName", "adminStrator");
        searchInfo.orderBy("createdDate desc");
        Page<User> pageInfo = new Page<>(page, limit);
        List<User> userList = userMapper.selectPage(pageInfo, searchInfo);
        List<String> userIdList = roleMapper.slectRoleAndUser(roleId);
        List<User> resultList = new ArrayList<>();
        for (User user1 : userList) {
            if (!userIdList.contains(user1.getId())) {
                resultList.add(user1);
            }
        }
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public Page<User> getUserListByRoleId(String roleId, int page, int limit) {
        Page<User> pageInfo = new Page<>(page, limit);
        List<User> userList = userMapper.selectUserListByRoleId(pageInfo, roleId);
        if (!userList.isEmpty()) {
            pageInfo.setRecords(userList);
        }
        return pageInfo;
    }

    @Override
    public boolean changePass(String newPas, String userName) {
        User user = new User();
        user.setPassword(newPas);
        EntityWrapper<User> entityWrapper = new EntityWrapper<User>();
        entityWrapper.eq("userName", userName);

        int result = userMapper.update(user, entityWrapper);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean updateUserStatus(String id, Integer status) {
        User user = new User();
        user.setStatus(status);
        user.setId(id);
        int result = userMapper.updateById(user);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean insert(User user) {
        user.setStatus(1);
        user.setCreatedDate(DateUtil.getCurrentTime("yyyy-MM-dd HH:mm:ss"));

        user.setPassword(user.getPlainPassword());

        int result = userMapper.insert(user);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void updateLoginTime(String userName, String time) {
        User user = new User();
        EntityWrapper<User> entityWrapper = new EntityWrapper<User>();
        user.setUpdatedDate(time);
        entityWrapper.eq("userName", userName);
        userMapper.update(user, entityWrapper);
    }

    @Override
    public List<User> selectList() {
        EntityWrapper<User> entityWrapper = new EntityWrapper<User>();
        entityWrapper.ne("userName", "adminStrator");
        entityWrapper.ne("userName", "admin");
        return userMapper.selectList(entityWrapper);
    }

    @Override
    public boolean isAdmin(String userId) {
        List<Role> roleList = roleMapper.selectRoleListByUserId(userId);
        for (Role role : roleList) {
            if ("管理员".equals(role.getRole())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isUser(String userId) {
        List<Role> roleList = roleMapper.selectRoleListByUserId(userId);
        for (Role role : roleList) {
            if ("用户".equals(role.getRole())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isRole(String userId, String roleId) {
        List<Role> roleList = roleMapper.selectRoleListByUserId(userId);
        for (Role role : roleList) {
            if (roleId.equals(role.getId())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String zumNumber() {
        return userMapper.selectList(null).size() + "";
    }

    @Override
    public boolean deleteByPrimaryKey(String ids) {
        String[] idList = ids.split(",");
        int result = 0;
        for (String s : idList) {
            result = userMapper.deleteById(s);
            if (result > 0) {
                roleMapper.delUserByUserId(s);
            }
        }
        if (result > 0) {

            return true;
        } else {
            return false;
        }
    }

    @Override
    public User selectByPrimaryKey(String id) {
        return userMapper.selectById(id);
    }

    @Override
    public boolean updateByPrimaryKey(User user) {

        user.setPassword(user.getPlainPassword());

        int result = userMapper.updateById(user);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }


}