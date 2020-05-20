package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.NewsType;
import mapper.NewsTypeMapper;
@Service
public class NewsTypeService implements INewsTypeService{
	@Resource
	private NewsTypeMapper newsTypeMapper;
	
	public void  insert(NewsType newsType) {
		
	}
	/**
	 * 查询指定类别的新闻,并返回集合
	 * @param typeId
	 * @return
	 */
	public List<NewsType> getNewsIdByTypeId(Integer typeId){
		return newsTypeMapper.getNewsIdByTypeId(typeId);
	}
	
	/**
	 * 根据newsId查询新闻类别信息,并返回
	 * @param newsId
	 * @return
	 */
	public NewsType getTypeIdByNewsId(Integer newsId) {
		return newsTypeMapper.getTypeIdByNewsId(newsId);
	}
	
	@Override
	public void update(NewsType newsType) {
		// TODO Auto-generated method stub
		
	}

}
