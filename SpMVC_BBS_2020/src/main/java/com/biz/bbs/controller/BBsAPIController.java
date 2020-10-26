package com.biz.bbs.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.biz.bbs.model.BBsVO;
import com.biz.bbs.service.BBsService;
import com.biz.bbs.service.FileService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@CrossOrigin({"http://127.0.0.1:5500","https://naver.com","*"})
@RestController
@RequestMapping(value = "/api")
public class BBsAPIController {
	
		@Autowired
		@Qualifier("bbsServiceV1")
		private BBsService bbsService;
		
		
		@Autowired
		@Qualifier("fileServiceV4")
		private FileService fileService;
		
		@RequestMapping(value = "/bbs", method = RequestMethod.GET)
		public List<BBsVO>bbs_list(){
			List<BBsVO> bbsList = bbsService.selectAll();
			return bbsList;
		}
		
		@RequestMapping(value = "/bbs/{seq}", method =)
		
		
	
}
