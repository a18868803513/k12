package com.k12.web;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_Video;
import com.k12.service.VideoService;
import com.k12.utils.Order;
import com.k12.utils.PageBean;
import com.k12.utils.Result;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
        File dir = new File(new File(request.getServletContext().getRealPath("/")), "my_video");
        // 验证文件夹是否存在，不存在就新建
        if (!dir.exists()) {
            dir.mkdirs();
        }
        System.out.println(dir);
        return dir;
    }

    /*@RequestMapping("/addvideo")
    public String addVideo(@RequestParam(name = "file", required = false) MultipartFile mfile, @ModelAttribute(value = "dir") File dir
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
    }*/

    @RequestMapping("/addvideo")
    public String addVideo(@RequestParam(name = "file", required = false) CommonsMultipartFile[] mfiles, @ModelAttribute(value = "dir") File dir
            , Tb_Video video, int grade1, int course1) throws IOException {
        System.out.println("grade=" + grade1 + "course=" + course1);
        Tb_Grade tb_grade = new Tb_Grade();
        tb_grade.setId(grade1);
        Tb_Course tb_course = new Tb_Course();
        tb_course.setId(course1);

        for (int i = 0; i < mfiles.length; i++) {

            if (!mfiles[i].isEmpty() && mfiles[i].getSize() > 0) {
                // 获取上传的文件的名称
                if (mfiles[i].getOriginalFilename().endsWith(".mp4") || mfiles[i].getOriginalFilename().endsWith(".MP4")) {
                    String fileName = mfiles[i].getOriginalFilename();
                    // 设置文件存储位置--->当前项目的平级目录下
                    // 限制文件名称最长位50，若超出截取后面部分

                    if (fileName.length() > 50) {
                        fileName = fileName.substring(fileName.length() - 51);
                    }
                    File file1 = new File(dir, System.currentTimeMillis() + "_" + fileName);
                    mfiles[i].transferTo(file1);
                    video.setUrl(file1.getName());
                } else {
                    String fileName1 = mfiles[i].getOriginalFilename();
                    System.out.println(fileName1 + "???");
                    if (fileName1.length() > 50) {
                        fileName1 = fileName1.substring(fileName1.length() - 51);
                    }
                    File file2 = new File(dir, System.currentTimeMillis() + "_" + fileName1);
                    System.out.println(file2 + "?????");
                    mfiles[i].transferTo(file2);
                    video.setImgpath(file2.getName());
                }
            }
        }
        video.setGrade(tb_grade);
        video.setCourse(tb_course);
        System.out.println("--------------" + video);
        videoService.add(video);
        return "ManagerIndex";
    }

    @RequestMapping("/queryAllByPage")
    @ResponseBody
    public Result<Tb_Video> queryAllByPage(PageBean pageBean, String gid, String cid, Order order, String statusId, String name) throws UnsupportedEncodingException {
        name = new String(name.getBytes("ISO8859_1"), "utf-8");
        System.out.println(videoService.queryAllByPage(pageBean, gid, cid, order, statusId, name));
        return videoService.queryAllByPage(pageBean, gid, cid, order, statusId, name);
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
        return "video-list";

    }

    @RequestMapping("/upVideo")
    public String test2(@Param("ids") String ids) {
        System.out.println("+++++");
        String[] arr = ids.split(",");
        List<String> list = Arrays.asList(arr);
        for (int i = 0; i < list.size(); i++) {
            videoService.upVideo(Integer.parseInt(list.get(i)));
        }
        return "video-list";
    }

    @RequestMapping("/downVideo")
    public String test3(@Param("ids") String ids) {
        System.out.println("+++++");
        String[] arr = ids.split(",");
        List<String> list = Arrays.asList(arr);
        for (int i = 0; i < list.size(); i++) {
            videoService.downVideo(Integer.parseInt(list.get(i)));
        }
        return "video-list";
    }

    @RequestMapping("/Uvideo")
    public String test4(Tb_Video tb_video, String name, String introduction) throws UnsupportedEncodingException {
        name = new String(name.getBytes("ISO8859_1"), "utf-8");
        introduction = new String(introduction.getBytes("ISO8859_1"), "utf-8");
        tb_video.setIntroduction(introduction);
        tb_video.setName(name);
        videoService.updateVideo(tb_video);
        return "ManagerIndex.jsp";
    }

    @RequestMapping("/showAllVideo")
    public String test5(Model model) {
        model.addAttribute("list", videoService.queryAll());
        System.out.println(videoService.queryAll().size());
        return "video-index.jsp";
    }

    @RequestMapping("/showVideo")
    public String test6(Model model, String id) {
        int id1 = Integer.parseInt(id);
        model.addAttribute("tb_video", videoService.queryById(id1));
        System.out.println(videoService.queryById(id1));
        return "play-video.jsp";
    }
    @RequestMapping("/lookVideo")
    //@ResponseBody
    public String test7(Model model, String gid,String cid){
        model.addAttribute("list",videoService.listVideosById(Integer.parseInt(gid),Integer.parseInt(cid)));
        return "video-index.jsp";
    }
}



