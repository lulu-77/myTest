package controller;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.ResponseResult;
import common.Const;

@Controller
@RequestMapping("/common")
public class CommonController {

	@RequestMapping("/getConsts.do")
	@ResponseBody
	public ResponseResult<Map<String, Object>> getConsts() {
		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("PAGE_SIZE", Const.PAGE_SIZE);
//		map.put("SUCCESS", Const.SUCCESS);
//		map.put("paymentStatusArray", Const.paymentStatusArray);
//		map.put("shippingStatusArray", Const.shippingStatusArray);
		
		try {
			Field[] fields = Const.class.getDeclaredFields();
			for( Field f : fields ) {
				map.put(f.getName(), f.get(null));
			}
		} catch (Exception e) {
		}
		
		ResponseResult<Map<String, Object>> rr = new ResponseResult<Map<String, Object>>(1, "ok", map);
		return rr;
	}
}
