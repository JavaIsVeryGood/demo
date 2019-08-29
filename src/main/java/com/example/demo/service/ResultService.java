package com.example.demo.service;


import com.example.demo.pojo.Xpaths;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


public interface ResultService {

    public boolean saveXpath(Xpaths xpaths);

    public Map<String,String> selectBothFilename();
}
