package com.iii._19_.videoManage.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.videoManage.model.VideoManageService;

@Controller
@RequestMapping("/video")
public class VideoManageController {

	@Autowired
	VideoManageService videoManageService;

	@RequestMapping("deletePage")
	public String deletePage() {
		return "/videoManage/videoDelete";
	}

	@RequestMapping(value = "/{videoSeqNo}", method = RequestMethod.DELETE)
	public @ResponseBody String deleteVideo(@PathVariable("videoSeqNo") Integer videoSeqNo) {
		System.out.println("lalalalala");
		VideoBean vb = videoManageService.getVideo(videoSeqNo);
		videoManageService.deleteVideo(vb);

		return "OK";
	}

	@RequestMapping(method = RequestMethod.PUT)
	public @ResponseBody String updateVideo(@ModelAttribute("videoBeanUpdate") VideoBean vb, BindingResult result) {
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			System.out.println("嘗試輸入不允許的欄位");
			throw new RuntimeException("嘗試輸入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		VideoBean oldvb = videoManageService.getVideo(vb.getVideoSeqNo());
		oldvb.setVideoDescription(vb.getVideoDescription());
		oldvb.setVideoTitle(vb.getVideoTitle());
		oldvb.setVideoType(vb.getVideoType());
		videoManageService.updateVideo(oldvb);
		String videoImageFileFolderPath = "C:/resources/images/video/" + vb.getAccount();
		MultipartFile imageFile;
		if ((imageFile = vb.getVideoImage()) != null) {
			videoManageService.saveVideoImageToFile(videoImageFileFolderPath, vb.getVideoImageFilePath(), imageFile);
		}
		return "ok";
	}

	@RequestMapping(value = "{videoSeqNo}", method = RequestMethod.GET)
	public String inputUpdate(@PathVariable("videoSeqNo") Integer videoSeqNo, Map<String, Object> map) {
		map.put("video", videoManageService.getVideo(videoSeqNo));
		return "videoManage/videoUpdate";
	}

	@RequestMapping(method = RequestMethod.POST)
	public @ResponseBody String saveVideo(@ModelAttribute("videoBean") VideoBean vb, BindingResult result) {
		String[] suppressedFields = result.getSuppressedFields();
		if (vb.getAccount().equals("")) {
			vb.setAccount("bob");
		}
		if (suppressedFields.length > 0) {
			System.out.println("嘗試輸入不允許的欄位");
			throw new RuntimeException("嘗試輸入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		// 取出影片封面圖片檔名
		MultipartFile videoImage = vb.getVideoImage();
		String originalImageName = videoImage.getOriginalFilename();
		vb.setVideoImageFileName(originalImageName);
		// 取出影片檔名
		MultipartFile videoFile = vb.getVideoFile();
		String originalFileName = videoFile.getOriginalFilename();
		vb.setVideoFileName(originalFileName);
		// 取出影片封面圖片副檔名
		String extImage = originalImageName.substring(originalImageName.lastIndexOf("."));
		// 取出影片副檔名
		String extVideo = originalFileName.substring(originalFileName.lastIndexOf("."));

		// 影片資料寫入資料庫
		int key = videoManageService.saveVideo(vb, extImage, extVideo, videoImage, videoFile);
		return "ok";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String inputSave(Map<String, Object> map) {
		map.put("video", new VideoBean());
		return "videoManage/videoInsert";
	}

	@RequestMapping(value = "videos", method = RequestMethod.GET)
	public String getVideos(Map<String, Object> map) {
		map.put("videos", videoManageService.getAllVideo());
		map.put("videoBean", new VideoBean());
//		map.put("videoBeanUpdate", new VideoBean());
		return "videoManage/videoManage";
	}
}
