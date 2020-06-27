package com.ahpu.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Log;
import com.ahpu.service.LogService;
import com.ahpu.service.UserService;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import com.ahpu.util.TableResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈〉<br>
 *
 */
@Controller
@RequestMapping("/log")
public class LogController {
    @Autowired
    private LogService logService;
    @Autowired
    private UserService userService;

    /**
     * 管理界面跳转
     *
     */
    @RequestMapping("/index.do")
    public ModelAndView enIndex(ModelAndView mv) {
        mv.setViewName("log/index");
        return mv;
    }

    /**
     * 管理界面列表
     *
     */
    @ResponseBody
    @GetMapping("log.do")
    public TableResultResponse enlistmentTables(Log log, int page, int limit) {
        List<Map<String, Object>> infoList = new ArrayList<>();
        Page<Log> pageInfo = logService.selectPage(log, page, limit);
        for (Log record : pageInfo.getRecords()) {
            Map<String, Object> resultMap = new HashMap<>(16);
            resultMap.put("id", record.getId());
            resultMap.put("userName", record.getUserName());
            resultMap.put("operation", record.getOperation());
            resultMap.put("time", record.getTime() == null ? "" : record.getTime().substring(0, 19));
            infoList.add(resultMap);
        }
        return Result.tableResule(pageInfo.getTotal(), infoList);
    }

    /**
     * 删除
     *
     */
    @ResponseBody
    @DeleteMapping("/log.do")
    public ResultResponse delEn(String id) {
        boolean result = logService.delById(id);
        if (!result) {
            return Result.resuleError("删除失败");
        }
        return Result.resuleSuccess();
    }
}