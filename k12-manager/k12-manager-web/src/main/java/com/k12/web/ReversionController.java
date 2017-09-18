package com.k12.web;

import com.k12.domain.Tb_Reversion;
import com.k12.domain.Tb_User;
import com.k12.service.ReversionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Controller
public class ReversionController {
    @Autowired
    ReversionService service;
    @RequestMapping("addReversion")
    public String text1(Tb_Reversion reversion,Model model,HttpSession session) throws UnsupportedEncodingException {
        reversion.setContent(new String(reversion.getContent().getBytes("ISO8859_1"),"utf-8"));
        reversion.setUser((Tb_User)session.getAttribute("user"));
        service.addReversion(reversion);
         model.addAttribute("reversion", service.queryReversionById(reversion.getNoteID()));
        return "reversion.jsp";
    }
    @RequestMapping("queryReversionById")
    public String text2(int noteID,Model model){
        model.addAttribute("reversion",service.queryReversionById(noteID));

        return "reversion.jsp";
    }
}
