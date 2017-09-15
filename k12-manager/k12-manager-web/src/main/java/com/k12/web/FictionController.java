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
        List<Tb_Headline> list = fictionService.listHeadLine();
        Map<String, Object> map = new HashMap<>();
        System.out.println(list);
        map.put("noveTitles", list);
        Template template = config.getTemplate("noveTitle_list.ftl");
        Writer writer = new OutputStreamWriter(new FileOutputStream(
                new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/ficnoveTitle.html")));
        System.out.println("路径====" + request.getServletContext().getRealPath("/"));
        template.process(map, writer);
        writer.close();
        map.clear();

        for (int i = 0; i < list.size(); i++) {
            int id = list.get(i).getId();
            //得到某部小说整个卷宗
            List<Tb_Fiction> fictions = fictionService.queryByHid(id);
            System.out.println(fictions);

            template = config.getTemplate("fictionTitle_list.ftl");
            for (Tb_Fiction fic : fictions) {
             /* Document doc1 = Jsoup.parse(fic.getTitle());
              fic.setTitle(doc1.html());*/
                map.put("fictionlist", fictions);
                writer = new OutputStreamWriter(new FileOutputStream(
                        new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/" + "yyyy" + fic.getId() + ".html")));
                System.out.println("路径====" + request.getServletContext().getRealPath("/"));
                template.process(map, writer);
                writer.close();
                map.clear();

                template = config.getTemplate("fictioncon_list.ftl");
                Document doc = Jsoup.parse(fic.getContent());
                fic.setContent(doc.html());
                map.put("fic", fic);
                writer = new OutputStreamWriter(new FileOutputStream(
                        //request.getServletContext().getRealPath("/")获得本工程的路径
                        new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/" + "xxxx" + fic.getId() + ".html")));
                template.process(map, writer);
                writer.close();
            }
        }
        return "HeadLine.html";
    }
}


