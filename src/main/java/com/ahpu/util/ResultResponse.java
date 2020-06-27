package com.ahpu.util;

import lombok.Data;

/**
 * 〈一句话功能简述〉<br>
 *
 *
 */
@Data
public class ResultResponse {
    /**
     * 状态码:默认为0,
     */
    private int code;
    /**
     * 状态
     */
    private boolean status=false;
    /**
     * 返回信息
     */
    private String msg;
    /**
     * 返回数据
     */
    private Object obje;

    public void setCode(int code) {
        if (code == 0) {
            this.status = true;
        }
        this.code = code;
    }
}