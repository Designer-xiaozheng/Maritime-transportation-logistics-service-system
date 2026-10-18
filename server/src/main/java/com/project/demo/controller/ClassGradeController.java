package com.project.demo.controller;

import com.project.demo.entity.ClassGrade;
import com.project.demo.service.ClassGradeService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 *班级成绩：(ClassGrade)表控制层
 *
 */
@RestController
@RequestMapping("/class_grade")
public class ClassGradeController extends BaseController<ClassGrade,ClassGradeService> {

    /**
     *班级成绩对象
     */
    @Autowired
    public ClassGradeController(ClassGradeService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
