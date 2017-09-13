package com.k12.service;

import com.k12.domain.Tb_Note;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public interface NoteService {
    void addNote(Tb_Note note);
    List<Tb_Note> queryAll();
    Tb_Note queryById(int id);
}
