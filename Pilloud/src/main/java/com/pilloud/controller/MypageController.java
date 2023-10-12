package com.pilloud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pilloud.model.PillVO;
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
    	UserVO userInfo = new UserVO();

        if (vo != null) {
            String medicine = vo.getMedicine();
            String allergy = vo.getAllergy();
            String disease = vo.getDisease();

            if (medicine != null && allergy != null && disease != null) {
                userInfo = mypageService.selectMyInfo(vo);
            } else {
                userInfo.setAllergy("추가");
                userInfo.setMedicine("추가");
                userInfo.setDisease("추가");
            }
        } 

        return userInfo;
    	
    }
    
    /* 회원탈퇴 */
    @RequestMapping(value="deleteUser", method=RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public String deleteUser(HttpSession session, @RequestBody UserVO vo) throws Exception {
    	// 회원 삭제 처리
        mypageService.deleteUser(vo);
        
        // 세션 무효화 (세션 값을 삭제)
        session.invalidate();
        
        // 성공적으로 탈퇴되었다는 메시지를 반환
        return "success";
    }
}
