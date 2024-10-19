package com.projects.MavenProjects.model;

public class ExamData {
    private String q1;
    private String q2;
    public String getq1(){
        return q1;
    }
    public void setq1(String q1){
        this.q1 =q1;
    }
    public void setq2(String q2){
        this.q2 =q2;
    }
    public String getq2(){
        return q2;
    }


    @Override
    public String toString(){
        return "{\"q1\":"+q1+",\"q2\":"+q2+"}";
    }
    public String[]getAnsArray(){
        String[] arr={null,q1,q2};
        return arr;
    }
}
