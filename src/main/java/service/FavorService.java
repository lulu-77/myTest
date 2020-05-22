package service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Favor;
import bean.Type;
import mapper.FavorMapper;
@Service
public class FavorService implements IFavorService{
	
	@Resource
	private FavorMapper favorMapper;

	public void addFavor(Favor favor) {

		List<Favor> listFavor = new ArrayList<Favor>();
		
		
		try {
			listFavor = favorMapper.getFavorByUserid(favor.getUserId());
			for(Favor c : listFavor){
				if( c.getTypeId().equals(favor.getTypeId()) ){
					Integer quantity = favor.getClick()+ 1;
					favor.setClick(quantity);
					favorMapper.update(favor);
					return ;
				}
			}
			favorMapper.insert(favor);
		}catch(NullPointerException e) {
			favorMapper.insert(favor);
			System.out.println(favor.getClick() + favor.getUserId() + favor.getTypeId());
		}
	}
	

	@Override
	public List<Type> getAll(Integer userId) {
		
		return favorMapper.selectAll(userId);
	}

	@Override
	public void deleteByFavorId(Integer id) {
		favorMapper.deleteByFavorId(id);
		
	}
	

	@Override
	public void deleteByBatch(Integer[] ids) {
		favorMapper.deleteByBatch(ids);
		
	}


	@Override
	public Favor getFavorByUseridTypeid(Integer userId, Integer typeId) {
		return favorMapper.getFavorByUseridTypeid(userId, typeId);
	}
	
	
	
}
