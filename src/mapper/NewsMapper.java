package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import bean.News;

public interface NewsMapper {


	/**
	 * ��ѯָ���������Ʒ,�����ؼ���
	 * @param typeId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<News> getNewsByTypeId(
			@Param("typeId")Integer typeId,@Param("offset")Integer offset,
			@Param("count")Integer count);
	
	/**
	 * ��ȡ������Ʒ����
	 */
	Integer getAllNewsCount();
	
	/**
	 * ��ȡָ������ļ�¼��
	 * @param typeId
	 * @return
	 */
	Integer getCount(Integer typeId);
	
	
	/**
	 * ͨ��title��ȡ��Ʒ
	 * @param title
	 * @param offset
	 * @param count
	 * @return
	 */
	List<News> getNewsByTitle(
			@Param("title")String title,
			@Param("offset")Integer offset,
			@Param("count")Integer count);
	
	List<News> getAllNews();
	/**
	 * ��ȡtitle�ļ�¼��
	 * @param title
	 * @return
	 */
	Integer getCountByTitle(String title);
	/**
	 * ͨ��id��ȡ��Ʒ��Ϣ
	 * @param id
	 * @return
	 */
	News getNewsById(Integer id);
	
	/**
	 * ͨ��id�����Ʒ����ϵ����������Ʒ�Ĺ����Ϣ
	 * @param id
	 * @return
	 */
	List<Map<String, Object>> getNewsSeriesSpecsById(Integer id);

	void insert(News news);

	void updatePicture(Integer newsId, String picture);
	
}
