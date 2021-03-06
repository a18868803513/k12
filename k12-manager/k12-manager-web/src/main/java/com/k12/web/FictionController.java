package com.k12.web;

import com.k12.domain.Tb_Fiction;
import com.k12.domain.Tb_Headline;
import com.k12.service.FictionService;
import freemarker.template.Configuration;
import freemarker.template.Template;
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
    public String test1(HttpServletRequest request) throws Exception {

        Configuration config = new Configuration(Configuration.VERSION_2_3_26);
        config.setDefaultEncoding("utf-8");
        config.setServletContextForTemplateLoading(request.getServletContext(), "WEB-INF/ftl");
        List<Tb_Headline> list = fictionService.listHeadLine();
        Map<String, Object> map = new HashMap<>();
        map.put("noveTitles", list);
        Template template = config.getTemplate("noveTitle_list.ftl");
        Writer writer = new OutputStreamWriter(new FileOutputStream(
                new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/ficnoveTitle.html")));
        template.process(map, writer);
        writer.close();
        map.clear();
        System.out.println(list.size());
        int y = 1;//数据库id
        for (int i = 0; i < list.size(); i++) {
            System.out.println("i==========" + i);
            int id = list.get(i).getId();
            System.out.println(list.size());
            //得到某部小说整个卷宗
            List<Tb_Fiction> fictions = fictionService.queryByHid(id);
            template = config.getTemplate("fictionTitle_list.ftl");
            map.put("fictionlist", fictions);
            writer = new OutputStreamWriter(new FileOutputStream(
                    new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/" + "yyyy" + (i + 1) + ".html")));
            template.process(map, writer);
            writer.close();
            map.clear();
            int page = fictions.size();//一部小说章节
            System.out.println("page==" + page);
            int ii = 1;//一本小说当前章节数
            for (Tb_Fiction fic : fictions) {
                template = config.getTemplate("fictioncon_list.ftl");
                map.put("index", i + 1);
                map.put("fic", fic);
                map.put("page", page);
                map.put("nowPage", ii);
                map.put("sumNowPage", y);
                writer = new OutputStreamWriter(new FileOutputStream(
                        new File(request.getServletContext().getRealPath("/"), "WEB-INF/jsp/fiction/" + "xxxx" + fic.getId() + ".html")));
                template.process(map, writer);
                y++;
                ii++;
                writer.close();
            }
        }
        return "HeadLine.html";
    }
}


