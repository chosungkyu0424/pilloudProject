package com.pilloud.mapper;

import java.util.List;

import com.pilloud.model.ShapeVO;

public interface ShapeMapper {

	/* 모양 선택 */
    public List<String> selectShape() throws Exception;
    
}
