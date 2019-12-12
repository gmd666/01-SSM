package com.OA.dao;

import com.OA.beans.Label;

import java.util.List;

public interface LabelDao {
    /**
     * 查询所有的栏目信息；
     */
    public List<Label> findAllLabels();

    /**
     * 添加标签
     * @param label
     */
     void addLabel(Label label);

    /**
     * 修改标签；
     * @param label
     */
    void modifyLabel(Label label);

    void deleteById(Integer id2);
}
