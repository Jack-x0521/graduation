package com.ahpu.controller;

import com.ahpu.service.RoleService;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 角色管理接口
 *
 */

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    /**
     * 权限管理中,为角色新增用户的弹窗url地址
     *
     */
    @GetMapping("/addUserForRole.do")
    public ModelAndView addUserForRole(ModelAndView mv, String roleId) {
        mv.addObject("roleId", roleId);
        mv.setViewName("/systemSet/addUserForRole");
        return mv;
    }

    /**
     * 分配角色
     *
     */
    @ResponseBody
    @PostMapping("/addUser.do")
    public ResultResponse addUser(String ids, String roleId) {
        boolean result = roleService.allotRole(ids, roleId);
        if (!result) {
            return Result.resuleError("添加失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 删除角色下的用户
     *
     */
    @ResponseBody
    @DeleteMapping("/delUser.do")
    public ResultResponse delUser(String userId, String roleId) {
        boolean result = roleService.delUser(userId, roleId);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }
}