
package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Menu;
import com.ahpu.entity.Permission;
import com.ahpu.entity.SubSystemInfo;
import com.ahpu.mapper.PermissionMapper;
import com.ahpu.mapper.RoleMapper;
import com.ahpu.service.PermissionService;
import com.ahpu.util.DateUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;


/**
 *
 * 对权限进行操作
 */

@Service
public class PermissionServiceImpl implements PermissionService {

    @Resource
    PermissionMapper permissionMapper;
    @Resource
    private RoleMapper roleMapper;

    private Log log = LogFactory.getLog(PermissionServiceImpl.class);

    @Override
    public List<SubSystemInfo> getSubSystemInfoByUserId(String userId) {
        return permissionMapper.getSubSystemInfoByUserId(userId);
    }

    @Override
    public List<SubSystemInfo> getSubSystemInfo() {
        return permissionMapper.getSubSystemInfo();
    }

    @Override
    public List<Permission> getPermissionList() {
        return permissionMapper.selectList(null);
    }

    @Override
    public List<Permission> getPermissionListByRoleId(String roleId) {
        return permissionMapper.selectPermissionByRoleId(roleId);
    }

    @Override
    public List<Permission> getPermissionListForRole(String permissionType, String permissionName, String roleId) {
        EntityWrapper<Permission> searchInfo = new EntityWrapper<>();
        if (permissionType != null && !"".equals(permissionType)) {
            searchInfo.eq("permissionType", permissionType);
        }
        if (permissionName != null && !"".equals(permissionName)) {
            searchInfo.eq("permissionName", permissionName);
        }
        searchInfo.ne("permissionName", "资源管理");
        searchInfo.ne("permissionId", "334");
        searchInfo.ne("parentId", "334");
        List<Permission> permissionList = permissionMapper.selectList(searchInfo);
        List<String> permissionIds = roleMapper.slectPermissionAndUser(roleId);
        List<Permission> resultList = new ArrayList<>();
        for (Permission permission : permissionList) {
            if (!permissionIds.contains(permission.getPermissionId())) {
                resultList.add(permission);
            }
        }

        return resultList;
    }

    @Override
    public boolean allotPermission(String ids, String roleId) {
        String[] idList = ids.split(",");
        int result = 0;
        for (String s : idList) {
            result = permissionMapper.allotPermission(roleId, s);
        }
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean delPermission(String permissionId, String roleId) {
        int result = permissionMapper.delPermission(permissionId, roleId);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Map<String, Object>> getMenuByParentId(String id) {
        EntityWrapper<Permission> searchInfo = new EntityWrapper<>();
        searchInfo.eq("parentId", id);
        List<Permission> menuList = permissionMapper.selectList(searchInfo);
        List<Map<String, Object>> resultList = new ArrayList<>();
        for (Permission permission : menuList) {
            List<Map<String, Object>> childrenResultList = new ArrayList<>();
            Map<String, Object> resultMap = new HashMap<>();
            resultMap.put("id", permission.getPermissionId());
            resultMap.put("name", permission.getPermissionName());
            EntityWrapper<Permission> childrenSearchInfo = new EntityWrapper<>();
            childrenSearchInfo.eq("parentId", permission.getPermissionId());
            List<Permission> childrenMenuList = permissionMapper.selectList(childrenSearchInfo);
            for (Permission permission1 : childrenMenuList) {
                Map<String, Object> childrenResultMap = new HashMap<>();
                childrenResultMap.put("id", permission1.getPermissionId());
                childrenResultMap.put("name", permission1.getPermissionName());
                childrenResultList.add(childrenResultMap);
            }
            resultMap.put("children", childrenResultList);
            resultList.add(resultMap);
        }
        return resultList;
    }

    @Override
    public Page<Permission> getPermissionByParentId(String id, int page, int limit) {
        EntityWrapper<Permission> searchInfo = new EntityWrapper<>();
        searchInfo.eq("parentId", id);
        Page<Permission> pageInfo = new Page<>(page, limit);
        List<Permission> menuList = permissionMapper.selectPage(pageInfo, searchInfo);
        if (!menuList.isEmpty()) {
            pageInfo.setRecords(menuList);
        }
        return pageInfo;
    }

    @Override
    public Permission getPermissionById(String id) {
        return permissionMapper.selectById(id);
    }

    @Override
    public boolean insert(Permission permission) {
        permission.setCreateTime(DateUtil.getCurrentTime("yyyy-MM-dd HH:mm:ss"));
        permission.setAvailable(1);
        int result = permissionMapper.insert(permission);
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(String id) {
        int result = permissionMapper.deleteById(id);
        if (result > 0) {
            permissionMapper.delPermissionByPermissionId(id);
            return true;
        }
        return false;
    }

    @Override
    public Map<String, LinkedHashMap<String, List<Menu>>> getMenuInfoByUserId(String userId) {
        log.debug("allMenu111" + userId);
        if ("".equals(userId) && userId == null) {
            return new HashMap<String, LinkedHashMap<String, List<Menu>>>();
        }
        List<Menu> allMenu = permissionMapper.getMenuInfoByUserId(userId);
        //临时存放根菜单信息
        Map<String, Menu> tmp = new LinkedHashMap<String, Menu>();
        for (Menu menu : allMenu) {
            String[] pMarks = menu.getMenuMark().split(":");
            if (pMarks != null && pMarks.length == 2) {
                tmp.put(menu.getMenuId(), menu);
            }
        }
        //子目录菜单信息
        List<Menu> childMenu = null;
        //主目录与子目录MAP映射
        LinkedHashMap<String, List<Menu>> menuMap = null;
        //最终封装好的MAP，包括子按系统区分menuMap信息
        Map<String, LinkedHashMap<String, List<Menu>>> result = new LinkedHashMap<String, LinkedHashMap<String, List<Menu>>>();
        for (Menu menu : allMenu) {
            if (tmp.get(menu.getPerentMenuId()) == null) {
                continue;
            }
            //根据上级ID在临时MAP里查询菜单归属信息
            Menu obj = tmp.get(menu.getPerentMenuId());
            String menuName = tmp.get(menu.getPerentMenuId()).getMenuName();
            if (result.get(obj.getPerentMenuId() + "") == null) {        //生成最终返回类型
                childMenu = new ArrayList<Menu>();
                menuMap = new LinkedHashMap<String, List<Menu>>();
                childMenu.add(menu);
                menuMap.put(menuName + ":" + obj.getMenuId(), childMenu);
                result.put(obj.getPerentMenuId() + "", menuMap);
            } else if (result.get(obj.getPerentMenuId() + "").get(menuName + ":" + obj.getMenuId()) == null) {
                //menuMap有多个KEY时分别封装KEY对映的LIST菜单信息
                childMenu = new ArrayList<Menu>();
                childMenu.add(menu);
                result.get(obj.getPerentMenuId() + "").put(menuName + ":" + obj.getMenuId(), childMenu);
            } else {
                result.get(obj.getPerentMenuId() + "").get(menuName + ":" + obj.getMenuId()).add(menu);
            }
        }
        Iterator<String> miner = result.keySet().iterator();
        while (miner.hasNext()) {
            String k = miner.next();
            Map<String, List<Menu>> map = result.get(k);
            Iterator<String> iner = map.keySet().iterator();
            while (iner.hasNext()) {
                String key = iner.next();
                List<Menu> list = map.get(key);
                if (list.size() == 0) {
                    result.get(k).get(key).remove(key);
                }
            }
        }
        return result;
    }
}