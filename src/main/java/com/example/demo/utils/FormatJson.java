package com.example.demo.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.example.demo.pojo.Node;

import java.util.*;

public class FormatJson {
    public static List<Node> nodeList = null;                           //存放每一个节点
    static List<Map<String, Object>> queue = new LinkedList<Map<String, Object>>();                       //使用广度优先遍历二叉树的思想，用队列存储每一个非叶子节点
    static int index = 0;

    public FormatJson() {
        nodeList = new ArrayList<Node>();
        queue = new LinkedList<Map<String, Object>>();
        index = 0;
    }

    public static void jsonLoop(Object object, String pId) {

        if (object instanceof JSONObject) {                              //如果是JSONObject，直接循环遍历
            JSONObject jsonObject = (JSONObject) object;
            for (Map.Entry<String, Object> entry : jsonObject.entrySet()) {
                String s = entry.getKey();
                if (!(entry.getValue() instanceof JSONArray) && !(entry.getValue() instanceof JSONObject)) {      //如果是叶子节点，直接记录在nodeList中
                    Node node = new Node();
                    node.setId(String.valueOf(index));
                   /* if (entry.getKey().startsWith("@"))
                         node.setText(s.substring(1));
                    else*/
                    node.setText(s);
                    node.setParent(pId);
                    node.setIcon("jstree-file");
                    nodeList.add(node);
                    ++index;
                } else {                                                 //否则，记录此节点在nodeList中，并记录该节点的值在队列中。
                    Node node = new Node();
                    node.setId(String.valueOf(index));
                    node.setText(s);
                    node.setParent(pId);
                    node.setIcon("jstree-folder");
                    nodeList.add(node);
                    Map<String, Object> map = new HashMap<String, Object>();
                    map.put("id", String.valueOf(index));
                    map.put("value", entry.getValue());
                    queue.add(map);
                    ++index;
                }
            }
        }

        if (object instanceof JSONArray) {          //如果是JSONArray，那么对json数组的每一个元素进行递归遍历
            JSONArray jsonArray = (JSONArray) object;
            List<String> list = new ArrayList<String>();
            for (int i = 0; i < jsonArray.size(); i++) {            //去重（json数组的重复）
                if (i == 0) {
                    jsonLoop(jsonArray.get(i), pId);
                    JSONObject jsonObject = null;
                    if (jsonArray.get(i) instanceof JSONObject) {
                        try {
                            jsonObject = (JSONObject) jsonArray.get(i);
                        } catch (Exception e) {
                            System.out.println(jsonArray.get(i));
                        }
                        for (Map.Entry<String, Object> entry : jsonObject.entrySet()) {
                            list.add(entry.getKey());
                        }
                    }

                } else {
                    if (jsonArray.get(i) instanceof JSONObject) {
                        JSONObject jsonObject = (JSONObject) jsonArray.get(i);
                        for (Map.Entry<String, Object> entry : jsonObject.entrySet()) {
                            if (!list.contains(entry.getKey())) {
                                jsonLoop(JSONObject.parseObject(JSON.toJSONString(entry)), pId);
                            }
                        }
                    }
                }
            }
        }

        while (!queue.isEmpty()) {           //当队列不空时，取出队头元素，进行递归遍历

            Map<String, Object> mapObject = ((LinkedList<Map<String, Object>>) queue).poll();
            String id = (String) mapObject.get("id");
            Object o = mapObject.get("value");
            jsonLoop(o, id);

        }
    }

    public static void main(String[] args) {

       /* Xml2json conver = new Xml2json();
        String json = conver.xml2json();
        JSONObject jsonObject = JSON.parseObject(json, JSONObject.class, Feature.OrderedField);
        System.out.println(jsonObject);
        jsonLoop(jsonObject,"#");
        String result = JSONArray.toJSONString(nodeList);
        System.out.println(result);*/
        /*for (int i=0;i<nodeList.size();i++){
            System.out.println(nodeList.get(i).toString()+",");
        }*/
        //  System.out.println(nodeList);
    }
}
