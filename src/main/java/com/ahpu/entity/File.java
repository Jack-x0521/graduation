package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 *
 */
@Data
@TableName("gm_file")
public class File implements Serializable {
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
     * 附件
     */
    private String url;
    /**
     * 工作
     */
    private String work;
    /**
     * 下一步任务
     */
    private String task;
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
    private String state;
    private String type;
}