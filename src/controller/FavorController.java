package controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Type;
import service.IFavorService;
import bean.Favor;
import bean.ResponseResult;

@Controller
@RequestMapping("/favor")

public class FavorController extends BaseController{

	@Resource
	private IFavorService favorService;
	/**
	 * 显示favorite.jsp页面
	 * @return
	 */
	@RequestMapping("/showFavor.do")
	public String showFavor(HttpSession session,
			Map<String,Object> map){
		List<Type> list = favorService.getAll(
				this.getUid(session));
		map.put("listFavoriteVo",list);
		return "favor";
	}
	
	/**
	 * 
	 * @param typeid ����id
	 * @param session �Ự
	 * @param times ����ѡ��Ĵ���
	 * @return
	 */
	/*@RequestMapping("/addFavor.do")
	@ResponseBody
	public ResponseResult<Void> addFavor(
			Integer typeid,HttpSession session){
		
		Favor favor =  new Favor();
		favor.setTypeId(typeid);
		favor.setUserId(this.getUid(session));
		favor.setClick(click);
		
		favorService.addFavor(favor);
		ResponseResult<Void> rr = 
				new ResponseResult<Void>(1,"添加成功");
		
		return rr;
	}*/
	@RequestMapping("/deleteById.do")
	public String deleteById(Integer id){
		
		favorService.deleteByFavorId(id);
		
		return "redirect:../favor/showFavor.do";
	}
	@RequestMapping("/deleteByBatch.do")
	public String deleteByBatch(Integer[] ids){
		
		favorService.deleteByBatch(ids);
		return "redirect:../favor/showFavor.do";
	}
	
}
