package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 *
 */
@Data
@TableName("gm_distribution")
public class Distribution implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 课题名称
     */
    private String name;
    /**
     * 研究方向
     */
    private String research;
    /**
     * 题目简介
     */
    private String introduction;
    /**
     * 基本要求
     */
    private String ask;
    /**
     * 参考资料
     */
    private String information;
    /**
     * 可选人数
     */
    private Integer num;
    /**
     * 状态
     */
    private String state;
    /**
     * 教师
     */
    private String teacher;
    private String teacherName;
    /**
     * 学生
     */
    private String student;
    private String studentName;

    private String time;
    private String type;



    @TableField(exist = false)
    private String sign;
    private Float score;

}