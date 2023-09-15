package com.pilloud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pilloud.mapper.ShapeMapper;
import com.pilloud.model.ShapeVO;

@Service
public class ShapeServiceImpl implements ShapeService{

	@Autowired
	ShapeMapper shapemapper;
	
	/* 모양 검색 */
    @Override
    public List<String> selectShape() throws Exception {
        
        return shapemapper.selectShape();
    }
}
