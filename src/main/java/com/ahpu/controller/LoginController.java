package com.ahpu.controller;

import com.ahpu.entity.User;
import com.ahpu.service.LogService;
import com.ahpu.service.UserService;
import com.ahpu.util.DateUtil;
import com.ahpu.util.ShiroUtils;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 用户登入登出接口
 *
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private ShiroUtils shiroUtils;
    @Autowired
    private LogService logService;

    private static final transient Logger log = LoggerFactory.getLogger(LoginController.class);

    /**
     * 用户登录操作
     *
     */
    @ResponseBody
    @PostMapping("login.do")
    public ResultResponse login(String userName, String password) {
        log.info("^^^^^^^^^^^^^^^^^ 登录信息:用户名: " + userName + "密码: " + password);
        try {
            Subject currentUser = SecurityUtils.getSubject();
            log.info("^^^^^^^^^^^^^^^^^ 是否已通过认证" + currentUser.isAuthenticated());
            //验证用户是否被禁用
            User user = userService.getUserByUserName(userName);
            if (user == null) {
                return Result.resuleError("用户不存在");
            }
            if (user.getStatus() == 1) {
                if (!currentUser.isAuthenticated()) {
                    log.info("^^^^^^^^^^^^^^^^^ 执行登录操作");
                    UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
//	            token.setRememberMe(true);
                    try {
                        // 执行登录
                        currentUser.login(token);
                        log.info("^^^^^^^^^^^^^^^^^ 登录成功");
                        //日志记录
                        //将登陆信息存储到session中
                        User loginUserInfo = new User();
                        //获取当前时间
                        String loginTime = DateUtil.getCurrentTime("yyyy-MM-dd HH:mm:ss");
                        log.info("^^^^^^^^^^^^^^^^^ 登陆时间为" + loginTime);
                        loginUserInfo.setUserName(userName);
                        loginUserInfo.setPlainPassword(password);
                        shiroUtils.getShiroSession().setAttribute("loginUserInfo", loginUserInfo);
                        shiroUtils.getShiroSession().setAttribute("userInfo", user);
                        //修改登陆时间
                        userService.updateLoginTime(loginUserInfo.getUserName(), loginTime);
                        logService.insert("登录操作");
                        return Result.resuleSuccess();
                    } catch (AuthenticationException ae) {
                        log.info("^^^^^^^^^^^^^^^^^ 登录失败,账号密码不匹配: " + ae.getMessage());
                        return Result.resuleError("账号密码不匹配");
                    }
                }
            }
            return Result.resuleError("用户已被禁用;请联系管理员");
        } catch (Exception e) {
            e.printStackTrace();
            return Result.resuleError(e.getMessage());
        }

    }

    /**
     * 登出
     *
     *
     */
    @GetMapping("logout.do")
    public void logout(HttpSession session) {
        try {
            //退出
            SecurityUtils.getSubject().logout();
            log.info("^^^^^^^^^^^^^^^^^ 登出成功");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}