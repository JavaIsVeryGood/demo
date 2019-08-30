package com.example.demo.controller;
/**
 * 将数据存储在数据库中，并展示在结果页
 */

import com.example.demo.mapper.ResultMapper;
import com.example.demo.pojo.Xpaths;
import com.example.demo.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ResultController {

    @Autowired
    ResultService resultService;

    //保存xpath数据
    @RequestMapping(value = "/saveXpath")
    @ResponseBody
    public boolean saveXpath(String filename1,String filename2,String xpath1,String xpath2){

        System.out.println("filename1:"+filename1+"filename2:"+filename2+"xpath1:"+xpath1+"xpath2:"+xpath2);
        if (filename1 == null || filename2 == null || xpath1 == "" || xpath1 == null || xpath2 == "" || xpath2 == null)
            return false;
        Xpaths xpaths = new Xpaths();
        xpaths.setFilename1(filename1);
        xpaths.setFilename2(filename2);
        xpaths.setpId(1);
        xpaths.setXpath1(xpath1);
        xpaths.setXpath2(xpath2);
        xpaths.setUpdateTime(new Date());
        System.out.println(xpaths.toString());
        boolean isSuccess = resultService.saveXpath(xpaths);
       // System.out.println(resultMapper.insertFilename(filename1,filename2,xpath1,xpath2));
        return isSuccess;
    }

    //查找已上传文件名数据

    @RequestMapping(value = "/filenames")
    @ResponseBody
    public Map<String,String> selectBothFilename(){


        for (Map.Entry<String, String> item : resultService.selectBothFilename().entrySet()){
            System.out.println(item.getKey()+"###"+item.getValue());
        }
         return  resultService.selectBothFilename();

    }

    //上传所有xpaths
    @RequestMapping(value = "/allXpaths")
    //@ResponseBody
    public  String selectXpaths(Model model){

        model.addAttribute(resultService.selectXpaths());
        return  "result";
    }

}
