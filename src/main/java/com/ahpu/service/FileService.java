package com.ahpu.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.File;

import java.util.List;

public interface FileService {
    /**
     * 分页查询
     *
     */
    Page<File> selectPage(File entity, int page, int limit);


    /**
     * 新增
     *
     */
    boolean insert(File entity);


    /**
     * 删除
     */
    boolean delById(String id);


    /**
     * 编辑
     *
     */
    boolean edit(File entity);
  

    /**
     * 单个对象
     *
     */
    File getOne(String id);


    /**
     * 集合
     *
     */
    List<File> getList();
  


    boolean isHave(String student,String type);

}
