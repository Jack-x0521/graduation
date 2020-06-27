package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 * 实体类
 *
 *
 */
@Data
@TableName("gm_log")
public class Log implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 用户
     */
    private String userName;
    /**
     * 操作
     */
    private String operation;
    /**
     * 时间
     */
    private String time;
}