package com.pilloud.mapper;

import java.util.List;

import com.pilloud.model.ShapeVO;

public interface ShapeMapper {

	/* 모양 선택 */
    public List<String> selectShape() throws Exception;
    
    /* 모양 제형 */
    public List<String> selectChartn() throws Exception;
    
    /* 색상 선택 */
    public List<String> selectColor() throws Exception;
    
}
