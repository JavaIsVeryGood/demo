package com.example.demo.mapper;

import com.example.demo.pojo.Xpaths;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
@Mapper
public interface ResultMapper {

    final String TABLE_NAME = " all_xpath ";
    final String TABLE_FIELD = " filename1,xpath1,filename2,xpath2,updateTime,pId ";

    @Insert("INSERT INTO" + TABLE_NAME +"("+ TABLE_FIELD +") VALUES(#{filename1},#{xpath1},#{filename2},#{xpath2},#{updateTime},#{pId})")
    public int insertXpath(Xpaths xpaths);

    @Select("select filename1 , filename2 from " + TABLE_NAME  )
    public List<Xpaths> selectBothFilename();

    @Select("select * from " + TABLE_NAME)
    List<Xpaths> selectXpaths();
}
