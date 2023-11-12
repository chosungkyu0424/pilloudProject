package com.pilloud.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pilloud.mapper.UserMapper;
import com.pilloud.model.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper usermapper;
	String pillAPIKey = "RlP5Qs6W7JzE4R72UmPN5dqZ5zMcFWMluYCsSwarFUzSHvlUdP3ZRc8t72i4LF9oM2SbnfiD%2FF4YOVKFJvVQqw%3D%3D";
	@Autowired
	private CommonService commonService;
	/* 회원가입 */
	@Override
	public void userSignup(UserVO user) throws Exception {
		
		usermapper.userSignup(user);
		
	}
	
	/* 약관동의 */
	@Override
	public int updateAgree(UserVO user) throws Exception {
		
		return usermapper.updateAgree(user);
		
	}
	
	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String id) throws Exception {
		
		return usermapper.idCheck(id);
	}
	
	/* 로그인 */
    @Override
    public UserVO userLogin(UserVO user) throws Exception {
        
        return usermapper.userLogin(user);
    }

    /* 유저 정보수정 */
	@Override
	public int updateInfo(UserVO user) throws Exception {
		
		return usermapper.updateInfo(user);
		
	}
	
	@Override
	public void saveUserMedc(UserVO user) throws Exception {
		String[] alg = user.getMedicine().split(",");
		for(int m=0;m<alg.length;m++) {
			Map<String, Object> urlInfo = new HashMap<String, Object>();
			urlInfo.put("endpoint", "https://apis.data.go.kr/1471000/DURPrdlstInfoService03/"+"getEfcyDplctInfoList03");
			urlInfo.put("default","pageNo=1&numOfRows=3&type=json");
//			urlInfo.put("default","pageNo=1&numOfRows=3&type=json");//페이징 정보 추가
			urlInfo.put("itemName", alg[m]);
			urlInfo.put("serviceKey", pillAPIKey);
			List<String> apiResult= commonService.mainCallAPI(urlInfo);
			System.out.print(apiResult);
			Map<String, Object> pill = new HashMap<>();
			for(int a=0;a<apiResult.size();a++) {
				pill.put("alg", alg[a]);
				pill.put("userId", user.getId());
				usermapper.saveUserMedc(pill);
			}
		}
		
	}
	
	@Override
	public void saveUserPreg(UserVO user) throws Exception {
		Map<String, Object> urlInfo = new HashMap<String, Object>();
		urlInfo.put("endpoint", "https://apis.data.go.kr/1471000/DURPrdlstInfoService03/"+"getPwnmTabooInfoList03");
		urlInfo.put("default","pageNo=1&numOfRows=3&type=json");
		urlInfo.put("serviceKey", pillAPIKey);
		List<String> apiResult= commonService.mainCallAPI(urlInfo);
		System.out.print(apiResult);
		for(int p=0;p<apiResult.size();p++) {
			
			user.setPregnant(apiResult.get(p).toString());
			usermapper.saveUserPreg(user);
		}		
		user.setPregnant("Y");
	}
	
	@Override
	public void saveUserAlg(UserVO user) throws Exception {
		String[] medicine = user.getMedicine().split(",");
		for(int m=0;m<medicine.length;m++) {
			String itemNm = medicine[m];
			List<Map<String, Object>> pillList = usermapper.searchPillNm(itemNm);
			for(int l=0;l<pillList.size();l++) {
				Map<String, Object> pill = new HashMap<String, Object>();
				pill.put("itemNm", pillList.get(l).get("ITEM_SEQ").toString());
				pill.put("userId", user.getId());
				usermapper.saveUserAlg(pill);				
			}
		}
		
		
	}
	
	/* 회원탈퇴 */
    @Override
	public void deleteUser(UserVO vo) throws Exception{
    	usermapper.deleteUser(vo);
    }

	@Override
	public List<Map<String, Object>> getWarn(UserVO vo) {
		// TODO Auto-generated method stub
		return usermapper.getWarn(vo);
		
	}
    
}
