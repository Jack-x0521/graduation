package com.ahpu.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.*;
import com.ahpu.service.NewsService;
import com.ahpu.service.PermissionService;
import com.ahpu.service.UserService;
import com.ahpu.service.WbeParameterService;
import com.ahpu.util.ShiroUtils;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @Description: 内容
 *
 */
@Controller
public class IndexController {
    private static final transient Logger log = LoggerFactory.getLogger(IndexController.class);
    @Autowired
    private PermissionService permissionService;
    @Autowired
    private ShiroUtils shiroUtils;
    @Autowired
    private UserService userService;
    @Autowired
    private WbeParameterService wbeParameterService;
    @Autowired
    private NewsService newsService;

    @GetMapping("/indexWbe")
    public ModelAndView index(ModelAndView mv, Model model) {
        User user = userService.selectByPrimaryKey(shiroUtils.getSessionUser().getId());
        Map<String, LinkedHashMap<String, List<Menu>>> menuMap = permissionService.getMenuInfoByUserId(user.getId());
        JSONObject allMenu = new JSONObject();
        for (String key : menuMap.keySet()) {
            JSONArray sysJson = new JSONArray();
            for (String inKey : menuMap.get(key).keySet()) {
                List<Menu> menuList = menuMap.get(key).get(inKey);
                JSONObject menuJson = new JSONObject();
                JSONArray jsonArray = new JSONArray();
                menuJson.put("title", inKey.split(":")[0]);
                menuJson.put("icon", "");
                menuJson.put("href", "");
                menuJson.put("spread", false);
                for (Menu menu : menuList) {
                    JSONObject json = new JSONObject();
                    json.put("title", menu.getMenuName());
                    json.put("href", menu.getMenuURL());
                    json.put("spread", false);
                    json.put("target", "");
                    jsonArray.add(json);
                }
                menuJson.put("children", jsonArray);
                sysJson.add(menuJson);
            }
            allMenu.put(key, sysJson);
        }
        model.addAttribute("menuInfo", allMenu);
        log.info("==" + allMenu);
        User userByUserName = userService.findUserByUserName(user.getUserName());
        List<Role> roleList = userByUserName.getRoleList();
        if (roleList.isEmpty()) {
            model.addAttribute("role", "暂无身份");
        } else {
            model.addAttribute("role", roleList.get(0).getRole());
        }
        model.addAttribute("user", user);
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        model.addAttribute("wbeParameter", wbeParameter);
        mv.setViewName("content/index");
        return mv;
    }

    /**
     * 登录页面
     *
     *
     */
    @RequestMapping("/loginWbe")
    public ModelAndView login(ModelAndView mv) {
        mv.setViewName("/login");
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        mv.addObject("wbeParameter", wbeParameter);


        News news = new News();
        news.setCategoryName("通知公告");
        Page<News> newsPage = newsService.selectPage(news, 1, 7);
        mv.addObject("noticeList", newsPage.getRecords());
        news.setCategoryName("使用手册");
        Page<News> newsPage1 = newsService.selectPage(news, 1, 7);
        mv.addObject("manualList", newsPage1.getRecords());
        return mv;
    }

    /**
     * Shiro登录跳转地址,重定向到登录页面
     *
     */
    @RequestMapping("/loginShiro")
    public String loginShiro(ModelAndView mv) {
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            return "forward:/indexWbe";
        } else {
            return "forward:/loginWbe";
        }
    }

    /**
     * Shiro登录成功后index跳转地址,重定向到indexWbe页面
     *
     */
    @RequestMapping("/indexShiro")
    public String indexShiro(ModelAndView mv) {
        boolean user = userService.isUser(shiroUtils.getSessionUser().getId());
        if (user) {
            return "forward:/front/index.do";
        } else {
            return "forward:/indexWbe";
        }

    }

    /**
     * 修改密码页面跳转
     *
     */
    @GetMapping("/changePwd")
    public ModelAndView changePwd(ModelAndView mv) {
        User user = (User) shiroUtils.getShiroSession().getAttribute("loginUserInfo");
        mv.addObject("user", user);
        mv.setViewName("content/changePwd");
        return mv;
    }

    /**
     * 用户修改密码
     *
     */
    @ResponseBody
    @PostMapping("/updatePas")
    public ResultResponse updatePassword(String newPas, String oldPas, String userName) {
        User user = (User) shiroUtils.getShiroSession().getAttribute("loginUserInfo");
        if (oldPas.equals(user.getPlainPassword())) {
            boolean result = userService.changePass(newPas, userName);
            if (result) {
                user.setPlainPassword(newPas);
                return Result.resuleSuccess();
            } else {
                return Result.resuleError("修改失败");
            }

        }
        return Result.resuleError("原密码错误,请重新输入");


    }

    /**
     * 用户中心
     *
     */
    @GetMapping("/userInfo")
    public ModelAndView userInfo(ModelAndView mv) {
        User user = userService.selectByPrimaryKey(shiroUtils.getSessionUser().getId());
        if (!shiroUtils.stringIsNotBlack(user.getImgUrl())) {
            user.setImgUrl("/resource/image/default.png");
        }
        mv.addObject("user", user);
        mv.setViewName("content/userInfo");
        return mv;
    }

    /**
     * 首页
     *
     */
    @GetMapping("/main")
    public ModelAndView main(ModelAndView mv) {
        mv.setViewName("content/main");
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        mv.addObject("wbeParameter", wbeParameter);
        return mv;
    }

    /**
     * 404页面
     *
     *
     */
    @GetMapping("/404")
    public ModelAndView silingsi(ModelAndView mv) {
        mv.setViewName("content/404");
        return mv;
    }




    /**
     * 登录页面跳转
     */
    @RequestMapping("/login")
    public ModelAndView login1(ModelAndView mv) {
        mv.setViewName("login");
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        mv.addObject("wbeParameter", wbeParameter);


        News news = new News();
        news.setCategoryName("通知公告");
        Page<News> newsPage = newsService.selectPage(news, 1, 7);
        mv.addObject("noticeList", newsPage.getRecords());
        news.setCategoryName("使用手册");
        Page<News> newsPage1 = newsService.selectPage(news, 1, 7);
        mv.addObject("manualList", newsPage1.getRecords());
        return mv;
    }
}
