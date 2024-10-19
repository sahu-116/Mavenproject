package com.projects.MavenProjects.model;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Doubt")
@Data
public class StudentDoubt {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long slno;
    @Column(name = "semail", nullable = false)
    private String semail;
    @Column(name = "sname", nullable = false)
    private String sname;

    @Column(name = "question", nullable = false)
    private String question;

    @Column(name = "date" ,nullable = false)
    private String date;

    @Column(name = "femail",nullable = false)
    private String femail;
    @Column(name = "fname",nullable = false)
    private String fname;


    @Column(name = "answer",nullable = false)
    private String answer;
}
