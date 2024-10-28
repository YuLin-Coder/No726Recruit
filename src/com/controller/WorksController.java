package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Companys;
import com.bean.Works;
import com.bean.Purchasers;
import com.bean.Works;
import com.services.WorksServices;
@Controller
public class WorksController {
	@Autowired
	private WorksServices WorksServices;
	
	@RequestMapping("/addWorks")
	public String addWorks(Works Works,HttpSession session) {
		
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		Works.setCid(Companys.getCid());
		return WorksServices.addWorks(Works);
	}
	
	@RequestMapping("/selectAllWorks")
	public String selectAllWorks(Model model,Integer pageCur,HttpSession session) {
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return WorksServices.selectAllWorks(model,pageCur,Companys.getCid());
	}
	
	
	@RequestMapping("/selectAllWorks1")
	public String selectAllWorks1(Model model) {
		return WorksServices.selectAllWorks1(model);
	}
	@RequestMapping("/selectWorksByID1")
	public String selectWorksByID1(int wid,Model model,HttpSession session) {
		Purchasers Purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(Purchasers==null) {
			return "purchasers/needLogin";
		}
		return WorksServices.selectWorksByID1(wid,model,Purchasers.getPid());
}
	@RequestMapping("/deleteWorksByID")
	public String deleteWorksByID(int wid,Model model,HttpSession session) {
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		
		
		return WorksServices.deleteWorksByID(wid,Companys.getCid(), model);
	}
	@RequestMapping("/selectWorksByID")
	public String selectWorksByID(int wid,Model model,HttpSession session) {
		
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return WorksServices.selectWorksByID(wid,model);
}
	@RequestMapping("/updateWorks")
	public String updateWorks(Works Works) {
		
		return WorksServices.updateWorks(Works);
	}
	
	@RequestMapping("/selectWorksByTname")
	public String selectWorksByTname(String tname,Model model) {
		
		return WorksServices.selectWorksByTname(tname, model);
}
	@RequestMapping("/selectWorksByWname")
	public String selectWorksByWname(String wname,Model model) {
		
		return WorksServices.selectWorksByWname(wname, model);
}
}
