package com.project.demo.controller;

import com.project.demo.entity.TopicAnalysis;
import com.project.demo.service.TopicAnalysisService;
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
 *题目分析：(TopicAnalysis)表控制层
 *
 */
@RestController
@RequestMapping("/topic_analysis")
public class TopicAnalysisController extends BaseController<TopicAnalysis,TopicAnalysisService> {

    /**
     *题目分析对象
     */
    @Autowired
    public TopicAnalysisController(TopicAnalysisService service) {
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
