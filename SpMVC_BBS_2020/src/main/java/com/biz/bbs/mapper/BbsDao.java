package com.biz.bbs.mapper;

import java.util.List;

import com.biz.bbs.model.BBsVO;

public interface BbsDao {
	
	public List<BBsVO> selectAll();
	
	
	public BBsVO findBySeq(long seq);
	
	
	public int insert(BBsVO bbsVO);
	
	public int update(BBsVO bbsVO);
	
	public int delete(long seq);
	

}
