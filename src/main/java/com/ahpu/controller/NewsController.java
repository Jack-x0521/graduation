package com.ahpu.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.News;
import com.ahpu.entity.NewsCategory;
import com.ahpu.service.NewsCategoryService;
import com.ahpu.service.NewsService;
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
 * 通知相关实现接口
 *
 */
@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsCategoryService newsCategoryService;
    @Autowired
    private NewsService newsService;






    /**
     * 通知发布界面跳转
     *
     */
    @RequestMapping("/addNews.do")
    public ModelAndView addNews(ModelAndView mv) {
        List<NewsCategory> categories = newsCategoryService.selectList();
        mv.addObject("categories", categories);
        mv.setViewName("contentInfo/news/addNews");
        return mv;
    }

    /**
     * 通知发布
     *
     */
    @ResponseBody
    @PostMapping("/news.do")
    public ResultResponse insertNews(News news) {
        boolean result = newsService.insert(news);
        if (!result) {
            return Result.resuleError("新增失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 通知管理界面跳转
     *
     */
    @RequestMapping("/index.do")
    public ModelAndView index(ModelAndView mv) {
        List<NewsCategory> categories = newsCategoryService.selectList();
        mv.addObject("categories", categories);
        mv.setViewName("contentInfo/news/index");
        return mv;
    }



    /**
     * 通知列表加载接口
     */
    @ResponseBody
    @GetMapping("newsTable.do")
    public TableResultResponse newsTable(News news, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        Page<News> pageInfo = newsService.selectPage(news, page, limit);
        for (News record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("name", record.getName());
            resultMap.put("categoryName", record.getCategoryName());
            resultMap.put("content", record.getContent());
            resultMap.put("userName", record.getUserName());
            resultMap.put("realName", record.getRealName());
            resultMap.put("time", record.getTime() == null ? "" : record.getTime().substring(0, 19));
            infoList.add(resultMap);
        }
        return Result.tableResule(pageInfo.getTotal(), infoList);
    }

    /**
     * 删除通知
     *
     */
    @ResponseBody
    @DeleteMapping("/news.do")
    public ResultResponse delNews(String id) {
        boolean result = newsService.delById(id);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }

    /**
     * 通知编辑界面跳转
     *
     */
    @RequestMapping("/editNews.do")
    public ModelAndView editNews(ModelAndView mv, String id) {
        News news = newsService.getOneById(id);
        mv.addObject("news", news);
        List<NewsCategory> categories = newsCategoryService.selectList();
        mv.addObject("categories", categories);
        mv.setViewName("contentInfo/news/editNews");
        return mv;
    }

    /**
     * 修改通知
     *
     */
    @ResponseBody
    @PutMapping("/news.do")
    public ResultResponse updataNews(News news) {
        boolean result = newsService.editById(news);
        if (!result) {
            return Result.resuleError("修改失败");
        }
        return Result.resuleSuccess();
    }

}