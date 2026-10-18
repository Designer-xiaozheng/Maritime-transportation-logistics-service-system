package com.project.demo.controller;

import com.project.demo.entity.ExaminationNotice;
import com.project.demo.service.ExaminationNoticeService;
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
 *考试通知：(ExaminationNotice)表控制层
 *
 */
@RestController
@RequestMapping("/examination_notice")
public class ExaminationNoticeController extends BaseController<ExaminationNotice,ExaminationNoticeService> {

    /**
     *考试通知对象
     */
    @Autowired
    public ExaminationNoticeController(ExaminationNoticeService service) {
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
