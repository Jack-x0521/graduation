package com.ahpu.controller;

import com.ahpu.entity.Chose;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Distribution;
import com.ahpu.entity.User;
import com.ahpu.service.DistributionService;
import com.ahpu.service.UserService;
import com.ahpu.util.ShiroUtils;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import com.ahpu.util.TableResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.soap.SOAPBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 申报课题<br>
 *
 */
@Controller
@RequestMapping("/distribution")
public class DistributionController {
    @Autowired
    private DistributionService DistributionService;
    @Autowired
    private UserService userService;
    @Autowired
    private ShiroUtils shiroUtils;


    /**
     * 申报管理界面跳转
     *
     */
    @RequestMapping("/index.do")
    public ModelAndView index(ModelAndView mv) {

        mv.addObject("isTeacher", userService.isRole(shiroUtils.getSessionUser().getId(), "3"));
        mv.setViewName("contentInfo/distribution/index");
        return mv;
    }

    /**
     * 查看成绩管理界面跳转
     *
     */
    @RequestMapping("/look.do")
    public ModelAndView look(ModelAndView mv) {
        mv.setViewName("contentInfo/distribution/look");
        return mv;
    }

    /**
     * 申报管理界面列表
     *
     */
    @ResponseBody
    @GetMapping("distribution.do")
    public TableResultResponse getTables(Distribution entity, int page, int limit) {

        List<Map<String, Object>> infoList = new ArrayList<>();

        if (userService.isRole(shiroUtils.getSessionUser().getId(), "2")) {
            entity.setStudent(shiroUtils.getSessionUser().getUserName());
        }
        if (userService.isRole(shiroUtils.getSessionUser().getId(), "3")) {
            entity.setTeacher(shiroUtils.getSessionUser().getUserName());
        }

        Page<Distribution> pageInfo = DistributionService.selectPage(entity, page, limit);
        for (Distribution record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("name", record.getName());
            resultMap.put("information", record.getInformation());
            resultMap.put("introduction", record.getIntroduction());
            resultMap.put("ask", record.getAsk());
            resultMap.put("research", record.getResearch());
            resultMap.put("score", record.getScore() == null ? "暂未评分" : record.getScore());
            if ("等待指导教师审核".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#FFB800'>" + record.getState() + "</span>");
            }
            if ("确认不通过".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:red'>" + record.getState() + "</span>");
            }
            if ("确认通过".equals(record.getState())) {

                resultMap.put("stateTitle", "<span style='color:#4ac16c'>" + record.getState() + "</span>");

            }

            resultMap.put("num", record.getNum());
            resultMap.put("state", record.getState());
            resultMap.put("student", record.getStudent());
            resultMap.put("studentName", record.getStudentName());
            resultMap.put("teacher", record.getTeacher());
            resultMap.put("teacherName", record.getTeacherName());
            resultMap.put("time", record.getTime());
            resultMap.put("isStudent", userService.isRole(shiroUtils.getSessionUser().getId(), "2"));
            resultMap.put("isTeacher", userService.isRole(shiroUtils.getSessionUser().getId(), "3"));
            infoList.add(resultMap);
        }
        return Result.tableResule(pageInfo.getTotal(), infoList);
    }

    /**
     * 删除
     *
     */
    @ResponseBody
    @DeleteMapping("/distribution.do")
    public ResultResponse delete(String id) {
        boolean result = DistributionService.delById(id);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 申报课题界面跳转
     *
     */
    @RequestMapping("/addPage.do")
    public ModelAndView addPage(ModelAndView mv) {
        Page<User> userListByRoleId = userService.getUserListByRoleId("3", 1, 1000);
        mv.addObject("teacherList", userListByRoleId.getRecords());


        mv.setViewName("contentInfo/distribution/addPage");
        return mv;
    }

    /**
     * 申报课题
     *
     */
    @ResponseBody
    @PostMapping("/distribution.do")
    public ResultResponse insert(Distribution entity) {


        if (!DistributionService.isHave(shiroUtils.getSessionUser().getUserName())) {
            return Result.resuleError("已经提交过申请课题请求!");
        }
        entity.setStudent(shiroUtils.getSessionUser().getUserName());
        entity.setStudentName(shiroUtils.getSessionUser().getRealName());
        User userByUserName = userService.getUserByUserName(entity.getTeacher());
        entity.setTeacherName(userByUserName.getRealName());
        entity.setState("等待指导教师审核");
        entity.setType("申报课题");


        boolean result = DistributionService.insert(entity);
        if (!result) {
            return Result.resuleError("新增失败");
        }
        return Result.resuleSuccess(entity.getId());
    }



    /**
     * 编辑界面跳转
     *
     */
    @RequestMapping("/editPage.do")
    public ModelAndView editPage(ModelAndView mv, String id) {
        Distribution distribution = DistributionService.getOne(id);
        mv.addObject("distribution", distribution);
        Page<User> userListByRoleId = userService.getUserListByRoleId("3", 1, 1000);
        mv.addObject("teacherList", userListByRoleId.getRecords());
        mv.setViewName("contentInfo/distribution/editPage");
        return mv;
    }

    /**
     * 编辑
     *
     */
    @ResponseBody
    @PutMapping("/distribution.do")
    public ResultResponse update(Distribution entity) {

        entity.setState("等待指导教师审核");
        boolean result = DistributionService.edit(entity);
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 编辑
     *
     */
    @ResponseBody
    @PutMapping("/edit.do")
    public ResultResponse edit(Distribution entity) {
        boolean result = DistributionService.edit(entity);
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 批量
     *
     */
    @ResponseBody
    @PutMapping("/batchEdit.do")
    public ResultResponse batchEdit(String ids, String state) {
        String[] idList = ids.split(",");
        boolean result = false;
        for (String s : idList) {
            Distribution distribution = new Distribution();
            distribution.setId(s);
            distribution.setState(state);
            result = DistributionService.edit(distribution);
        }
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        return Result.resuleSuccess();
    }
}