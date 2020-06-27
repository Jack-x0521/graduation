package com.ahpu.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Chose;
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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈申报课题〉<br>
 *
 */
@Controller
@RequestMapping("/issue")
public class IssueController {
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
        mv.addObject("isUser", userService.isRole(shiroUtils.getSessionUser().getId(), "4"));
        mv.setViewName("contentInfo/issue/index");
        return mv;
    }

    /**
     * 申报管理界面列表
     *
     */
    @ResponseBody
    @GetMapping("issue.do")
    public TableResultResponse getTables(Distribution entity, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        if (userService.isRole(shiroUtils.getSessionUser().getId(), "3")) {
            entity.setTeacher(shiroUtils.getSessionUser().getUserName());
            entity.setTeacherName(shiroUtils.getSessionUser().getRealName());
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
            if ("学生选题".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#FFB800'>" + record.getState() + "</span>");
            }
            if ("已确认双选".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#4ac16c'>" + record.getState() + "</span>");
            }
            if ("等待专业负责人审核".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#FFB800'>" + record.getState() + "</span>");
            }
            if ("确认不通过".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:red'>" + record.getState() + "</span>");
            }
            resultMap.put("num", record.getNum());
            resultMap.put("state", record.getState());
            resultMap.put("student", record.getStudent());
            resultMap.put("studentName",record.getStudentName());
            resultMap.put("teacher", record.getTeacher());
            resultMap.put("teacherName",record.getTeacherName());
            resultMap.put("time", record.getTime());
            resultMap.put("choseNum", DistributionService.getChoseList(record.getId()).size());
            resultMap.put("isStudent", userService.isRole(shiroUtils.getSessionUser().getId(), "2"));
            resultMap.put("isTeacher", userService.isRole(shiroUtils.getSessionUser().getId(), "3"));
            resultMap.put("isUser", userService.isRole(shiroUtils.getSessionUser().getId(), "4"));
            infoList.add(resultMap);
        }
        return Result.tableResule(pageInfo.getTotal(), infoList);
    }

    /**
     * 删除
     *
     */
    @ResponseBody
    @DeleteMapping("/issue.do")
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
        mv.setViewName("contentInfo/issue/addPage");
        return mv;
    }

    /**
     * 新增选题
     *
     */
    @ResponseBody
    @PostMapping("/issue.do")
    public ResultResponse insert(Distribution entity) {
        entity.setTeacher(shiroUtils.getSessionUser().getUserName());
        entity.setTeacherName(shiroUtils.getSessionUser().getRealName());
        entity.setState("等待专业负责人审核");
        entity.setType("新增选题");
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
        mv.setViewName("contentInfo/issue/editPage");
        return mv;
    }

    /**
     * 编辑
     *
     */
    @ResponseBody
    @PutMapping("/issue.do")
    public ResultResponse update(Distribution entity) {
        entity.setState("等待专业负责人审核");
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
     * 学生选题
     *
     */
    @ResponseBody
    @PostMapping("/chose.do")
    public ResultResponse chose(Chose chose) {
        //判断学生是否已有课题
        if (!DistributionService.isHave(shiroUtils.getSessionUser().getUserName())) {
            return Result.resuleError("名下已有课题");
        }
        //判断是否已经选过课题
        if (!DistributionService.isChose(shiroUtils.getSessionUser().getUserName())) {
            return Result.resuleError("已经选过课题了");
        }
        //判断选择人数
        Distribution distribution = DistributionService.getOne(chose.getPtId());
        if (distribution.getNum() <= DistributionService.getChoseList(chose.getPtId()).size()) {
            return Result.resuleError("已达到允许选择人数");
        }
        User user = userService.selectByPrimaryKey(shiroUtils.getSessionUser().getId());

        chose.setIphone(user.getIphone());
        chose.setStudentName(user.getRealName());
        boolean result = DistributionService.insert(chose);
        if (!result) {
            return Result.resuleError("新增失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 选题情况查看界面跳转
     *
     */
    @RequestMapping("/choseView.do")
    public ModelAndView choseView(ModelAndView mv, String ptId) {
        mv.setViewName("contentInfo/issue/choseView");
        mv.addObject("ptId", ptId);
        return mv;
    }

    /**
     * 选题情况管理界面列表
     *
     */
    @ResponseBody
    @GetMapping("chose.do")
    public TableResultResponse getChoseTables(Chose chose, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        Page<Chose> pageInfo = DistributionService.selectPage(chose, page, limit);
        for (Chose record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("student", record.getStudent());
            resultMap.put("studentName",record.getStudentName());
            resultMap.put("iphone", record.getIphone());
            if ("待审核".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#FFB800'>" + record.getState() + "</span>");
            }
            if ("已确认双选".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#4ac16c'>" + record.getState() + "</span>");
            }
            if ("已拒绝".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:red'>" + record.getState() + "</span>");
            }
            resultMap.put("state", record.getState());
            resultMap.put("student", record.getStudent());
            resultMap.put("studentName",record.getStudentName());
            resultMap.put("time", record.getTime());
            resultMap.put("isStudent", userService.isRole(shiroUtils.getSessionUser().getId(), "2"));
            resultMap.put("isTeacher", userService.isRole(shiroUtils.getSessionUser().getId(), "3"));
            infoList.add(resultMap);
        }
        return Result.tableResule(pageInfo.getTotal(), infoList);
    }

    /**
     * 确认双选
     */
    @ResponseBody
    @PutMapping("/affirm.do")
    public ResultResponse affirm(Chose chose) {
        //首先将所有选择改为已拒绝
        DistributionService.allEdit(chose.getPtId());
        Chose chose1 = DistributionService.getChose(chose.getId());
        chose.setState("已确认双选");
        boolean result = DistributionService.edit(chose);
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        //成功修改课题状态
        Distribution distribution = DistributionService.getOne(chose.getPtId());
        distribution.setState("已确认双选");
        distribution.setStudent(chose1.getStudent());
        distribution.setStudentName(chose1.getStudentName());
        DistributionService.edit(distribution);
        return Result.resuleSuccess();
    }

    /**
     * 拒绝
     *
     */
    @ResponseBody
    @PutMapping("/refuse.do")
    public ResultResponse refuse(Chose chose) {
        chose.setState("已拒绝");
        boolean result = DistributionService.edit(chose);
        if (!result) {
            return Result.resuleError("操作失败");
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