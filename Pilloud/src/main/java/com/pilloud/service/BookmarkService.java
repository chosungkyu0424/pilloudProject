package com.pilloud.service;

import java.util.List;

import com.pilloud.model.PillVO;
import com.pilloud.model.ShapeVO;
import com.pilloud.model.UserVO;

public interface BookmarkService {

    /* 북마크 추가 */
	public void insertBookmark(PillVO searchVo) throws Exception;

	/* 북마크 출력 */
	public List<PillVO> selectBookmark(String id) throws Exception;
}
