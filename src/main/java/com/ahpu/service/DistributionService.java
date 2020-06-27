package com.ahpu.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Chose;
import com.ahpu.entity.Distribution;

import java.util.List;

public interface DistributionService {
    /**
     * 分页查询
     *
     */
    Page<Distribution> selectPage(Distribution entity, int page, int limit);

    Page<Chose> selectPage(Chose entity, int page, int limit);

    /**
     * 新增
     *
     */
    boolean insert(Distribution entity);

    boolean insert(Chose entity);

    /**
     * 删除
     */
    boolean delById(String id);

    boolean delChoseById(String id);

    /**
     * 编辑
     *
     */
    boolean edit(Distribution entity);
    boolean edit(Chose entity);
    boolean allEdit(String pdId);

    /**
     * 单个对象
     *
     */
    Distribution getOne(String id);
    Chose getChose(String id);
    Distribution getOneByStudent(String student);


    /**
     * 集合
     *
     */
    List<Distribution> getList();
    List<Chose> getChoseList(String ptId);


    boolean isHave(String student);
    boolean isHave1(String teacher);
    boolean isChose(String student);
}
