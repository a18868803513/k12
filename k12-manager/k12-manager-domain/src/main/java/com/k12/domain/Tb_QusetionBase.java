package com.k12.domain;

/**
 * Created by Administrator on 2017/9/2/002.
 */
//题库
public class Tb_QusetionBase {
    private int id;
    private String question;
    private String answer;
    private Tb_Grade tb_grade;
    private Tb_Course tb_course;
    private int cc;

    public Tb_Grade getTb_grade() {
        return tb_grade;
    }

    public void setTb_grade(Tb_Grade tb_grade) {
        this.tb_grade = tb_grade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }



    public Tb_Course getTb_course() {
        return tb_course;
    }

    public void setTb_course(Tb_Course tb_course) {
        this.tb_course = tb_course;
    }

    @Override
    public String toString() {
        return "Tb_QusetionBase{" +
                "id=" + id +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", Tb_grade=" + tb_grade +
                ", tb_course=" + tb_course +
                '}';
    }
}