package com.ahpu.util;

import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br>
 *
 *
 */
@Data
public class TableResultResponse {
    /**
     * 状态,默认值是0,比如成功是200,错误500等
     */
    private int code = 0;
    /**
     * 信息
     */
    private String msg = "";
    /**
     * 总数
     */
    private long count = 0;
    /**
     * 数据
     */
    private List<Map<String, Object>> data;
}