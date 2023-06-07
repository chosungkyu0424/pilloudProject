package com.pilloud.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

import com.pilloud.model.UserVO;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class UserMapperTests {

	@Autowired
	private UserMapper usermapper;			//UserMapper.java 인터페이스 의존성 주입
	
	//회원가입 쿼리 테스트 메서드
//	@Test
//	public void userJoin() throws Exception{
//		UserVO user = new UserVO();
//		
//		user.setUserId("test");			//회원 id
//		user.setUserPw("test");			//회원 비밀번호
//		user.setUserName("test");			//회원 이름
//		user.setUserMail("test");			//회원 메일
//		
//		
//		usermapper.userJoin(user);			//쿼리 메서드 실행
//		
//	}
	

    /* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void userLogin() throws Exception{
        
    	UserVO user = new UserVO();    // UserVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
    	user.setUserId("zxcv");
    	user.setUserPw("zxcv");
        
        /* 올바른 않은 아이디 비번 입력경우 */
        //user.setUserId("test1123");
        //user.setUserPw("test1321321");
        
        usermapper.userLogin(user);
        System.out.println("결과 값 : " + usermapper.userLogin(user));
        
    }
	
	
}