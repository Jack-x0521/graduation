package com.ahpu.service.impl;


import com.ahpu.entity.WbeParameter;
import com.ahpu.mapper.WbeParameterMapper;
import com.ahpu.service.WbeParameterService;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 网站参数设置接口
 */
@Service
public class WbeParameterServiceImpl implements WbeParameterService {
    @Resource
    private WbeParameterMapper wbeParameterMapper;

    @Resource
    private ShiroUtils shiroUtils;

    @Override
    public boolean editById(WbeParameter wbeParameter) {
        Integer integer = wbeParameterMapper.updateById(wbeParameter);
        if (integer > 0) {
            return true;
        }
        return false;
    }



    @Override
    public WbeParameter getWbeParameter() {
        List<WbeParameter> wbeParameterList = wbeParameterMapper.selectList(null);
        if (wbeParameterList.isEmpty()) {
            return new WbeParameter();
        }
        return wbeParameterList.get(0);
    }


}
