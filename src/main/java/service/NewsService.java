package service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.News;
import mapper.NewsMapper;

@Service
public class NewsService implements INewsService {

	@Resource
	private NewsMapper newsMapper;
	
	public List<News> getNewsByTypeId(Integer typeId, Integer offset, Integer count) {
		
		return newsMapper.getNewsByTypeId(typeId, offset, count);
	}


	@Override
	public Integer getAllNewsCount() {
		return newsMapper.getAllNewsCount();
	}

	@Override
	public Integer getCount(Integer typeId) {
		return newsMapper.getCount(typeId);
	}

	@Override
	public List<News> getNewsByTitle(String title, Integer offset, Integer count) {
		return newsMapper.getNewsByTitle(title, offset, count);
	}

	@Override
	public Integer getCountByTitle(String title) {
		return newsMapper.getCountByTitle(title);
	}

	@Override
	public News getNewsById(Integer id) {
		return newsMapper.getNewsById(id);
	}

	@Override
	public List<Map<String, Object>> getNewsSeriesSpecsById(Integer id) {
		return newsMapper.getNewsSeriesSpecsById(id);
	}

	@Override
	public void insert(News news) {
		newsMapper.insert(news);
	}

	@Override
	public void updatePicture(Integer newsId, String picture) {
		newsMapper.updatePicture(newsId, picture);
	}


	@Override
	public List<News> getAllNews() {
		
		return newsMapper.getAllNews();
	}
	
	public void setNewsMapper(NewsMapper mapper) {
		this.newsMapper = mapper;
	}

}
