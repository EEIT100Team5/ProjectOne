package com.iii._05_.InputLiveStreamTime.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InputLiveStreamTimeDAOImpl implements InputLiveStreamTimeDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamsByStreamName(String streamName) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM InputLiveStreamTimeBean WHERE streamName = :streamName",InputLiveStreamTimeBean.class).setParameter("streamName", streamName).list();
	}

	@Override
	public InputLiveStreamTimeBean getLiveStreamsBySeqNo(int LiveStreamSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		InputLiveStreamTimeBean sb = null;
		sb = session.get(InputLiveStreamTimeBean.class, LiveStreamSeqNo);
		return sb;
	}
//	session.createQuery("FROM InputLiveStreamTimeBean WHERE LiveStreamSeqNo = :LiveStreamSeqNo",InputLiveStreamTimeBean.class).setParameter("LiveStreamSeqNo", LiveStreamSeqNo).list();
	@Override
	public List<InputLiveStreamTimeBean> getAllLiveStreams() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM InputLiveStreamTimeBean",InputLiveStreamTimeBean.class).list();
	}

	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM InputLiveStreamTimeBean WHERE account = :account",InputLiveStreamTimeBean.class).setParameter("account", account).list();
	}

	@Override
	public int saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int) session.save(InputLiveStreamTimeBean);
	}

	@Override
	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(InputLiveStreamTimeBean);
	}

	@Override
	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(InputLiveStreamTimeBean);
	}

	
}
