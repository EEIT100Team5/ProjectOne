package com.iii._19_.likeUnlikeVideos.model;

import java.util.List;

public interface LikeUnlikeVideosDAO {
	public LikeUnlikeVideosBean getLikeUnlikeVideos(String account, Integer videoSeqNo);

	public List<LikeUnlikeVideosBean> getUserAllLikeVideos(String account);

	public int saveLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean);

	public void updateLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean);

	public void deleteLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean);
}
