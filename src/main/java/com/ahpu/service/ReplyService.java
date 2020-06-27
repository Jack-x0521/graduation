package com.ahpu.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Reply;

import java.util.List;

public interface ReplyService {
    /**
     * 分页查询
     *
     */
    Page<Reply> selectPage(Reply entity, int page, int limit);


    /**
     * 新增
     *
     */
    boolean insert(Reply entity);


    /**
     * 删除
     */
    boolean delById(String id);


    /**
     * 编辑
     *
     */
    boolean edit(Reply entity);
  

    /**
     * 单个对象
     *
     */
    Reply getOne(String id);


    /**
     * 集合
     *
     */
    List<Reply> getList();
  


    boolean isHave(String student, String type);

}
