package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import bean.ResponseResult;
import bean.User;
import controller.BaseController;
import common.Const;
import service.IUserService;
import service.ex.PasswordNotMatchException;
import service.ex.UserNotFoundException;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
	@Resource
	private IUserService userService;

	/**
	 * 显示注册画面
	 * 
	 * @return
	 */
	@RequestMapping("/showRegister.do")
	public String showRegister() {
		return "register";
	}

	/**
	 * 显示登录画面
	 * 
	 * @return
	 */
	@RequestMapping("/showLogin.do")
	public String showLogin() {
		return "login";
	}

	/**
	 * 显示修改密码页面
	 * 
	 * @return
	 */
	@RequestMapping("/showPassword.do")
	public String showPassword() {
		return "password";
	}

	@RequestMapping("/checkUsername.do")
	@ResponseBody
	public ResponseResult<Void> checkUsername(String username) {
		ResponseResult<Void> rr;
		// 如果返回true,表示用户名存在,
		// 如果返回false,表示用户名不存在
		if (userService.checkUsernameHasExist(username)) {
			rr = new ResponseResult<Void>(0, "用户名已经存在");
		} else {
			rr = new ResponseResult<Void>(1, "用户名可以使用");
		}
		return rr;
	}

	@RequestMapping("/register.do")
	@ResponseBody
	public ResponseResult<Void> register(
			@RequestParam("uname") String username, 
			@RequestParam("upwd") String password,
			String email,String phone) {
		ResponseResult<Void> rr;
		User user = new User();
		user.setUserName(username);
		user.setPassword(password);
		user.setPhone(phone);
		user.setEmail(email);
		
		// set方法给User对象赋值
		try {
			userService.register(user);
			rr = new ResponseResult<Void>(1, "注册成功");
		} catch (Exception e) {
			rr = new ResponseResult<Void>(0, e.getMessage());
		}
		return rr;
	}

	@RequestMapping("/login.do")
	@ResponseBody
	public ResponseResult<Void> login(String username, String password, HttpSession session) {
		ResponseResult<Void> rr;
		try {
			User user = userService.login(username, password);
			session.setAttribute("user", user);
			rr = new ResponseResult<Void>(1, "登录成功");
		} catch (UserNotFoundException e) {
			rr = new ResponseResult<Void>(0, e.getMessage());
		} catch (PasswordNotMatchException e) {
			rr = new ResponseResult<Void>(-1, e.getMessage());
		}
		return rr;
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../main/showIndex.do";
	}

	@RequestMapping("/updatePassword.do")
	@ResponseBody
	public ResponseResult<Void> updatePassword(HttpSession session, String oldPassword, String newPassword) {
		ResponseResult<Void> rr;
		try {
			Integer id = this.getUid(session);
			userService.changePassword(id, oldPassword, newPassword);
			rr = new ResponseResult<Void>(1, "修改成功");
		} catch (RuntimeException e) {
			rr = new ResponseResult<Void>(0, e.getMessage());
		}
		return rr;

	}

	@RequestMapping("checkLoginUsername.do")
	@ResponseBody
	public ResponseResult<Void> checkLoginUsername(String username) {
		ResponseResult<Void> rr;
		// 如果返回true,表示用户名存在,
		// 如果返回false,表示用户名不存在
		if (userService.checkUsernameHasExist(username)) {
			rr = new ResponseResult<Void>(Const.SUCCESS, "用户名存在");
		} else {
			rr = new ResponseResult<Void>(Const.FAILED, "用户名不存在");
		}
		return rr;
	}

}
