package com.pilloud.service;

import java.util.List;

import com.pilloud.model.ShapeVO;
import com.pilloud.model.UserVO;

public interface ShapeService {

	/* 모양 검색 */
    public List<String> selectShape() throws Exception;
}
