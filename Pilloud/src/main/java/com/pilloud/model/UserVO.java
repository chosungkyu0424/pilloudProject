package com.pilloud.model;

import lombok.Data;

@Data
public class UserVO {
	//회원 id
	private String id;
	
	//회원 비밀번호
	private String pw;
	
	//회원 이름
	private String nm;
	
	//회원 생년월일
	private String birth;
	
	//회원 이메일
	private String email;
	
	//회원 이메일
	private String sex;
}