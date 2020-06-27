package com.ahpu.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.ahpu.entity.NewsCategory;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * 数据访问层
 */
public interface NewsCategoryMapper extends BaseMapper<NewsCategory> {

}
