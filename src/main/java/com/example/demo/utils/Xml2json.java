package com.example.demo.utils;

import org.apache.commons.io.IOUtils;
import org.json.JSONObject;
import org.json.XML;


import javax.swing.tree.DefaultMutableTreeNode;
import javax.xml.soap.Node;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;


/**
 * xml文件转为json字符串
 */
public class Xml2json {

    public String xml2json(FileInputStream in) {
        //创建XMLSerializer对象

        //FileInputStream in = null;
        JSONObject xmlJSONObj = null;
        try {
            //in = new FileInputStream(new File("C:\\Users\\jinhui.huang\\Downloads\\1OJ_FareReShopperRS.xml"));
            String xml = IOUtils.toString(in,"utf-8");
            //System.out.println(xml);
            xmlJSONObj = XML.toJSONObject(xml);
            //String jsonPrettyPrintString = xmlJSONObj.toString(4);       //设置缩进
            System.out.println(xmlJSONObj);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return xmlJSONObj.toString();


       /* XMLSerializer xmlSerializer = new XMLSerializer();
        //将xml转化为json
        String result = xmlSerializer.read(xml).toString();
        System.out.println(result);
        return result;*/
    }
}
