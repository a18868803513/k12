package com.k12.web;

import com.k12.domain.Tb_Grade;
import com.k12.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
@Controller
public class GradeController {
    @Autowired
    GradeService gradeService;
    @RequestMapping("gradeList")
    @ResponseBody
    public List<Tb_Grade> a(){
         return gradeService.selectAll();
    }
}
