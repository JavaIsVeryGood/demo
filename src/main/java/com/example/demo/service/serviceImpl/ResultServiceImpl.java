package com.example.demo.service.serviceImpl;

import com.example.demo.mapper.ResultMapper;
import com.example.demo.pojo.Xpaths;
import com.example.demo.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
