package service;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import bean.User;
import mapper.UserMapper;
import service.ex.PasswordNotMatchException;
import service.ex.UserNotFoundException;
import service.ex.UsernameAlreadyExistException;

@Service
public class UserService implements IUserService {
	@Resource
	private UserMapper userMapper;
	
	//从db.properties文件中,获取盐,给salt赋值
	@Value("#{dbConfig.salt}")
	private String salt;
	
	public void register(User user) {
		// TODO Auto-generated method stub
		User user1 = userMapper.getUserByUserName(
				user.getUserName());
			//用户名不存在
			if(user1==null){
				/**
				 * md5加密
				 */
				String pwd = user.getPassword();
				
				//生成md5密码
				String md5 = DigestUtils.md5Hex(pwd+salt);
				user.setPassword(md5);
				userMapper.insert(user);
			}else{
				//用户名存在,抛出异常
				throw new UsernameAlreadyExistException("用户名已经存在,请重新输入!");
			}
	}

	/**
	 * 如果用户名存在,返回true,否则返回false
	 */
	public boolean checkUsernameHasExist(String username) {
		if(userMapper.getUserByUserName(username)==null){
			return false;
		}else{
			return true;
		}
	}
	
	/**
	 * 用户登录
	 * @throws Exception 
	 */
	public User login(String username, String password) {
		System.out.println("login....");
		User user = userMapper.getUserByUserName(username);
		if(user==null){
			throw new UserNotFoundException("用户名不存在!");
		}else{
			//user.getPassword()
			/**
			 * String str = user.getPassword();
			 * str += "dddddd";
			 * String strMd5 = DigestUtils.md5Hex(str)
			 */
			
			//生成md5密码
			String md5 = DigestUtils.md5Hex(password+salt);
			
			if(user.getPassword().equals(md5)){
				return user;
			}else{
				throw new PasswordNotMatchException("密码错误");
			}
		}
		
	}
	
	/**
	 * 修改密码
	 * @throws Exception 
	 */
	public void changePassword(Integer id, String oldPassword, String newPassword) {
		User user = userMapper.getUserById(id);
		if(user==null){
			throw new UserNotFoundException("用户不存在");
		}else{
			/**
			 * md5加密oldPassword
			 * 
			 */
			
			//生成md5密码
			String md5 = DigestUtils.md5Hex(oldPassword+salt);
			
			if(user.getPassword().equals(md5)){
				User u = new User();
				u.setId(id);
				/**
				 * md5加密newPassword
				 */
				md5 = DigestUtils.md5Hex(newPassword+salt);
				
				u.setPassword(md5);
				userMapper.update(u);
			}else{
				throw new PasswordNotMatchException("密码不匹配异常");
			}
		}
	}
	
	/**
	 * 通过id查询用户信息
	 */
	public User getUserById(Integer id) {
		return userMapper.getUserById(id);
	}
	
	/**
	 * 通过用户名查询用户信息
	 * @param userName
	 * @return
	 */
	public User getUserByUserName(String userName) {
		return userMapper.getUserByUserName(userName);
	}
	
}
