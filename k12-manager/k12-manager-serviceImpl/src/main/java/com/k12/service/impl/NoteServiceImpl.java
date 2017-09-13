package com.k12.service.impl;

import com.k12.dao.NoteDao;
import com.k12.domain.Tb_Note;
import com.k12.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Service
@Transactional
@Scope("prototype")
public class NoteServiceImpl implements NoteService {
    @Autowired
    NoteDao dao;
    @Override
    public void addNote(Tb_Note note) {
        dao.addNote(note);

    }

    @Override
    public List<Tb_Note> queryAll() {
        return dao.queryAll();
    }

    @Override
    public Tb_Note queryById(int id) {
        return dao.queryById(id);
    }
}
