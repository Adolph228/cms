package com.neo.entity;

import java.io.Serializable;
import java.util.Date;

public class Consultation implements Serializable {
   
    private Long id;

   
    private String title;

   
    private String brief;

    
    private String location;

   
    private String cover;

    
    private Date publishDate;

   
    private String author;

   
    private String content;

    
    private static final long serialVersionUID = 1L;

    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    
    public String getTitle() {
        return title;
    }

   
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getBrief() {
        return brief;
    }

   
    public void setBrief(String brief) {
        this.brief = brief == null ? null : brief.trim();
    }

    public String getLocation() {
        return location;
    }

   
    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

   
    public String getCover() {
        return cover;
    }

   
    public void setCover(String cover) {
        this.cover = cover == null ? null : cover.trim();
    }

   
    public Date getPublishDate() {
        return publishDate;
    }

   
    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getAuthor() {
        return author;
    }

   
    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    
    public String getContent() {
        return content;
    }

  
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}