package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Favor;
import bean.News;
import bean.NewsType;
import bean.ProductCount;
import bean.Type;
import mapper.FavorMapper;
import service.IFavorService;
import service.INewsService;
import service.INewsTypeService;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController{

	@Resource
	INewsService newsService;
	
	@Resource
	INewsTypeService newsTypeService;

	@Resource
	IFavorService favorService;
	//@Resource
	//INewsPictureService newsPictureService;
	
	
	//根据个人偏好显示新闻
	@SuppressWarnings({ "unused", "null" })
	@RequestMapping("/showNewsItem.do")
	public String showNewsItem(
			HttpSession session,
			Map<String,List<News>> map){
		
		//System.out.println("/order/showOrderItem.do = showOrderItem >> orders.jsp");
		
		
		List<Type> type = favorService.getAll(this.getUid(session));
		List<News> news;
		List<News> listNews = new ArrayList<News>();
		
		if(type.size() == 0) {
			listNews =  newsService.getAllNews();
		}else {
			for(int i=0;i<type.size();i++) {
				news = newsService.getNewsByTypeId(type.get(i).getId(), 0, ProductCount.COUNT);
				//System.out.println(news.size());
				if(news !=null ) {
					//listNews.clear();
					listNews.addAll(news);				
				}
			}
		}
				//newsService.getNewsById(
				//);
		map.put("listNews",listNews);
		
		return "index";
	}
	
	
	@RequestMapping("/showNews.do")//通过左边栏类型找新闻
	public String showNews(
			Integer typeId,Integer page,HttpSession session,
			Map<String,Object> map){
		
		if(page==null){
			page = 1;
		}
		
		if(this.getUid(session) != null) {
			Favor favor =  new Favor();
			try {
				favor = favorService.getFavorByUseridTypeid(this.getUid(session), typeId);
				favor.setUserId(this.getUid(session));
				favorService.addFavor(favor);
			}catch(NullPointerException e) {
				Favor favor1 =  new Favor();
				favor1.setUserId(this.getUid(session));
				favor1.setClick(1);
				favor1.setTypeId(typeId);
				favorService.addFavor(favor1);
			}
		}
		
		//ͨ��page����ƫ����
		int offset = (page-1)*ProductCount.COUNT;
		List<News> listNews = newsService.
				getNewsByTypeId(
				typeId, offset, ProductCount.COUNT);
		System.out.println(listNews.size());
		
		Integer count = newsService.getCount(typeId);
		
		Integer pageSize = 
				count%ProductCount.COUNT==0?
						count/ProductCount.COUNT:
						count/ProductCount.COUNT+1;
		
		//��ѯtypeId��Ӧ�������
		//NewsType newsType = newsTypeService.getNewsTypeById(typeId);
		//String typeName = newsType.getName();
		
		//����ҳ��ļ�¼��
		map.put("currentPage",page);
		map.put("count",count);
		map.put("listNews",listNews);
		map.put("pageSize",pageSize);
		map.put("TypeId",typeId);
		//map.put("TypeName", typeName);
		return "index";
	}

	@RequestMapping("/showNewsByTitle.do")//搜索
	public String showNewsByTitle(
			String title,
			Integer page,
			Map<String,Object> map){
		if(page==null){
			page = 1;
		}
		
		Integer offset = (page-1)*ProductCount.COUNT;
		List<News> listNews=
				newsService.getNewsByTitle(
				title, offset, ProductCount.COUNT);
		Integer count = newsService.getCountByTitle(title);
		Integer pageSize = 
				count%ProductCount.COUNT==0?
						count/ProductCount.COUNT:
						count/ProductCount.COUNT+1;
		map.put("listNews",listNews);
		map.put("title",title);
		map.put("pageSize",pageSize);
		map.put("count",count);
		map.put("currentPage",page);
		
		return "index";
	}
	
	@RequestMapping("/showNewsInfo.do")
	public String showNewsInfo(Integer id,HttpSession session,
			Map<String,Object> map){
		
		//�����Ʒ��Ϣ
		News News = newsService.getNewsById(id);
		
		NewsType newsType = newsTypeService.getTypeIdByNewsId(News.getId());
		
		if(this.getUid(session) != null) {
			Favor favor =  new Favor();
			try {
				favor = favorService.getFavorByUseridTypeid(this.getUid(session), newsType.getTypeId());
				favor.setUserId(this.getUid(session));
				favorService.addFavor(favor);
			}catch(NullPointerException e) {
				Favor favor1 =  new Favor();
				favor1.setUserId(this.getUid(session));
				favor1.setClick(1);
				favor1.setTypeId(newsType.getTypeId());
				favorService.addFavor(favor1);
			}
		}
		
		map.put("News",News);
		//map.put("listSeries", listNewsSeriesSpecs);
		return "news_details";
	}
}
