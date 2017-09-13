package com.k12.web;

import com.k12.domain.Tb_Note;
import com.k12.service.NoteService;
import com.k12.service.ReversionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Controller
public class NoteController {
    @Autowired
    NoteService service;
    @Autowired
    ReversionService reversionService;
    @RequestMapping("addNote")
    public void test1(Tb_Note note) throws UnsupportedEncodingException {
         note.setContent(new String(note.getContent().getBytes("ISO8859_1"),"utf-8"));
        note.setTitle(new String(note.getTitle().getBytes("ISO8859_1"),"utf-8"));
        service.addNote(note);
    }
    @RequestMapping("queryAll")
    public String test2(Model model){
        model.addAttribute("note",service.queryAll());
        return "aaaa";
    }
    @RequestMapping("queryNoteById")
    public String test3(int NoteID,Model model){
        model.addAttribute("note",service.queryById(NoteID));
        model.addAttribute("revesion",reversionService.queryRevesionById(NoteID));
        return "b";
    }
}
