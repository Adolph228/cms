package com.neo.sevice;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.neo.entity.Consultation;

public interface ConsultationService {
	public PageInfo<Consultation> page(int pageNum,int pageSize);
	public List<Consultation> list();
	public Consultation getById(Long id);
	public Consultation infoPost(Consultation data);
}
