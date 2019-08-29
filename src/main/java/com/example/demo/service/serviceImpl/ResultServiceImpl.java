package com.example.demo.service.serviceImpl;

import com.example.demo.mapper.ResultMapper;
import com.example.demo.pojo.Xpaths;
import com.example.demo.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ResultServiceImpl implements ResultService {

    @Autowired
    ResultMapper resultMapper;

    @Override
    public boolean saveXpath(Xpaths xpaths) {
        try{
            resultMapper.insertXpath(xpaths);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    public Map<String,String> selectBothFilename() {

        List<Xpaths> xpathsList = resultMapper.selectBothFilename();
        System.out.println(xpathsList.toString());
        Map<String,String> map = new HashMap();
        for (Xpaths xpath:xpathsList){
            map.put(xpath.getFilename1(),xpath.getFilename2());
        }

        for (Iterator<Map.Entry<String, String>> it = map.entrySet().iterator(); it.hasNext();){
            Map.Entry<String, String> item = it.next();
            //... todo with item
            for (String key:map.keySet()){
                if (item.getValue().equals(key)){
                    it.remove();
                    break;
                }
            }
        }

        return map;
    }
}
