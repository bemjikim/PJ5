package com.dao;

import com.vo.BoardVO;
import com.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
        @Autowired
        UserDAO userDAO;
        public UserVO getUser(UserVO vo){
            return userDAO.getUser(vo);
        }
        public UserVO checkUser(UserVO vo){
        return userDAO.checkUser(vo);
    }
        public int setUser(UserVO vo) { return userDAO.setUser(vo);}
    }
