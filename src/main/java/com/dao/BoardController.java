package com.example;

import com.dao.BoardServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/board")
public class BoardController {
    @Autowired
    BoardServiceImpl boardService;
    
    @RequestMapping("/")
    public String home(){
        return "index";
    }


}
