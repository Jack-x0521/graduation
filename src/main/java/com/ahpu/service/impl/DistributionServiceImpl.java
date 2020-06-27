package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Chose;
import com.ahpu.entity.Distribution;
import com.ahpu.mapper.ChoseMapper;
import com.ahpu.mapper.DistributionMapper;
import com.ahpu.service.DistributionService;
import com.ahpu.util.DateUtil;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 *
 *
 */
@Service
public class DistributionServiceImpl implements DistributionService {
    @Resource
    private DistributionMapper DistributionMapper;
    @Resource
    private ShiroUtils shiroUtils;
    @Resource
    private ChoseMapper choseMapper;

    @Override
    public Page<Distribution> selectPage(Distribution entity, int page, int limit) {
        EntityWrapper<Distribution> searchInfo = new EntityWrapper<>();
        Page<Distribution> pageInfo = new Page<>(page, limit);
        if (shiroUtils.stringIsNotBlack(entity.getName())) {
            searchInfo.like("name", entity.getName());
        }

        if (shiroUtils.stringIsNotBlack(entity.getStudent())) {
            searchInfo.like("student", entity.getStudent());
        }
        if (shiroUtils.stringIsNotBlack(entity.getStudentName())) {
            searchInfo.like("studentName", entity.getStudentName());
        }
        if (shiroUtils.stringIsNotBlack(entity.getTeacherName())) {
            searchInfo.like("teacherName", entity.getTeacherName());
        }

        if (shiroUtils.stringIsNotBlack(entity.getType())) {
            searchInfo.eq("type", entity.getType());
        }
        if("score".equals(entity.getSign())){
            searchInfo.eq("state","已确认双选");
            searchInfo.or().eq("state","确认通过").clone();
        }else {
            if (shiroUtils.stringIsNotBlack(entity.getTeacher())) {
                searchInfo.like("teacher", entity.getTeacher());
            }
        }
        List<Distribution> resultList = DistributionMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }


        return pageInfo;
    }

    @Override
    public Page<Chose> selectPage(Chose entity, int page, int limit) {
        EntityWrapper<Chose> searchInfo = new EntityWrapper<>();
        Page<Chose> pageInfo = new Page<>(page, limit);
        if (shiroUtils.stringIsNotBlack(entity.getPtId())) {
            searchInfo.eq("ptId", entity.getPtId());
        }
        searchInfo.orderBy("state desc");
        List<Chose> resultList = choseMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public boolean insert(Distribution entity) {
        entity.setTime(DateUtil.getNowDateSS());
        Integer insert = DistributionMapper.insert(entity);
        if (insert > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean insert(Chose entity) {
        entity.setTime(DateUtil.getNowDateSS());
        entity.setStudent(shiroUtils.getSessionUser().getUserName());
        entity.setState("待审核");
        Integer insert = choseMapper.insert(entity);
        if (insert > 0) {
            return true;
        }
        return false;
    }



    @Override
    public boolean delById(String id) {
        Integer delete = DistributionMapper.deleteById(id);
        if (delete > 0) {

            return true;
        }
        return false;
    }

    @Override
    public boolean delChoseById(String id) {
        Integer delete = choseMapper.deleteById(id);
        if (delete > 0) {

            return true;
        }
        return false;
    }

    @Override
    public boolean edit(Distribution entity) {
        Integer update = DistributionMapper.updateById(entity);
        if (update > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean edit(Chose entity) {
        Integer update = choseMapper.updateById(entity);
        if (update > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean allEdit(String ptId) {
        Chose chose = new Chose();
        chose.setState("已拒绝");
        EntityWrapper<Chose> wrapper = new EntityWrapper<>();
        wrapper.eq("ptId", ptId);
        Integer update = choseMapper.update(chose, wrapper);
        if (update > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Distribution getOne(String id) {
        return DistributionMapper.selectById(id);
    }

    @Override
    public Chose getChose(String id) {
        return choseMapper.selectById(id);
    }

    @Override
    public Distribution getOneByStudent(String student) {
        EntityWrapper<Distribution> wrapper = new EntityWrapper<>();
        wrapper.eq("student", student);
        List<Distribution> distributionList = DistributionMapper.selectList(wrapper);
        if(distributionList.isEmpty()){
            Distribution distribution = new Distribution();
            distribution.setTeacher("指导教师不存在");
            distribution.setName("未选择任何课题");
            return distribution;
        }else {
            return distributionList.get(0);
        }
    }

    @Override
    public List<Distribution> getList() {
        EntityWrapper<Distribution> wrapper = new EntityWrapper<>();
        List<Distribution> distributionList = DistributionMapper.selectList(wrapper);
        return distributionList;
    }

    @Override
    public List<Chose> getChoseList(String ptId) {
        EntityWrapper<Chose> wrapper = new EntityWrapper<>();
        wrapper.eq("ptId", ptId);
        List<Chose> distributionList = choseMapper.selectList(wrapper);
        return distributionList;
    }

    @Override
    public boolean isHave(String student) {
        EntityWrapper<Distribution> wrapper = new EntityWrapper<>();
        wrapper.eq("student", student);
        List<Distribution> distributionList = DistributionMapper.selectList(wrapper);
        return distributionList.isEmpty();
    }

    @Override
    public boolean isHave1(String teacher) {
        EntityWrapper<Distribution> wrapper = new EntityWrapper<>();
        wrapper.eq("teacher", teacher);
        List<Distribution> distributionList = DistributionMapper.selectList(wrapper);
        return distributionList.isEmpty();
    }
    @Override
    public boolean isChose(String student) {
        EntityWrapper<Chose> wrapper = new EntityWrapper<>();
        wrapper.eq("student", student);
        wrapper.ne("state", "已拒绝");
        List<Chose> distributionList = choseMapper.selectList(wrapper);
        return distributionList.isEmpty();
    }

}