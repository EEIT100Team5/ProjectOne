package com.iii.global.utils;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.videoManage.model.VideoManageDAO;

@Controller
public class GetImageController {

	@Autowired
	private VideoManageDAO videoManageDAO;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/getImage/{dataType}/{seqNo}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse response, @PathVariable("dataType") String dataType,
			@PathVariable("seqNo") Integer seqNo) {
		String path = null;
		if (dataType.equals("video")) {
			VideoBean vb = videoManageDAO.getVideo(seqNo);
			path = vb.getVideoImageFilePath();
		} else if(dataType.equals("member")) {
			
		}
		
		HttpHeaders headers = new HttpHeaders();
		int len = 0;
		byte[] media = null;
		InputStream is = null;
		try {
			is = new BufferedInputStream(new FileInputStream(path));
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] b = new byte[8192];
		try {
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
		} catch (Exception e) {
			throw new RuntimeException("ProductController的getPicture()發生IOException: " + e.getMessage());
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	@RequestMapping(value = "/getImageTest/{num}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse response,@PathVariable String num) {
		String path = null;
		path = "C:\\EEIT\\repository\\ProjectOne\\EEIT\\src\\main\\webapp\\WEB-INF\\views\\marketIndex\\images\\"+num+".jpg";
		
		
		HttpHeaders headers = new HttpHeaders();
		int len = 0;
		byte[] media = null;
		InputStream is = null;
		try {
			is = new BufferedInputStream(new FileInputStream(path));
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] b = new byte[8192];
		try {
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
		} catch (Exception e) {
			throw new RuntimeException("ProductController的getPicture()發生IOException: " + e.getMessage());
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
}
