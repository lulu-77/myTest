package service;

import org.springframework.transaction.annotation.Transactional;

import bean.User;

@Transactional
public interface IUserService {
	/**
	 * 用户注册
	 * @param user
	 * @throws Exception 
	 */
	void register(User user);
	
	/**
	 * 验证用户名是否存在
	 * @param username
	 * @return
	 */
	boolean checkUsernameHasExist(String username);
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception 
	 */
	User login(String username,String password);
	
	/**
	 * 修改密码
	 * @param id 
	 * @param oldPassword
	 * @param newPassword
	 * @throws Exception 
	 */
	void changePassword(Integer id, String oldPassword,	String newPassword);
	
	/**
	 * 通过id查询用户信息
	 * @param id
	 * @return
	 */
	User getUserById(Integer id);
	
	/**
	 * 通过用户名查询用户信息
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);
	
}
