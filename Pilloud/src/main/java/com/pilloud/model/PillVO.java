package com.pilloud.model;

import lombok.Data;

@Data
public class PillVO {
	//품목일련번호
	private String itemSeq;
	
	//품목명
	private String itemName;
	
	//업체일련번호
	private String entpSeq;
	
	//업체명
	private String entpName;
	
	//성상
	private String chartn;
	
	//큰제품이미지
	private String itemImage;
	
	//표시(앞)
	private String printFront;
	
	//표시(뒤)
	private String printBack;
	
	//의약품모양
	private String drugShape;
	
	//색깔(앞)
	private String colorClass1;
	
	//색깔(뒤)
	private String colorClass2;
	
	//분할선(앞)
	private String lineFront;
	 
	//분할선(뒤)
	private String lineBack;
	
	//크기(장축)
	private String lengLong;
	
	//크기(단축)
	private String lengShort;
	
	//크기(두께)
	private String thick;
	
	//약학정보원 이미지 생성일
	private String imgRegistTs;
	
	//분류번호
	private String classNo;
	
	//전문/일반
	private String etcOtcCode;
	
	//품목허가일자
	private String itemPermitDate;
	
	//모양코드
	private String shapeCode;
	
	//마크내용(앞)
	private String markCodeFrontAnal;
	
	//마크내용(뒤)
	private String markCodeBackAnal;
	
	//마크이미지(앞)
	private String markCodeFrontImg;
	
	//마크이미지(뒤)
	private String markCodeBackImg;
	
	//제품영문명
	private String itemEngName;
	
	//보험코드
	private String ediCode;
}
