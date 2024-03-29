package com.example.demo.pojo;

public class Node {

    private String id;
    private String parent;
    private String text;
    private String icon;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "{" +
                "\"id\":\"" + id + '\"' +
                ", \"parent\":\"" + parent + '\"' +
                ", \"text\":\"" + text + '\"' +
                ", \"icon\":\"" + icon + '\"' +
                '}';
    }
}
