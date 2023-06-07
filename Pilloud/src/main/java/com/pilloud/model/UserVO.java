package com.pilloud.model;

import lombok.Data;

@Data
public class UserVO {
		//회원 id
		private String userId;
		
		//회원 비밀번호
		private String userPw;
		
		//회원 이름
		private String userName;
		
		//회원 이메일
		private String userMail;

		
		//등록일자
//		private int regDate;
		
		
		

//		@Override
//		public String toString() {
//			return "UserVO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
//					+ ", userMail=" + userMail + "]";
//		}
	
}
