package com.dao;
import java.util.ArrayList;

import com.vo.BoardVO;
import com.vo.UserVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class UserDAO {

    @Autowired
    SqlSessionTemplate sqlSession;

    public UserVO getUser(UserVO vo)
    {
        return sqlSession.selectOne("User.getUser", vo);
    }
    public UserVO checkUser(UserVO vo)
    {
        return sqlSession.selectOne("User.checkUser", vo);
    }
    public int setUser(UserVO vo) {
        int result = sqlSession.insert("User.insertMember", vo);
        return result;
    }
}
