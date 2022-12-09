package com.dao;

import com.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
@RequestMapping(value="/login")
public class LoginController {

    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login()
    {
        return "login";
    }

    @RequestMapping(value = "/signup")
    public String signup()
    {
        return "signup";
    }
    @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();
        String returnURL = "";
        if(session.getAttribute("login") != null)
        {
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);
        if(loginvo != null)
        {
            System.out.println("로그인 성공!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        }
        else
        {
            System.out.println("로그인 실패!");
            writer.println("<script type='text/javascript'>");
            writer.println("alert('로그인 실패! (아이디와 비밀번호를 확인해주세요.)');");
            writer.println("history.back();");
            writer.println("</script>");
            writer.flush();
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    @RequestMapping(value = "/signupok", method = RequestMethod.POST)
    public String signupCheck(HttpSession session, UserVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();
        String returnURL = "";
        if(session.getAttribute("login") != null)
        {
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);
        UserVO overlap_check = service.checkUser(vo);
        if(overlap_check != null || loginvo != null)
        {
            System.out.println("회원가입 실패!(이미 있는 계정)");
            writer.println("<script type='text/javascript'>");
            writer.println("alert('회원가입 불가(이미 계정이 있습니다).');");
            writer.println("history.back();");
            writer.println("</script>");
            writer.flush();
        }
        else
        {
            if(service.setUser(vo) == 0)
            {
                System.out.println("회원가입 실패..");
                writer.println("<script type='text/javascript'>");
                writer.println("alert('회원가입 불가(이미 계정이 있습니다).');");
                writer.println("history.back();");
                writer.println("</script>");
                writer.flush();
            }
            else
            {
                System.out.println("회원 추가 성공 !!");
                writer.println("<script type='text/javascript'>");
                writer.println("alert('회원가입 성공!!');");
                writer.println("location.href='../login/login'");
                writer.println("</script>");
                writer.flush();
            }
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session)
    {
        session.invalidate();
        return "redirect:/login/login";
    }

}
