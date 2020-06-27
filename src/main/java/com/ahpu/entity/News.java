package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 * 新闻实体类
 *
 *
 */
@Data
@TableName("gm_news")
public class News implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 分类名称
     */
    private String categoryName;
    /**
     * 标题
     */
    private String name;
    /**
     * 发布时间
     */
    private String time;
    /**
     * 发布人
     */
    private String userName;
    private String realName;
    /**
     * 发布内容
     */
    private String content;
    /**
     * 图片
     */
    private String img;
    /**
     * 摘要
     */
    private String digest;
}