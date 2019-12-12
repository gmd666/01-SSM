package com.OA.service;

import com.OA.beans.Label;

import java.util.List;

public interface LabelService {
    public List<Label> findAllLabels();
    public void addLabel(Label label);

    void modifyLabel(Label label);

    void deleteById(Integer id2);
}
