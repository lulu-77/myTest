package mapper;

import bean.User;

public interface UserMapper {
	/**
	 * 添加用户信息
	 * @param user
	 */
	void  insert(User user);
	
	/**
	 * 修改用户信息
	 * @param user
	 */
	void update(User user);
	
	/**
	 * 通过用户名查询用户信息
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);
	
	/**
	 * 根据id查询用户信息,并返回
	 * @param id
	 * @return
	 */
	User getUserById(Integer id);
	
}
