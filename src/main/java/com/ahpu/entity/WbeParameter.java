package com.ahpu.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 * 网站参数实体类
 *
 *
 */
@Data
@TableName("gm_wbeParameter")
public class WbeParameter implements Serializable {
    /**
     * 自增长主键
     */
    @TableId(value = "id", type = IdType.UUID)
    private String id;
    /**
     * 系统名称设置
     */
    private String name;

    /**
     * 联系方式
     */
    private String iphone;
    private String email;


}