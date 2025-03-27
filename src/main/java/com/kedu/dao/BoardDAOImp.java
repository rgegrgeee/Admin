package com.kedu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kedu.dto.BoardDTO;

@Repository
public class BoardDAOImp implements BoardDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    private static final String NAMESPACE = "com.kedu.mapper.BoardMapper";

    @Override
    public void insertBoard(BoardDTO board) {
        sqlSession.insert(NAMESPACE + ".insertBoard", board);
    }

    @Override
    public List<BoardDTO> selectAllBoards() {
        return sqlSession.selectList(NAMESPACE + ".selectAllBoards");
    }

    @Override
    public BoardDTO selectBoardById(int boardId) {
        return sqlSession.selectOne(NAMESPACE + ".selectBoardById", boardId);
    }

    @Override
    public void updateBoard(BoardDTO board) {
        sqlSession.update(NAMESPACE + ".updateBoard", board);
    }

    @Override
    public void deleteBoard(int boardId) {
        sqlSession.delete(NAMESPACE + ".deleteBoard", boardId);
    }
}
