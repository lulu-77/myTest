package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.NewsType;

public interface NewsTypeMapper {
	/**
	 * 添加新闻类别信息
	 * @param NewsType
	 */
	void  insert(NewsType newsType);
	
	/**
	 * 修改新闻类别信息
	 * @param NewsType
	 */
	void update(NewsType newsType);
	
	/**
	 * 查询指定类别的新闻,并返回集合
	 * @param typeId
	 * @return
	 */
	List<NewsType> getNewsIdByTypeId(@Param("typeId") Integer typeId);
	
	/**
	 * 根据newsId查询新闻类别信息,并返回
	 * @param newsId
	 * @return
	 */
	NewsType getTypeIdByNewsId(@Param("newsId") Integer newsId);
}
