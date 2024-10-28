package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Notice;
import com.services.NoticeServices;
@Controller
public class NoticeController {
	@Autowired
	private NoticeServices noticeServices;
	
	@RequestMapping("/addNotice")
	public String addNotice(Notice notice) {
		 
		Date date = new Date();   
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");  
		notice.setTimes1(df.format(date));
		return noticeServices.addNotice(notice);
	}
	@RequestMapping("/selectAllNotice")
	public String selectAllNotice(Model model) {
		return noticeServices.selectAllNotice(model);
	}
	@RequestMapping("/selectAllNotice1")
	public String selectAllNotice1(Model model) {
		return noticeServices.selectAllNotice1(model);
	}
	@RequestMapping("/selectNoticeByID1")
	public String selectNoticeByID1(int nid,Model model) {
		
		return noticeServices.selectNoticeByID1(nid,model);
}
	@RequestMapping("/deleteNoticeByID")
	public String deleteNoticeByID(int nid,Model model) {
		noticeServices.deleteNoticeByID(nid);
		return noticeServices.selectAllNotice(model);
	}
	@RequestMapping("/selectNoticeByID")
	public String selectNoticeByID(int nid,Model model) {
		
		return noticeServices.selectNoticeByID(nid,model);
}
	@RequestMapping("/updateNotice")
	public String updateNotice(Notice notice) {
		
		return noticeServices.updateNotice(notice);
	}
	
	
	@RequestMapping("/selectAllNotice2")
	public String selectAllNotice2(Model model) {
		return noticeServices.selectAllNotice2(model);
	}
	@RequestMapping("/selectNoticeByID2")
	public String selectNoticeByID2(int nid,Model model) {
	
		return noticeServices.selectNoticeByID2(nid,model);
}
}
