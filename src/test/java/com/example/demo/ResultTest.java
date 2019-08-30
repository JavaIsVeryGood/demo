package com.example.demo;

import com.example.demo.mapper.ResultMapper;
import com.example.demo.pojo.Xpaths;
import com.example.demo.service.ResultService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@WebAppConfiguration
public class ResultTest {

    @Autowired
    ResultMapper resultMapper;

    @Autowired
    ResultService resultService;
    @Test
    public void test() throws ParseException {
        Date dt = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(dt);

        Xpaths xpaths = new Xpaths();
        xpaths.setFilename1("filename1");
        xpaths.setFilename2("filename2");
        xpaths.setpId(1);
        xpaths.setXpath1("xpath1");
        xpaths.setXpath2("xpath2");
        xpaths.setUpdateTime(new Date());
      //  System.out.println(currentTime);
        //resultMapper.insertXpath(xpaths);

        //resultService.selectBothFilename();

        resultService.selectXpaths();
    }
}
