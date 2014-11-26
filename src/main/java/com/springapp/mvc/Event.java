package com.springapp.mvc;

/**
 * Created by pankhurikaushik on 20/11/14.
 */

public class Event {

    private int id;
    private String name;
    private String xmlFormat;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getXmlFormat() {
        return xmlFormat;
    }

    public void setXmlFormat(String xmlFormat) {
        this.xmlFormat = xmlFormat;
    }

}