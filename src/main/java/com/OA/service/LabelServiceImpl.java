package com.OA.service;

import com.OA.beans.Label;
import com.OA.dao.LabelDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LabelServiceImpl implements LabelService{
    //依赖注入dao;
    @Autowired
    private LabelDao labelDao;

    @Override
    public List<Label> findAllLabels() {
        return labelDao.findAllLabels();
    }

    @Override
    public void addLabel(Label label) {
        labelDao.addLabel(label);
    }

    @Override
    public void modifyLabel(Label label) {
        labelDao.modifyLabel(label);
    }

    @Override
    public void deleteById(Integer id2) {
        labelDao.deleteById(id2);
    }
}
