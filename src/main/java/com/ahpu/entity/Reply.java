package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 *答辩
 */
@Data
@TableName("gm_reply")
public class Reply implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 答辩组
     */
    private String name;
    /**
     * 答辩地点
     */
    private String place;
    /**
     * 答辩时间
     */
    private String time;
    /**
     * 答辩组长
     */
    private String groupUser;
    /**
     * 教师
     */
    private String teachers;

    /**
     * 学生
     */
    private String students;
    private String studentsName;


}