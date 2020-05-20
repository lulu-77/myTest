package service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import bean.News;


@Transactional
public interface INewsService {


	/**
	 * ��ѯָ���������Ʒ,�����ؼ���
	 * @param typeId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<News> getNewsByTypeId(
			Integer typeId,Integer offset,
			Integer count);
	
	List<News> getAllNews();
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
			String title,
			Integer offset,
			Integer count);
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
