package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *题目分析：(TopicAnalysis)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "TopicAnalysis")
public class TopicAnalysis implements Serializable {

    //TopicAnalysis编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "topic_analysis_id")
    private Integer topic_analysis_id;
    // 教师工号
    @Basic
    private Integer teacher_job_number;
    // 教师姓名
    @Basic
    private String teacher_name;
    // 题目
    @Basic
    private String subject;
    // 正确率
    @Basic
    private String correct_rate;
    // 失分原因
    @Basic
    private String reasons_for_losing_points;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
