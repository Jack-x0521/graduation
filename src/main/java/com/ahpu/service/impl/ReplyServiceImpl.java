package com.ahpu.service.impl;

import com.ahpu.entity.User;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.Reply;
import com.ahpu.mapper.ChoseMapper;
import com.ahpu.mapper.ReplyMapper;
import com.ahpu.service.ReplyService;
import com.ahpu.util.DateUtil;
import com.ahpu.util.ShiroUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 *
 */
@Service
public class ReplyServiceImpl implements ReplyService {
    @Resource
    private ReplyMapper ReplyMapper;
    @Resource
    private ShiroUtils shiroUtils;
    @Resource
    private ChoseMapper choseMapper;

    @Override
    public Page<Reply> selectPage(Reply entity, int page, int limit) {
        EntityWrapper<Reply> searchInfo = new EntityWrapper<>();
        Page<Reply> pageInfo = new Page<>(page, limit);
        if (shiroUtils.stringIsNotBlack(entity.getName())) {
            searchInfo.eq("name", entity.getName());
        }
        if (shiroUtils.stringIsNotBlack(entity.getStudents())) {
            searchInfo.like("students", entity.getStudents());
        }
        if (shiroUtils.stringIsNotBlack(entity.getStudentsName())) {
            searchInfo.like("studentsName", entity.getStudentsName());
        }

        if (shiroUtils.stringIsNotBlack(entity.getTeachers())) {
            searchInfo.like("teachers", entity.getTeachers());
        }
        
        if (shiroUtils.stringIsNotBlack(entity.getGroupUser())) {
            searchInfo.like("groupUser", entity.getGroupUser());
        }
        List<Reply> resultList = ReplyMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public boolean insert(Reply entity) {

        entity.setTime(DateUtil.getNowDateSS());
        Integer insert = ReplyMapper.insert(entity);
        if (insert > 0) {
            return true;
        }
        return false;
    }


    @Override
    public boolean delById(String id) {
        Integer delete = ReplyMapper.deleteById(id);
        if (delete > 0) {

            return true;
        }
        return false;
    }

    @Override
    public boolean edit(Reply entity) {
        Integer update = ReplyMapper.updateById(entity);
        if (update > 0) {
            return true;
        }
        return false;
    }


    @Override
    public Reply getOne(String id) {
        return ReplyMapper.selectById(id);
    }

    @Override
    public List<Reply> getList() {
        EntityWrapper<Reply> wrapper = new EntityWrapper<>();
        List<Reply> ReplyList = ReplyMapper.selectList(wrapper);
        return ReplyList;
    }


    @Override
    public boolean isHave(String student, String type) {
        EntityWrapper<Reply> wrapper = new EntityWrapper<>();
        List<Reply> ReplyList = ReplyMapper.selectList(wrapper);
        return ReplyList.isEmpty();
    }


}