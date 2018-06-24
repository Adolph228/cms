package com.neo.inteceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;

import com.neo.entity.UserInfo;
import com.neo.util.UserUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
public class HomeInteceptor implements HandlerInterceptor{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,ModelAndView modelAndView)
			throws Exception {
		// 静态资源过滤
		if (handler instanceof ResourceHttpRequestHandler)
		    return ;
		
		if (modelAndView == null)
			return ;
		
		//当前登录用户
		UserInfo loginUser = UserUtils.getCurrentUser();
		//Shrio实体
		//ShiroPrincipal principal= UserUtils.getPrincipal();
		
		//当前登录用户
		modelAndView.addObject("loginUser", loginUser);
		
		
		//TODO NAV Model 存放数量与导航地址
		
		//利用访问地点处理导航栏激活效果
		String nav  = request.getRequestURI();
		nav = nav.replaceAll("//", "/");
		
		//取父级
		String parentNav = nav.substring(0, nav.lastIndexOf("/"));
		//请求的URL
		//
		
		logger.info(">>>[HomeInteceptor] request:"+ nav + ", parentNav="+parentNav);
	
		request.getSession().setAttribute("historyMenuHref", nav);
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		return true;
	}

}
