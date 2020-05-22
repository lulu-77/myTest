package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements 
					HandlerInterceptor{

	//预处理回调函数
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		Object obj = request.getSession()
				.getAttribute("user");
		
		if(obj==null){
			String url = request.getContextPath()+"/user/showLogin.do";
			response.sendRedirect(url);
			return false;
		}else{
			return true;
		}		
	}
	
	//后处理回调函数
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		
	}

}
