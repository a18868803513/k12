package com.k12.service.impl;

import com.k12.dao.ReversionDao;
import com.k12.domain.Tb_Reversion;
import com.k12.service.ReversionService;
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
public class RevesionServiceImpl implements ReversionService {
    @Autowired
    ReversionDao dao;
    @Override
    public void addReversion(Tb_Reversion reversion) {
        dao.addReversion(reversion);
    }

    @Override
    public List<Tb_Reversion> queryReversionById(int id) {
        return dao.queryReversionById(id);
    }




}
