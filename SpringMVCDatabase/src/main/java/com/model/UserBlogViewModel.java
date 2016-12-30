package com.model;

import java.util.Date;

/**
 * Created by saif23 on 11/23/2016.
 */
public class UserBlogViewModel {

    private int commentID;


    private long user_id;


    private Date postDate;

    private String subjectOfComment;


    private String descriptionOfComment;

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getSubjectOfComment() {
        return subjectOfComment;
    }

    public void setSubjectOfComment(String subjectOfComment) {
        this.subjectOfComment = subjectOfComment;
    }

    public String getDescriptionOfComment() {
        return descriptionOfComment;
    }

    public void setDescriptionOfComment(String descriptionOfComment) {
        this.descriptionOfComment = descriptionOfComment;
    }
}
