package com.biz.bbs.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.bbs.model.ImageVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service("fileServiceV1")
public class FileServiceImplV1 implements FileService {

	@Override
	public String fileUp(MultipartFile file) {
		return null;
	}

	@Override
	public boolean fileDelete(String b_file) {
		return false;
	}

	@Override
	public List<ImageVO> filesUp(MultipartHttpServletRequest files) {
		return null;
	}
}
