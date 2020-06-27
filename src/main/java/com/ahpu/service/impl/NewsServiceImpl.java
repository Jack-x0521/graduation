package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.News;
import com.ahpu.mapper.NewsMapper;
import com.ahpu.service.NewsService;
import com.ahpu.util.DateUtil;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 通知相关操作service实现类
 *
 *
 */
@Service
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;
    @Resource
    private ShiroUtils shiroUtils;

    @Override
    public Page<News> selectPage(News news, int page, int limit) {
        EntityWrapper<News> searchInfo = new EntityWrapper<>();
        Page<News> pageInfo = new Page<>(page, limit);
        if (shiroUtils.stringIsNotBlack(news.getCategoryName())) {
            searchInfo.eq("categoryName", news.getCategoryName());
        }
        if (shiroUtils.stringIsNotBlack(news.getUserName())) {
            searchInfo.eq("userName", news.getUserName());
        }
        if (shiroUtils.stringIsNotBlack(news.getName())) {
            searchInfo.like("name", news.getName());
        }
        searchInfo.orderBy("time desc");
        List<News> resultList = newsMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public boolean insert(News news) {
        news.setTime(DateUtil.getNowDateSS());
        news.setUserName(shiroUtils.getSessionUser().getUserName());
        news.setRealName(shiroUtils.getSessionUser().getRealName());
        Integer insert = newsMapper.insert(news);
        if (insert > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delById(String id) {
        Integer delete = newsMapper.deleteById(id);
        if (delete > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean editById(News news) {
        Integer integer = newsMapper.updateById(news);
        if (integer > 0) {
            return true;
        }
        return false;
    }

    @Override
    public News getOneById(String id) {
        return newsMapper.selectById(id);

    }


}