package com.iii._05_.InputLiveStreamTime.model;

import java.io.File;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Transactional
@Service
public class InputLiveStreamTimeServiceImpl implements InputLiveStreamTimeService {

	@Autowired
	InputLiveStreamTimeDAO InputLiveStreamTimeDAO;
	
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamsByStreamName(String streamName) {
		return InputLiveStreamTimeDAO.getLiveStreamsByStreamName(streamName);
	}
	@Transactional
	@Override
	public InputLiveStreamTimeBean getLiveStreamsBySeqNo(int LiveStreamSeqNo) {
		return InputLiveStreamTimeDAO.getLiveStreamsBySeqNo(LiveStreamSeqNo);
		
	}
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getAllLiveStreams() {
		return InputLiveStreamTimeDAO.getAllLiveStreams();
	}
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account) {
		
		return InputLiveStreamTimeDAO.getLiveStreamByAccount(account);
	}
	@Transactional
	@Override
	public void saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean, String extPhoto,MultipartFile Photo) {
		 
		
		 
		
		//圖片路徑
		String photoFilePath = "C:/resources/images/members/"+ InputLiveStreamTimeBean.getAccount() + "/LiveCoverPath/" + InputLiveStreamTimeBean.getAccount() + extPhoto;
		//圖片資料夾路徑
		String photoFileFolderPath = "C:/resources/images/members/"+ InputLiveStreamTimeBean.getAccount() + "/LiveCoverPath/" ;
		
		InputLiveStreamTimeBean.setLiveCoverPath(photoFilePath);

		
		 InputLiveStreamTimeDAO.saveLiveStreams(InputLiveStreamTimeBean);
		
		 savePhotoToFile(photoFileFolderPath , photoFilePath , Photo);
		
	}
	@Transactional
	@Override
	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.updateLiveStreams(InputLiveStreamTimeBean);
		
	}
	@Transactional
	@Override
	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.deleteLiveStreams(InputLiveStreamTimeBean);
		
	}
	@Transactional
	@Override
	public void savePhotoToFile(String photoFileFolderPath, String photoFilePath, MultipartFile photo) {
		File photoFolder = new File(photoFileFolderPath);
		if (!photoFolder.exists()) {
			photoFolder.mkdirs();
		}
		File photofile = new File(photoFilePath);
		try {
			photo.transferTo(photofile);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生意外");
		}
	}
}
