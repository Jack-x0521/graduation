package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 *
 *
 */
@Data
@TableName("gm_chose")
public class Chose implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 课题id
     */
    private String ptId;
    /**
     * 状态
     */
    private String state;
    /**
     * 学生
     */
    private String student;
    private String studentName;
    /**
     * 学生联系方式
     */
    private String iphone;
    private String time;

}