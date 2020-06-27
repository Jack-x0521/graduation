package com.ahpu.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.NewsCategory;

import java.util.List;

public interface NewsCategoryService {
    /**
     * 分页查询
     *
     */
    Page<NewsCategory> selectPage(NewsCategory newsCategory, int page, int limit);

    /**
     * 新增
     *
     */
    boolean insert(NewsCategory newsCategory);

    /**
     * 删除
     */
    boolean delById(String id);

    /**
     * 得到新闻分类集合
     *
     */
    List<NewsCategory> selectList();


}
