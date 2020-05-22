package test;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.jmock.Expectations;
import org.jmock.integration.junit4.JUnit4Mockery;
import org.junit.Test;

import bean.Favor;
import bean.News;
import bean.NewsType;
import bean.Type;
import bean.User;
import mapper.FavorMapper;
import mapper.NewsMapper;
import mapper.NewsTypeMapper;
import mapper.UserMapper;
import service.FavorService;
import service.NewsService;
import service.NewsTypeService;
import service.UserService;

public class TestNews {

	JUnit4Mockery context = new JUnit4Mockery();
	@Test
	public void Newstest() throws Exception{
		final NewsMapper newsmapper = context.mock(NewsMapper.class);
		NewsService ser = new NewsService();
		ser.setNewsMapper(newsmapper);
		
		final News news1 = new News();
		news1.setId(1);
		news1.setTitle("魏晨结婚");
		news1.setContent("2020/5/20,下午13：14，魏晨在微博上发布了自己的结婚证照片，宣布自己结婚了");
		news1.setDate(null);
		news1.setAuthor("gc");
		
		final News news2 = new News();
		news2.setId(2);
		news2.setTitle("大学开学");
		news2.setContent("到五月份为止，有很多高校已经开学，但更多高校仍未发布开学通知");
		news2.setDate(null);
		news2.setAuthor("gc");
		
		final List<News> newsall = new ArrayList<News>();
		newsall.add(news1);
		newsall.add(news2);
		
		context.checking(new Expectations() {
			{
				oneOf(newsmapper).getNewsById(1);
				will(returnValue(news1));
				oneOf(newsmapper).getNewsById(2);
				will(returnValue(news2));
				oneOf(newsmapper).getAllNews();
				will(returnValue(newsall));
			}
		});
		assertEquals(news1,ser.getNewsById(1));
		assertEquals(news2,ser.getNewsById(2));
		assertEquals(newsall,ser.getAllNews());
	}

	
	@Test
	public void Favortest() throws Exception{
		final FavorMapper favormapper = context.mock(FavorMapper.class);
		FavorService fs = new FavorService();
		fs.setFavorMapper(favormapper);
		
		final Favor favor = new Favor();
		favor.setId(1);
		favor.setTypeId(1);
		favor.setUserId(1);
		
		final Type type = new Type();
		type.setId(1);
		final List<Type> typeall = new ArrayList<Type>();
		typeall.add(type);
		
		context.checking(new Expectations() {
			{
				oneOf(favormapper).selectAll(1);
				will(returnValue(typeall));
				oneOf(favormapper).getFavorByUseridTypeid(1, 1);
				will(returnValue(favor));
			}
		});
		assertEquals(typeall,fs.getAll(1));
		assertEquals(favor,fs.getFavorByUseridTypeid(1, 1));
		
		final Favor favor2 = new Favor();
		favor2.setId(2);
		favor2.setTypeId(2);
		favor2.setUserId(2);
		
		context.checking(new Expectations() {
			{
				oneOf(favormapper).insert(favor2);
				oneOf(favormapper).getFavorByUseridTypeid(2, 2);
				will(returnValue(favor2));
			}
		});
		assertEquals(favor2,fs.getFavorByUseridTypeid(2, 2));
		
		context.checking(new Expectations() {
			{
				oneOf(favormapper).deleteByFavorId(1);
				oneOf(favormapper).getFavorByUseridTypeid(1, 1);
				will(returnValue(null));
			}
		});
		assertEquals(null,fs.getFavorByUseridTypeid(1, 1));
		
		context.checking(new Expectations() {
			{
				Integer[] ids = {1,2};
				oneOf(favormapper).deleteByBatch(ids);;
				oneOf(favormapper).getFavorByUseridTypeid(1, 1);
				will(returnValue(null));
				oneOf(favormapper).getFavorByUseridTypeid(2, 2);
				will(returnValue(null));
			}
		});
		assertEquals(null,fs.getFavorByUseridTypeid(1, 1));
		assertEquals(null,fs.getFavorByUseridTypeid(2, 2));
	}
	
	@Test
	public void UserTest() throws Exception{
		final UserMapper um = context.mock(UserMapper.class);
		UserService us = new UserService();
		us.setMapper(um);
		
		final User user = new User();
		user.setId(1);
		user.setUserName("aaa");
		user.setPhone("123");
		user.setEmail("123");
		user.setPassword("12345");
		
		final User user1 = new User();
		user.setId(1);
		user.setUserName("aaab");
		user.setPhone("123");
		user.setEmail("123");
		user.setPassword("12345");
		
		context.checking(new Expectations() {
			{
				oneOf(um).insert(user);
				oneOf(um).getUserById(1);
				will(returnValue(user));
				oneOf(um).update(user1);
				oneOf(um).getUserByUserName("aaab");
				will(returnValue(user1));
			}
		});
		assertEquals(user,us.getUserById(1));
		assertEquals(user1,us.getUserByUserName("aaab"));
		
	}
	
	@Test
	public void NewsTypeTest() throws Exception{
		final NewsTypeMapper ntMapper = context.mock(NewsTypeMapper.class);
		NewsTypeService nts = new NewsTypeService();
		nts.setMapper(ntMapper);
		
		final NewsType nt = new NewsType();
		nt.setId(1);
		nt.setNewsId(1);
		nt.setTypeId(1);
		
		final List<NewsType> newstypes = new ArrayList<NewsType>();
		newstypes.add(nt);
		
		final NewsType nt1 = new NewsType();
		nt1.setId(2);
		nt1.setNewsId(2);
		nt1.setTypeId(2);
		
		final List<NewsType> newstypes1 = new ArrayList<NewsType>();
		newstypes1.add(nt1);
		
		context.checking(new Expectations(){
			{
				oneOf(ntMapper).insert(nt1);
				oneOf(ntMapper).getNewsIdByTypeId(2);
				will(returnValue(newstypes1));
			}
		});
		assertEquals(newstypes1,nts.getNewsIdByTypeId(2));
	}
}
