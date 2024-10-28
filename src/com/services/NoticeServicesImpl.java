package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.bean.Notice;
import com.dao.NoticeDao;

@Service("noticeServices")
public class NoticeServicesImpl implements NoticeServices{
    @Autowired
	private NoticeDao noticeDao;

	@Override
	public String addNotice(Notice notice) {
		// TODO Auto-generated method stub
		int t=noticeDao.addNotice(notice);
		if(t>0) {
			return "admin/success";
		}else {
			return "admin/error";
		}
	}
	@Override
	public String updateNotice(Notice notice) {
		// TODO Auto-generated method stub
		int t=noticeDao.updateNotice(notice);
		if(t>0) {
			return "admin/success";
		}else {
			return "admin/error";
		}
	}

	@Override
	public String selectAllNotice(Model model) {
		// TODO Auto-generated method stub
				List<Notice> notice=noticeDao.selectAllNotice();
				model.addAttribute("notice", notice);
				return "admin/showNotice";
	}
	@Override
	public String selectAllNotice1(Model model) {
		// TODO Auto-generated method stub
				List<Notice> notice=noticeDao.selectAllNotice();
				model.addAttribute("notice", notice);
				return "companys/showNotice";
	}
	@Override
	public String selectNoticeByID1(int nid,Model model) {
		// TODO Auto-generated method stub
		Notice  notice=noticeDao.selectNoticeByID(nid);
		model.addAttribute("notice", notice);
		return "admin/updateNotice";
	}
	@Override
	public String selectNoticeByID(int nid,Model model) {
		// TODO Auto-generated method stub
		Notice  notice=noticeDao.selectNoticeByID(nid);
		model.addAttribute("notice", notice);
		return "companys/noticeDetails";
	}
	@Override
	public String deleteNoticeByID(int nid) {
		// TODO Auto-generated method stub
		noticeDao.deleteNoticeByID(nid);
	  return "admin/showNotice";
	}
	
	@Override
	public String selectAllNotice2(Model model) {
		// TODO Auto-generated method stub
				List<Notice> notice=noticeDao.selectAllNotice();
				model.addAttribute("notice", notice);
				return "purchasers/showNotice";
	}
	@Override
	public String selectNoticeByID2(int nid,Model model) {
		// TODO Auto-generated method stub
		Notice  notice=noticeDao.selectNoticeByID(nid);
		model.addAttribute("notice", notice);
		return "purchasers/noticeDetails";
	}

}
