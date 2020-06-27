package com.ahpu.controller;

import com.ahpu.entity.User;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Distribution;
import com.ahpu.entity.File;
import com.ahpu.service.DistributionService;
import com.ahpu.service.FileService;
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
 *
 */
@Controller
@RequestMapping("/file")
public class FileController {
    @Autowired
    private FileService FileService;
    @Autowired
    private UserService userService;
    @Autowired
    private ShiroUtils shiroUtils;
    @Autowired
    private DistributionService distributionService;

    /**
     * 申报管理界面跳转
     *

     */
    @RequestMapping("/index.do")
    public ModelAndView index(ModelAndView mv) {
        mv.addObject("isTeacher", userService.isRole(shiroUtils.getSessionUser().getId(), "3"));
        mv.setViewName("contentInfo/file/index");
        return mv;
    }

    /**
     * 申报管理界面列表
     *
     */
    @ResponseBody
    @GetMapping("file.do")
    public TableResultResponse getTables(File entity, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        if (userService.isRole(shiroUtils.getSessionUser().getId(), "2")) {
            entity.setStudent(shiroUtils.getSessionUser().getUserName());
        }
        if (userService.isRole(shiroUtils.getSessionUser().getId(), "3")) {
            entity.setTeacher(shiroUtils.getSessionUser().getUserName());
        }
        Page<File> pageInfo = FileService.selectPage(entity, page, limit);
        for (File record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("name", record.getName());
            resultMap.put("task", record.getTask());
            resultMap.put("url", "<a class='layui-btn layui-btn-normal' href='" + record.getUrl() + "'>导出文档</a>");

            resultMap.put("work", record.getWork());
            resultMap.put("type", record.getType());
            if ("等待指导教师审核".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#FFB800'>" + record.getState() + "</span>");
            }
            if ("确认不通过".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:red'>" + record.getState() + "</span>");
            }
            if ("确认通过".equals(record.getState())) {
                resultMap.put("stateTitle", "<span style='color:#4ac16c'>" + record.getState() + "</span>");
            }
            resultMap.put("state", record.getState());
            resultMap.put("student", record.getStudent());
            resultMap.put("studentName", record.getStudentName());
            resultMap.put("teacher", record.getTeacher());
            resultMap.put("teacherName", record.getTeacherName());
            resultMap.put("time", record.getTime());
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
    @DeleteMapping("/file.do")
    public ResultResponse delete(String id) {
        boolean result = FileService.delById(id);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 新增文档界面跳转
     *
     */
    @RequestMapping("/addPage.do")
    public ModelAndView addPage(ModelAndView mv) {
        Distribution distribution = distributionService.getOneByStudent(shiroUtils.getSessionUser().getUserName());
        mv.addObject("distribution", distribution);
        mv.setViewName("contentInfo/file/addPage");
        return mv;
    }

    /**
     * 新增文档
     *
     *
     */
    @ResponseBody
    @PostMapping("/file.do")
    public ResultResponse insert(File entity) {
        if (distributionService.isHave(shiroUtils.getSessionUser().getUserName())) {
            return Result.resuleError("未选择任何课题");
        }
        if (!"指导记录".equals(entity.getType())) {
            if (!FileService.isHave(shiroUtils.getSessionUser().getUserName(), entity.getType())) {
                return Result.resuleError("已经提交过" + entity.getType() + "!");
            }
        }
        entity.setStudent(shiroUtils.getSessionUser().getUserName());
        entity.setStudentName(shiroUtils.getSessionUser().getRealName());
        entity.setStudentName(shiroUtils.getSessionUser().getRealName());
        User userByUserName = userService.getUserByUserName(entity.getTeacher());
        entity.setTeacherName(userByUserName.getRealName());
        entity.setState("等待指导教师审核");
        boolean result = FileService.insert(entity);
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
        File file = FileService.getOne(id);
        mv.addObject("file", file);
        mv.setViewName("contentInfo/File/editPage");
        return mv;
    }

    /**
     * 编辑
     *
     */
    @ResponseBody
    @PutMapping("/file.do")
    public ResultResponse update(File entity) {
        entity.setState("等待指导教师审核");
        boolean result = FileService.edit(entity);
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
    public ResultResponse edit(File entity) {
        boolean result = FileService.edit(entity);
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
            File file = new File();
            file.setId(s);
            file.setState(state);
            result = FileService.edit(file);
        }
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        return Result.resuleSuccess();
    }
}