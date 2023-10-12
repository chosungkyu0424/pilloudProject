package com.pilloud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pilloud.mapper.MypageMapper;
import com.pilloud.model.UserVO;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageMapper mypagemapper;
    
    /* 마이페이지 개인정보(알러지, 복용중인약, 지병) */
    @Override
	public UserVO selectMyInfo(UserVO vo) throws Exception {
    	
		System.out.println("===============" + mypagemapper.selectMyInfo(vo));
		System.out.println("===============" + mypagemapper.selectMyInfo(vo));
	
    	
    	return mypagemapper.selectMyInfo(vo);
		
	}
    
    /* 회원탈퇴 */
    @Override
	public void deleteUser(UserVO vo) throws Exception{
    	mypagemapper.deleteUser(vo);
    }
    
}

