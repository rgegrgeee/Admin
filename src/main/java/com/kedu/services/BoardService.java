package com.kedu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kedu.dao.BoardDAOImp;
import com.kedu.dto.BoardDTO;

@Service
public class BoardService {
	
	@Autowired
	private BoardDAOImp bDao;
	
	
	public void insertBoard(String boardName) {
		bDao.insertBoard(boardName);
	}

}
