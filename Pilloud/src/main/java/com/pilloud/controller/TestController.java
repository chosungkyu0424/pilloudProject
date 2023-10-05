package com.pilloud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.pilloud.service.CommonService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TestController {

	@Autowired private CommonService common;
	String pillAPIKey = "RlP5Qs6W7JzE4R72UmPN5dqZ5zMcFWMluYCsSwarFUzSHvlUdP3ZRc8t72i4LF9oM2SbnfiD%2FF4YOVKFJvVQqw%3D%3D";
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws JsonProcessingException 
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//
//		String formattedDate = dateFormat.format(date);
//
//		model.addAttribute("serverTime", formattedDate);
//
//		return "home";
//	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String main() throws JsonProcessingException {
		Map<String, Object> urlInfo = new HashMap<String, Object>();
		urlInfo.put("endpoint", "https://apis.data.go.kr/1471000/DURPrdlstInfoService03/getUsjntTabooInfoList03");
		urlInfo.put("typeName","typeName=병용금기" );
		urlInfo.put("default","pageNo=1&numOfRows=3&type=json");
		urlInfo.put("itemName", "씨코나졸정");
		urlInfo.put("serviceKey", pillAPIKey);
		System.out.print(common.mainCallAPI(urlInfo));
		return "test";
	}


}
