package com.kedu.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kedu.services.BoardService;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	public BoardService bServ;
	
	@RequestMapping("/insert")
	public String insertBoard(String boardName) {
		bServ.insertBoard(boardName);
		return "/admin/home";
	}
	

}
