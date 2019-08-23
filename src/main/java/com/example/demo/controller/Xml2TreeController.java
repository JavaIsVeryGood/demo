package com.example.demo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.example.demo.pojo.Node;
import com.example.demo.utils.FormatJson;
import com.example.demo.utils.Xml2json;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@Controller
public class Xml2TreeController {

    @RequestMapping(value = {"/","/index"})
   // @ResponseBody
    public String index(){
        return "hello";
    }

    @RequestMapping(value = "/upload",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public List<Node> upload(@RequestParam("file")MultipartFile file) throws IOException {
        /*if (file.isEmpty())
            return "上传失败，请重新选择文件！";*/
        FileInputStream inputStream = (FileInputStream) file.getInputStream();
        Xml2json conver = new Xml2json();
        String json = conver.xml2json(inputStream);
        JSONObject jsonObject = JSON.parseObject(json, JSONObject.class, Feature.OrderedField);
       // System.out.println(jsonObject);
        FormatJson formatJson = new FormatJson();
       // formatJson.nodeList = null;
        formatJson.jsonLoop(jsonObject,"#");
        String result = JSONArray.toJSONString(formatJson.nodeList);
        System.out.println(formatJson.nodeList.size());
        return formatJson.nodeList;
    }


}
