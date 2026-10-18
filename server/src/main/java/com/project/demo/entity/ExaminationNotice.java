package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *考试通知：(ExaminationNotice)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ExaminationNotice")
public class ExaminationNotice implements Serializable {

    //ExaminationNotice编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "examination_notice_id")
    private Integer examination_notice_id;
    // 教师工号
    @Basic
    private Integer teacher_job_number;
    // 教师姓名
    @Basic
    private String teacher_name;
    // 考试科目
    @Basic
    private String examination_subjects;
    // 考试班级
    @Basic
    private String examination_class;
    // 考试时间
    @Basic
    private Timestamp examination_time;
    // 考试范围
    @Basic
    private String examination_scope;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
