package com.k12.web;

import com.k12.domain.Tb_Course;
import com.k12.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/9/4/004.
 */
@Controller
public class CourseController {
    @Autowired
    CourseService courseService;
    @ResponseBody
    @RequestMapping("courseById")
    public Tb_Course a(int cid){
        return courseService.selectById(cid);

    }
    @ResponseBody
    @RequestMapping("courseList")
    public List<Tb_Course> b(){
        System.out.print(courseService.selectAll());
        return courseService.selectAll();
    }
}
