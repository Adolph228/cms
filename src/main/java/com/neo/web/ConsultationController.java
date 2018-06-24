package com.neo.web;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.neo.entity.Consultation;
import com.neo.entity.UserInfo;
import com.neo.sevice.ConsultationService;

@Controller
public class ConsultationController {
	
	 @Resource
	 private ConsultationService consultationService;
	 
	@RequestMapping("/topicImg")
    public String topicImg(Map<String, Object> map,
    		@RequestParam(value="pageNum",required=false, defaultValue="1") int pageNum,
			@RequestParam(value="pageSize",required=false, defaultValue="10") int pageSize){
//		List<Consultation> list = consultationService.list();
//		map.put("list", list);
		PageInfo<Consultation> page = consultationService.page(pageNum, pageSize);
		map.put("page", page);
        return"list";
    }
	@RequestMapping("/topicImg/{id}")
    public String topicImgDetail(@PathVariable Long id,Map<String, Object> map){
		Consultation data = consultationService.getById(id);
		map.put("data", data);
        return"detail";
    }
	@PostMapping("/topicImg/info") 
    public ResponseEntity<?> infoPost(Consultation data){
		data = consultationService.infoPost(data);
		return new ResponseEntity<Long>(data.getId(), HttpStatus.OK);
	}
	@RequestMapping("/sportNews")
	public String sportNews(Map<String, Object> map){
    	Subject subject = SecurityUtils.getSubject();
		UserInfo principal = (UserInfo) subject.getPrincipal();
		map.put("user", principal);
        return"index";
    }
}