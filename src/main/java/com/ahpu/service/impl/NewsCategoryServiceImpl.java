package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.NewsCategory;
import com.ahpu.mapper.NewsCategoryMapper;
import com.ahpu.mapper.NewsMapper;
import com.ahpu.service.NewsCategoryService;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 通知分类实现接口
 *
 *
 */
@Service
public class NewsCategoryServiceImpl implements NewsCategoryService {
    @Resource
    private NewsCategoryMapper newsCategoryMapper;
    @Resource
    private ShiroUtils shiroUtils;
    @Resource
    private NewsMapper newsMapper;

    @Override
    public Page<NewsCategory> selectPage(NewsCategory newsCategory, int page, int limit) {
        EntityWrapper<NewsCategory> searchInfo = new EntityWrapper<>();
        Page<NewsCategory> pageInfo = new Page<>(page, limit);
        List<NewsCategory> resultList = newsCategoryMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public boolean insert(NewsCategory newsCategory) {
        Integer insert = newsCategoryMapper.insert(newsCategory);
        if (insert > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delById(String id) {
        Integer delete = newsCategoryMapper.deleteById(id);
        if (delete > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<NewsCategory> selectList() {
        List<NewsCategory> newsCategoryList = newsCategoryMapper.selectList(null);
        if (newsCategoryList.isEmpty()) {
            return new ArrayList<>();
        }
        return newsCategoryList;
    }


}