package com.pilloud.mapper;

import java.util.List;
import java.util.Map;

import com.pilloud.model.UserVO;

public interface UserMapper {
	
	/* 회원가입 */
	public void userSignup(UserVO user);
	
	/* 약관동의 */
	public int updateAgree(UserVO user);
	
	/* 아이디 중복 검사 */
	public int idCheck(String id);
	
	/* 로그인 */
    public UserVO userLogin(UserVO user);
    
    /* 유저정보수정 */
    public int updateInfo(UserVO user);
    
    /* 회원탈퇴 */
	public void deleteUser(UserVO vo) throws Exception;
	
	public List<Map<String, Object>> searchPillNm(String user);

	public void saveUserAlg(Map<String, Object> pill);

	public void saveUserPreg(UserVO user);

	public void saveUserMedc(Map<String, Object> pill);
	
	public List<Map<String, Object>> getWarn(UserVO vo);
}
