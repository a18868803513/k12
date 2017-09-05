package com.k12.web;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_Video;
import com.k12.service.VideoService;
import com.k12.utils.PageBean;
import com.k12.utils.Result;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by LB on 2017/9/3.
 */
@Controller
@Scope("prototype")
public class VideoController {
    @Autowired
    private VideoService videoService;

    @ModelAttribute("dir")
    public File pre(HttpServletRequest request) {
        File dir = new File(new File(request.getServletContext().getRealPath("/")).getParent(), "my_video");
        // 验证文件夹是否存在，不存在就新建
        if (!dir.exists()) {
            dir.mkdirs();
        }
        System.out.println(dir);
        return dir;
    }

    @RequestMapping("/addvideo")
    public String addVideo(@RequestParam(name = "file", required = false) MultipartFile mfile, @ModelAttribute("dir") File dir
            , Tb_Video video, int grade1, int course1) throws IOException {
        System.out.println("grade=" + grade1 + "course=" + course1);
        Tb_Grade tb_grade = new Tb_Grade();
        tb_grade.setId(grade1);
        Tb_Course tb_course = new Tb_Course();
        tb_course.setId(course1);

        if (!mfile.isEmpty() && mfile.getSize() > 0) {
            // 获取上传的文件的名称
            String fileName = mfile.getOriginalFilename();
            // 设置文件存储位置--->当前项目的平级目录下
            // 限制文件名称最长位50，若超出截取后面部分
            if (fileName.length() > 50) {
                fileName = fileName.substring(fileName.length() - 51);
            }
            File file = new File(dir, System.currentTimeMillis() + "_" + fileName);
            // 将文件内容存储在自定义文件中
            mfile.transferTo(file);
            video.setUrl(file.getName());
        }
        video.setGrade(tb_grade);
        video.setCourse(tb_course);
        System.out.println("--------------" + video);
        videoService.add(video);
        return "ManagerIndex";
    }

    @RequestMapping("/addv")
    public String addv() {
        return "addvideo";
    }

    @RequestMapping("/queryAllByPage")
    @ResponseBody
    public Result<Tb_Video> queryAllByPage(PageBean pageBean) {
        System.out.println(pageBean);
        return videoService.queryAllByPage(pageBean);
    }

    //批量删除 实则就是批量修改
    @RequestMapping("/removeVideo")
    public String test1(@Param("ids") String ids) {
        System.out.println("+++++");
        String[] arr = ids.split(",");
        List<String> list = Arrays.asList(arr);
        for (int i = 0; i < list.size(); i++) {
            videoService.removeVideo(Integer.parseInt(list.get(i)));
        }
        return "video1";
    }
    @RequestMapping("/upVideo")
    public String test2(@Param("ids") String ids) {
        System.out.println("+++++");
        String[] arr = ids.split(",");
        List<String> list = Arrays.asList(arr);
        for (int i = 0; i < list.size(); i++) {
            videoService.upVideo(Integer.parseInt(list.get(i)));
        }
        return "video1";
    } @RequestMapping("/downVideo")
      public String test3(@Param("ids") String ids) {
        System.out.println("+++++");
        String[] arr = ids.split(",");
        List<String> list = Arrays.asList(arr);
        for (int i = 0; i < list.size(); i++) {
            videoService.downVideo(Integer.parseInt(list.get(i)));
        }
        return "video1";
    }
}


