package com.ahpu.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Distribution;
import com.ahpu.entity.Reply;
import com.ahpu.entity.User;
import com.ahpu.service.DistributionService;
import com.ahpu.service.ReplyService;
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
 * 答辩组题
 *
 */
@Controller
@RequestMapping("/reply")
public class ReplyController {
    @Autowired
    private ReplyService ReplyService;
    @Autowired
    private UserService userService;
    @Autowired
    private ShiroUtils shiroUtils;
    @Autowired
    private DistributionService distributionService;

    /**
     * 答辩组界面跳转
     *
     */
    @RequestMapping("/index.do")
    public ModelAndView index(ModelAndView mv) {
        mv.setViewName("contentInfo/reply/index");
        return mv;
    }

    /**
     * 答辩组界面列表
     *
     */
    @ResponseBody
    @GetMapping("reply.do")
    public TableResultResponse getTables(Reply entity, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        Page<Reply> pageInfo = ReplyService.selectPage(entity, page, limit);
        for (Reply record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("name", record.getName());
            resultMap.put("time", record.getTime() == null ? "" : record.getTime().substring(0, 19));
            resultMap.put("students", record.getStudents());
            resultMap.put("studentsName", record.getStudentsName());
            resultMap.put("teachers", record.getTeachers());

            resultMap.put("groupUser", record.getGroupUser());
            resultMap.put("place", record.getPlace());
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
    @DeleteMapping("/reply.do")
    public ResultResponse delete(String id) {
        boolean result = ReplyService.delById(id);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 新增答辩组界面跳转
     *
     */
    @RequestMapping("/addPage.do")
    public ModelAndView addPage(ModelAndView mv) {
        Page<User> userListByRoleId = userService.getUserListByRoleId("3", 1, 1000);
        mv.addObject("groupList", userListByRoleId.getRecords());
        List<Map<String, String>> teacherList = new ArrayList<>();
        for (User record : userListByRoleId.getRecords()) {
            Map<String, String> userMap = new HashMap<>();
            userMap.put("name", record.getRealName()+'('+record.getUserName()+')');

            userMap.put("value", record.getRealName()+'('+record.getUserName()+')');
            teacherList.add(userMap);
        }
        mv.addObject("teacherList", teacherList);



        Page<User> userListByRoleId1 = userService.getUserListByRoleId("2", 1, 1000);
        List<Map<String, String>> studentList = new ArrayList<>();
        for (User record : userListByRoleId1.getRecords()) {
            Map<String, String> userMap = new HashMap<>();
            userMap.put("name", record.getRealName()+'('+record.getUserName()+')');
            userMap.put("value", record.getUserName());

            studentList.add(userMap);
        }
        mv.addObject("studentList", studentList);


        Page<User> userListByRoleId2 = userService.getUserListByRoleId("2", 1, 1000);
        List<Map<String, String>> studentsName = new ArrayList<>();
        for (User record : userListByRoleId2.getRecords()) {
            Map<String, String> userMap = new HashMap<>();
            userMap.put("name", record.getRealName()+'('+record.getUserName()+')');
            userMap.put("value", record.getRealName()+'('+record.getUserName()+')');

            studentsName.add(userMap);
        }
        mv.addObject("studentsName", studentsName);



        mv.setViewName("contentInfo/reply/addPage");
        return mv;
    }

    /**
     * 新增答辩组
     */
    @ResponseBody
    @PostMapping("/reply.do")
    public ResultResponse insert(Reply entity) {
//        User userByUserName = userService.getUserByUserName(entity.getTeachers());
//        entity.setTeachersName(userByUserName.getRealName());
//        User userB = userService.getUserByUserName(entity.getStudents());
//        entity.setStudentsName(usrB.getRealName());

        boolean result = ReplyService.insert(entity);
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
        Reply Reply = ReplyService.getOne(id);
        mv.addObject("reply", Reply);
        Page<User> userListByRoleId = userService.getUserListByRoleId("3", 1, 1000);
        mv.addObject("groupList", userListByRoleId.getRecords());
        mv.setViewName("contentInfo/reply/editPage");
        return mv;
    }

    /**
     * 编辑
     *
     */
    @ResponseBody
    @PutMapping("/reply.do")
    public ResultResponse update(Reply entity) {
        boolean result = ReplyService.edit(entity);
        if (!result) {
            return Result.resuleError("编辑失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 评分界面
     *
     */
    @RequestMapping("/pinPage.do")
    public ModelAndView pinPage(ModelAndView mv, String id) {
        Reply one = ReplyService.getOne(id);
        String[] split = one.getStudents().split(",");
        mv.addObject("studentList", split);
        mv.setViewName("contentInfo/reply/pinPage");
        return mv;
    }

    /**
     * 输入分数界面
     *
     */
    @RequestMapping("/scorePage.do")
    public ModelAndView scorePage(ModelAndView mv, String student) {
        Distribution distribution = distributionService.getOneByStudent(student);

        mv.addObject("distribution", distribution);
        mv.setViewName("contentInfo/reply/scorePage");
        return mv;
    }
}