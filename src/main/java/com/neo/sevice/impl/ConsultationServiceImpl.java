package com.neo.sevice.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neo.dao.ConsultationMapper;
import com.neo.entity.Consultation;
import com.neo.sevice.ConsultationService;
@Service
public class ConsultationServiceImpl implements ConsultationService{
	@Autowired
	private ConsultationMapper dao;
	@Override
	public List<Consultation> list() {
		List<Consultation> lits = dao.selectAll();
		return lits;
	}

	@Override
	public Consultation getById(Long id) {
		Consultation data = dao.selectByPrimaryKey(id);
		return data;
	}

	@Override
	public Consultation infoPost(Consultation data) {
		if(data.getId()!=null){
			dao.updateByPrimaryKey(data);
		}else{
			dao.insert(data);
		}
		return data;
	}

	@Override
	public PageInfo<Consultation> page(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);		
		return new PageInfo<Consultation>(list());
	}

}
