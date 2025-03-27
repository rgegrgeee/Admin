package com.kedu.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kedu.dto.BoardDTO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@RequestMapping("/insert")
	abstract void insertBoard(BoardDTO board);

}
