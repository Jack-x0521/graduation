package com.ahpu.controller;



import com.ahpu.entity.WbeParameter;
import com.ahpu.service.WbeParameterService;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @Description: 网站设置相关接口
 */
@RequestMapping("/wbeSet")
@Controller
public class WebSiteSetUpController {
    private static final transient Logger log = LoggerFactory.getLogger(WebSiteSetUpController.class);
    @Autowired
    private WbeParameterService wbeParameterService;

    /**
     * 网站参数设置页面跳转接口
     *
     */
    @GetMapping("/wbeParameter.do")
    public ModelAndView wbeParameter(ModelAndView mv) {
        WbeParameter wbeParameter = wbeParameterService.getWbeParameter();
        mv.addObject("wbeParameter", wbeParameter);
        mv.setViewName("/wbeParameter/index");
        return mv;
    }


    /**
     * 修改网站参数的接口
     *
     */
    @ResponseBody
    @PutMapping("/wbeParameter.do")
    public ResultResponse editWbeParameter(WbeParameter wbeParameter) {
        boolean result = wbeParameterService.editById(wbeParameter);
        if (!result) {
            return Result.resuleError("操作失败");
        }
        return Result.resuleSuccess();
    }


}