package com.ahpu.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.ahpu.entity.News;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * 数据访问层
 */
public interface NewsMapper extends BaseMapper<News> {

}
