package com.pilloud.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pilloud.service.ShapeService;

@Controller
public class ShapeController {
	private static final Logger logger = LoggerFactory.getLogger(ShapeController.class);

	@Autowired
	private ShapeService shapeService;
	
    @RequestMapping(value="selectShape", method=RequestMethod.POST)
    @ResponseBody
    public List<String> selectShape() throws Exception{
    	//ModelAndView model = new ModelAndView("jsonView");
    	
        return shapeService.selectShape();
        //model.addObject("result", shape);
        
        //return model;
 
    }
    
    @RequestMapping(value="selectChartn", method=RequestMethod.POST)
    @ResponseBody
    public List<String> selectChartn() throws Exception{
    	
        return shapeService.selectChartn();
 
    }
    
    @RequestMapping(value="selectColor", method=RequestMethod.POST)
    @ResponseBody
    public List<String> selectColor() throws Exception{
    	
        return shapeService.selectColor();
 
    }
    
}


