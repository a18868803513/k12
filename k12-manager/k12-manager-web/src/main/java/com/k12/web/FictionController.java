package com.k12.web;

import com.k12.domain.Tb_Fiction;
import com.k12.service.FictionService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by LB on 2017/9/12.
 */
@Controller
@Scope("prototype")
public class FictionController {
    @Autowired
    private FictionService fictionService;

    @RequestMapping("/showFiction")
    //@ResponseBody
    public String test1(HttpServletRequest request) throws Exception {

        Configuration config = new Configuration(Configuration.VERSION_2_3_26);
        config.setDefaultEncoding("utf-8");
        config.setServletContextForTemplateLoading(request.getServletContext(), "WEB-INF/ftl");
       List<Tb_Fiction> list =fictionService.queryAll();
        Map<String, Object> map = new HashMap<>();
        System.out.println(list);

        map.put("fictionlist", list);
        Template template = config.getTemplate("fictionTitle_list.ftl");
        Writer writer = new OutputStreamWriter(new FileOutputStream(
                new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/fictionTitle.html")));
        System.out.println("路径===="+request.getServletContext().getRealPath("/"));

        template.process(map, writer);
        writer.close();
        map.clear();
        template = config.getTemplate("fictioncon_list.ftl");
        for (Tb_Fiction fictions : list) {
            //获得原网页这个content属性， 并拆分正文
            Document doc = Jsoup.parse(fictions.getContent());
            //从原网页上的正文板块获得img标签
            /*Elements ets=doc.getElementsByTag("a");
            for (int i = 0; i < ets.size(); i++) {
                Element element = ets.get(i);
                //给img标签添加属性（<img src="">） src路径为
                String src = element.attr("src");
                //正则表达式匹配以http开头的路径
                if (!src.matches("^http")) {
                    //带上"http://www.people.com.cn" 是为了在我们自己写的页面中采用这个路径，src就是具体图片的路径
                    element.attr("src","http://www.people.com.cn"+src);
                }
            }*/
            //最终将img这个带有完整路径的标签设置到我们数据库中content属性中
            fictions.setContent(doc.html());
            map.put("n", fictions);
            writer = new OutputStreamWriter(new FileOutputStream(
                    //request.getServletContext().getRealPath("/")获得本工程的路径
                    new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/"+"xxxx"+fictions.getId()+".html")));
            template.process(map, writer);
            writer.close();
        }
        return "fiction.html";
    }

    @RequestMapping("/selectByHeadline")
    @ResponseBody
    public Tb_Fiction selectByHeadline(String headline) {
        return fictionService.selectByHeadline(headline);
    }

    @RequestMapping("/selectByTitle")
    @ResponseBody
    public Tb_Fiction selectByTitle(String title) {
        return fictionService.selectByHeadline(title);
    }
}
