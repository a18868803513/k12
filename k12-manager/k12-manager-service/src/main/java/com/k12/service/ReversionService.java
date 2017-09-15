package com.k12.service;

import com.k12.domain.Tb_Reversion;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public interface ReversionService {
    void addReversion(Tb_Reversion reversion);
    List<Tb_Reversion> queryReversionById(int id);
}
