package com.pilloud.model;

import lombok.Data;

@Data
public class ShapeVO {

	//모양
	private String drugShape;
	
	//제형
	private String chartn;
	
	//색상1
	private String colorClass1;
	
	//색상2
	private String colorClass2;
		
	//분할선 앞
	private String lineFront;
	
	//분할선 뒤
	private String lineBack;
	
	//프린트 앞
	private String printFront;
	
	//프린트 뒤
	private String printBack;
}
