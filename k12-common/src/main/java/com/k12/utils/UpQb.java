package com.k12.utils;

import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2017/9/7/007.
 */
public class UpQb {
    String question;
    String answer;
    String id;

    public String getAnswer() throws UnsupportedEncodingException {
        return  answer= new String(answer.getBytes("ISO8859_1"),"utf-8");

    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getQuestion() {

        return question;


    }

    public void setQuestion(String question) {
        this.question = question;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "UpQb{" +
                "question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", id='" + id + '\'' +
                '}';
    }
}
