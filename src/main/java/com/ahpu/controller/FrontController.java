package com.ahpu.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.*;
import com.ahpu.service.*;
import com.ahpu.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 〈〉<br>
 *
 */
@Controller
@RequestMapping("/front")
public class FrontController {
    @Autowired
    private LogService logService;
    @Autowired
    private UserService userService;
    @Autowired
    private WbeParameterService wbeParameterService;
    @Autowired
    private ShiroUtils shiroUtils;
    @Autowired
    private NewsService newsService;
    @Autowired
    private NewsCategoryService categoryService;


    /**
     * 通知列表界面跳转
     *
     */
    @RequestMapping("/news.do")
    public ModelAndView news(ModelAndView mv, String categoryName) {
        CommonMethods("news", mv);
        News news = new News();
        news.setCategoryName(categoryName);
        Page<News> selectPage = newsService.selectPage(news, 1, 1000);
        mv.addObject("newstList", selectPage.getRecords());
        mv.setViewName("front/news");
        return mv;
    }

    /**
     * 通知详情界面跳转
     *
     */
    @RequestMapping("/newsDetails.do")
    public ModelAndView newsDetails(ModelAndView mv, String id) {
        CommonMethods("news", mv);
        News news = newsService.getOneById(id);
        mv.addObject("news", news);
        mv.setViewName("front/newsDetails");
        return mv;
    }


    // =============================================个人信息界面===========================================================================
//=================================公共方法=========================================================================================

    /**
     * 前端页面有一些公用需求在这里抽取出来
     *
     * @param which 是选中哪一个页面顶部标签参数
     */
    public void CommonMethods(String which, ModelAndView mv) {
        //判断用户是否登录
        boolean gogin = shiroUtils.isGogin();
        boolean admin = false;
        if (gogin) {
            //如果登录将用户信息放入前台
            mv.addObject("userInfo", userService.selectByPrimaryKey(shiroUtils.getSessionUser().getId()));
            //平且判断是否是管理员
            admin = userService.isAdmin(shiroUtils.getSessionUser().getId());

        }
        mv.addObject("go_in", gogin);
        mv.addObject("admin", admin);
        //网站参数
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        mv.addObject("wbeParameter", wbeParameter);



    }
}