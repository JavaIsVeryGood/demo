package com.example.demo.pojo;

import java.util.Date;

public class Xpaths {

    private int id;

    private String filename1;

    private String xpath1;

    public String getFilename2() {
        return filename2;
    }

    public void setFilename2(String filename2) {
        this.filename2 = filename2;
    }

    private String filename2;

    private String xpath2;

    private Date updateTime;

    private int pId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFilename1() {
        return filename1;
    }

    public void setFilename1(String filename1) {
        this.filename1 = filename1;
    }

    public String getXpath1() {
        return xpath1;
    }

    public void setXpath1(String xpath1) {
        this.xpath1 = xpath1;
    }



    public String getXpath2() {
        return xpath2;
    }

    public void setXpath2(String xpath2) {
        this.xpath2 = xpath2;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    @Override
    public String toString() {
        return "Xpaths{" +
                "id=" + id +
                ", filename1='" + filename1 + '\'' +
                ", xpath1='" + xpath1 + '\'' +
                ", fiename2='" + filename2 + '\'' +
                ", xpath2='" + xpath2 + '\'' +
                ", updateTime=" + updateTime +
                ", pId=" + pId +
                '}';
    }
}
