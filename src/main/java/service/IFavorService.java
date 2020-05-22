package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import bean.Favor;
import bean.Type;

@Transactional
public interface IFavorService {
	/**
	 * 添加喜好到数据库
	 * @param favor
	 */
	void addFavor(Favor favor);
	
	/**
	 * 查询指定用户的喜好类型
	 * @param userId
	 * @return
	 */
	List<Type> getAll(Integer userId);
	
	
	/**
	 * 删除喜好
	 * @param id
	 */
	void deleteByFavorId(Integer id);
	
	/**
	 * 批量删除
	 * @param ids
	 */
	void deleteByBatch(Integer [] ids);
	
	/**
	 * 通过用户id类型id查询爱好
	 * @param userId
	 * @param typeId
	 * @return
	 */
	Favor getFavorByUseridTypeid(Integer userId,Integer typeId);
	
}
