package com.ahpu.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ahpu.entity.File;
import com.ahpu.mapper.ChoseMapper;
import com.ahpu.mapper.FileMapper;
import com.ahpu.service.FileService;
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
public class FileServiceImpl implements FileService {
    @Resource
    private FileMapper FileMapper;
    @Resource
    private ShiroUtils shiroUtils;
    @Resource
    private ChoseMapper choseMapper;

    @Override
    public Page<File> selectPage(File entity, int page, int limit) {
        EntityWrapper<File> searchInfo = new EntityWrapper<>();
        Page<File> pageInfo = new Page<>(page, limit);
        if (shiroUtils.stringIsNotBlack(entity.getName())) {
            searchInfo.eq("name", entity.getName());
        }
        if (shiroUtils.stringIsNotBlack(entity.getStudent())) {
            searchInfo.eq("student", entity.getStudent());
        }
        if (shiroUtils.stringIsNotBlack(entity.getTeacher())) {
            searchInfo.eq("teacher", entity.getTeacher());
        }
        if (shiroUtils.stringIsNotBlack(entity.getType())) {
            searchInfo.eq("type", entity.getType());
        }
        List<File> resultList = FileMapper.selectPage(pageInfo, searchInfo);
        if (!resultList.isEmpty()) {
            pageInfo.setRecords(resultList);
        }
        return pageInfo;
    }

    @Override
    public boolean insert(File entity) {
        entity.setTime(DateUtil.getNowDateSS());
        Integer insert = FileMapper.insert(entity);
        if (insert > 0) {
            return true;
        }
        return false;
    }


    @Override
    public boolean delById(String id) {
        Integer delete = FileMapper.deleteById(id);
        if (delete > 0) {

            return true;
        }
        return false;
    }

    @Override
    public boolean edit(File entity) {
        Integer update = FileMapper.updateById(entity);
        if (update > 0) {
            return true;
        }
        return false;
    }


    @Override
    public File getOne(String id) {
        return FileMapper.selectById(id);
    }

    @Override
    public List<File> getList() {
        EntityWrapper<File> wrapper = new EntityWrapper<>();
        List<File> FileList = FileMapper.selectList(wrapper);
        return FileList;
    }


    @Override
    public boolean isHave(String student,String type) {
        EntityWrapper<File> wrapper = new EntityWrapper<>();
        wrapper.eq("student", student);
        wrapper.eq("type", type);
        List<File> FileList = FileMapper.selectList(wrapper);
        return FileList.isEmpty();
    }


}