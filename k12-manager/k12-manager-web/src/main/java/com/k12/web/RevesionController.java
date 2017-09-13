package com.k12.web;

import com.k12.domain.Tb_Reversion;
import com.k12.service.ReversionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Controller
public class RevesionController {
    @Autowired
    ReversionService service;
    @RequestMapping("addRevesion")
    public String text1(Tb_Reversion reversion){
       service.addReversion(reversion);
        return "queryAll";
    }
    @RequestMapping("queryRevesionById")
    public String text2(int NoteID,Model model){
        model.addAttribute("revesion",service.queryRevesionById(NoteID));
        return "b";
    }
}
