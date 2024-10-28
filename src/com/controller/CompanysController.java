package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Companys;
import com.services.CompanysServices;
@Controller
public class CompanysController {
	@Autowired
	private CompanysServices CompanysServices;
	
	@RequestMapping("/addCompanys")
	public String addCompanys(@Valid @ModelAttribute Companys Companys,BindingResult result) {
		
		return CompanysServices.addCompanys(Companys,result);
	}
	
	@RequestMapping("/selectAllCompanys")
	public String selectAllCompanys(Model model) {
		return CompanysServices.selectAllCompanys(model);
	}
	@RequestMapping("/deleteCompanysByID")
	public String deleteCompanysByID(int cid,Model model) {
		CompanysServices.deleteCompanysByID(cid, model);
		
		return CompanysServices.selectAllCompanys(model);
	}
	@RequestMapping("/updateCompanysByID1")
	public String updateCompanysByID1(int cid,Model model) {
		CompanysServices.updateCompanysByID1(cid, model);
		
		return CompanysServices.selectAllCompanys(model);
	}
	@RequestMapping("/companysLogin")
	 public String login(Companys Companys,Model model,HttpSession session,String a) {
		 return CompanysServices.companysLogin(Companys, model,session,a);
		 
	 }
	@RequestMapping("/updateCompanys")
	public String updateCompanys(Model model,HttpSession session) {
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return "companys/updateCompanys";
	}
	@RequestMapping("/updateCompanys1")
	public String updateCompanys1(Companys Companys,HttpSession session) {
		return CompanysServices.updateCompanysByID(Companys,session);
	}
	@RequestMapping("/updateCompanysByID")
	public String updateCompanysByID(Companys Companys,HttpSession session) {
		
		
		return CompanysServices.updateCompanysByID(Companys, session);
	}
	
}
