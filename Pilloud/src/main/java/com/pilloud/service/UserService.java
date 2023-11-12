package com.pilloud.service;

import java.util.List;
import java.util.Map;

import com.pilloud.model.UserVO;

public interface UserService {

	/* 회원가입 */
	public void userSignup(UserVO user) throws Exception;
		
	/* 약관동의 */
	public int updateAgree(UserVO user) throws Exception;;
	
	/* 아이디 중복 검사 */
	public int idCheck(String id) throws Exception;
	
	/* 로그인 */
    public UserVO userLogin(UserVO user) throws Exception;
    
    /* 유저정보수정 */
    public int updateInfo(UserVO user) throws Exception;
    
    public void saveUserMedc(UserVO user) throws Exception;
    
    public void saveUserAlg(UserVO user) throws Exception;
    
    public void saveUserPreg(UserVO user) throws Exception;
    /* 회원탈퇴 */
	public void deleteUser(UserVO vo) throws Exception;
	
	public List<Map<String, Object>> getWarn(UserVO vo);
}
