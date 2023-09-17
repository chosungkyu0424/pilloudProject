package com.pilloud.service;

import java.util.List;

import com.pilloud.model.ShapeVO;
import com.pilloud.model.UserVO;

public interface ShapeService {

	/* 모양 검색 */
    public List<String> selectShape() throws Exception;
    
    /* 제형 검색 */
    public List<String> selectChartn() throws Exception;
    
    /* 색상 검색 */
    public List<String> selectColor() throws Exception;
}
