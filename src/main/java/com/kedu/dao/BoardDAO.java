package com.kedu.dao;

import java.util.List;
import com.kedu.dto.BoardDTO;

public interface BoardDAO {

    void insertBoard(BoardDTO board);              // 게시판 생성
    List<BoardDTO> selectAllBoards();              // 전체 게시판 조회
    BoardDTO selectBoardById(int boardId);         // 게시판 단건 조회
    void updateBoard(BoardDTO board);              // 게시판 정보 수정
    void deleteBoard(int boardId);                 // 게시판 삭제 (논리 or 물리)
}
