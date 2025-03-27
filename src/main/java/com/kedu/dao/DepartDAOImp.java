package com.kedu.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kedu.dto.DepartDTO;

@Repository
public class DepartDAOImp implements DepartDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    private static final String NAMESPACE = "com.kedu.mapper.DeptMapper";

    @Override
    public void insertDept(DepartDTO dept) {
        sqlSession.insert(NAMESPACE + ".insertDept", dept);
    }

    @Override
    public List<DepartDTO> selectAllDepts() {
        return sqlSession.selectList(NAMESPACE + ".selectAllDepts");
    }

    @Override
    public DepartDTO selectDeptById(int deptId) {
        return sqlSession.selectOne(NAMESPACE + ".selectDeptById", deptId);
    }

    @Override
    public void updateDept(DepartDTO dept) {
        sqlSession.update(NAMESPACE + ".updateDept", dept);
    }

    @Override
    public void deleteDept(int deptId) {
        sqlSession.delete(NAMESPACE + ".deleteDept", deptId);
    }
}
