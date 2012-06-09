package com.xjtu.controller;

import com.xjtu.dao.UserDao;
import com.xjtu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @Transactional
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String index(@RequestParam("name") String name, @RequestParam("university") String university,
                        @RequestParam("phone") String phone, @RequestParam("email") String email,
                        @RequestParam("major") String major) {
        userDao.save(new User(name, university, phone, email, major));
        return "success";
    }

    @RequestMapping(value = "/admin/userList", method = RequestMethod.POST)
    public String userList(HttpSession session) {
        List candidates=userDao.all();
        session.setAttribute("userlist",candidates);
        return "userInfoList";
    }
}
