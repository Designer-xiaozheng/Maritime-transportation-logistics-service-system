package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *班级成绩：(ClassGrade)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ClassGrade")
public class ClassGrade implements Serializable {

    //ClassGrade编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "class_grade_id")
    private Integer class_grade_id;
    // 教师工号
    @Basic
    private Integer teacher_job_number;
    // 教师姓名
    @Basic
    private String teacher_name;
    // 考试名称
    @Basic
    private String test_name;
    // 班级名称
    @Basic
    private String class_name;
    // 考试人数
    @Basic
    private Integer number_of_examinees;
    // 最高分
    @Basic
    private String highest_score;
    // 最低分
    @Basic
    private String lowest_score;
    // 平均分
    @Basic
    private String average;
    // 备注
    @Basic
    private String remarks;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
