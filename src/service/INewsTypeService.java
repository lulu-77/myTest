package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import bean.NewsType;

@Transactional
public interface INewsTypeService {
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
	List<NewsType> getNewsIdByTypeId(Integer typeId);
	
	/**
	 * 根据newsId查询新闻类别信息,并返回
	 * @param newsId
	 * @return
	 */
	NewsType getTypeIdByNewsId(Integer newsId);
}
