package com.example.demo.service;


import com.example.demo.pojo.Xpaths;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


public interface ResultService {

     boolean saveXpath(Xpaths xpaths);

     Map<String,String> selectBothFilename();

     List<Xpaths> selectXpaths();

}
