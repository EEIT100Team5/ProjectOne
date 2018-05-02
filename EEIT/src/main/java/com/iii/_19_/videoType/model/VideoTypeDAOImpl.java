package com.iii._19_.videoType.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class VideoTypeDAOImpl implements VideoTypeDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public List<VideoTypeBean> getAllVideoType() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM VideoTypeBean WHERE videoTypeStatus = '1'",VideoTypeBean.class).list();
	}

	@Override
	public VideoTypeBean getVideoType(String videoType) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(VideoTypeBean.class,videoType);
	}

	@Override
	public int saveVideoType(VideoTypeBean videoTypeBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int)session.save(videoTypeBean);
	}

	@Override
	public void updateVideoType(VideoTypeBean videoTypeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.update(videoTypeBean);
	}

	@Override
	public void deleteVideoType(VideoTypeBean videoTypeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(videoTypeBean);
	}

}
