package com.pilloud.service;

import com.pilloud.model.UserVO;

public interface MypageService {

    /* 마이페이지 개인정보(알러지, 복용중인약, 지병) */
	public UserVO selectMyInfo(UserVO vo) throws Exception;
	
}
