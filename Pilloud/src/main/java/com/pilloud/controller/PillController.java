package com.pilloud.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pilloud.model.PillVO;
import com.pilloud.model.UserVO;
import com.pilloud.service.CommonService;
import com.pilloud.service.PillService;
import com.pilloud.service.ShapeService;
import com.pilloud.service.UserService;

@Controller
public class PillController {
	private static final Logger logger = LoggerFactory.getLogger(PillController.class);
	String pillAPIKey = "RlP5Qs6W7JzE4R72UmPN5dqZ5zMcFWMluYCsSwarFUzSHvlUdP3ZRc8t72i4LF9oM2SbnfiD%2FF4YOVKFJvVQqw%3D%3D";


	@Autowired
	private PillService pillService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CommonService commonService;
	// 의약품 검색리스트
    @ResponseBody
    @RequestMapping(value = "/searchPillNm", method = RequestMethod.POST, produces = "application/json")
    public List<PillVO> searchPillNm(@RequestBody PillVO searchVo) throws Exception {
        // 서비스를 호출하여 검색 결과를 가져옴
    	UserVO vo=new UserVO();
    	vo.setId("lee");
        List<PillVO> resultList = pillService.searchPillNm(searchVo);
        List<Map<String, Object>> warn = userService.getWarn(vo);
        for(int i=0;i<resultList.size();i++) {
        	for(int j=0;j<warn.size();j++) {
        		if(resultList.get(i).getItem_seq().equals(warn.get(j).get("ITEM_SEQ").toString())){
        			resultList.get(i).setWarnYn("Y");
        		}
        	}
        }
        return resultList;
    }
    
    //주의사항 검색 리스트
    @ResponseBody
    @RequestMapping(value = "/searchPillWarn", method = RequestMethod.POST, produces = "application/json")
    public List<PillVO> searchPillWarn(@RequestBody String jsonString) throws JsonProcessingException {
		Map<String, String> requestData = new HashMap<>();
	    JsonNode jsonReq = commonService.jsonStringToMap(jsonString);

	    String pillName = jsonReq.get("pillName").toString().replaceAll("\"", "");
	    String searchType = jsonReq.get("type").toString().replaceAll("\"", "");
	    
	    Map<String, Object> urlInfo = new HashMap<String, Object>();
		urlInfo.put("endpoint", "https://apis.data.go.kr/1471000/DURPrdlstInfoService03/"+searchType);
		urlInfo.put("default","pageNo=1&numOfRows=3&type=json");
//		urlInfo.put("default","pageNo=1&numOfRows=3&type=json");//페이징 정보 추가
		urlInfo.put("itemName", pillName);
		urlInfo.put("serviceKey", pillAPIKey);
		List<String> apiResult= commonService.mainCallAPI(urlInfo);
		System.out.print(apiResult);
		
		List<PillVO> result = pillService.searchPillWarn(apiResult);
		return result;
    }

}
