package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Favor;
import bean.Type;

public interface FavorMapper {
	/**
	 * 添加喜好
	 * @param favor
	 */
	void insert(Favor favor);
	
	
	/**
	 * 通过用户id查询爱好
	 * @param userId
	 * @return
	 */
	List<Favor> getFavorByUserid(Integer userId);
	
	/**
	 * 通过用户id类型id查询爱好
	 * @param userId
	 * @param typeId
	 * @return
	 */
	Favor getFavorByUseridTypeid(@Param("userId")Integer userId,@Param("typeId")Integer typeId);
	
	/**
	 * 更新爱好
	 * @param favor
	 */
	void update(Favor favor);
	
	
	/**
	 * ͨ查询用户喜好的所有类型
	 * @param userId
	 * @return
	 */
	List<Type> selectAll(@Param("userId")Integer userId);
	
	/**
	 * 删除爱好
	 * @param id
	 */
	void deleteByFavorId(Integer id);
	
	/**
	 * 批量删除
	 * @param ids
	 */
	void deleteByBatch(Integer[] ids);
	
}
