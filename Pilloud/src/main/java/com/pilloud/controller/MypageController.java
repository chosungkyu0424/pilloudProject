package com.pilloud.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pilloud.model.UserVO;
import com.pilloud.service.MypageService;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@Autowired
	private MypageService mypageService;
	
	// 마이페이지 개인정보(알러지, 복용중인약, 지병)
    @ResponseBody
    @RequestMapping(value = "/selectMyInfo", method = RequestMethod.POST, produces = "application/json")
    public UserVO selectMyInfo(@RequestBody UserVO vo) throws Exception {
        /* UserVO user = (UserVO) session.getAttribute("user");
        UserVO userInfo = null;
        
        if (user != null) {
            String id = user.getId();
            // 사용자 정보 조회 쿼리 실행
            userInfo = mypageService.selectMyInfo(id);
        }
        
        return userInfo;*/
    	UserVO userInfo = null;
    	if (vo != null) {
    		userInfo = mypageService.selectMyInfo(vo);
    	}
    	return userInfo;
    } 
    	
}
