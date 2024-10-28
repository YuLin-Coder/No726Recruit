package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Purchasers;
import com.bean.Resumes;
import com.services.ResumesServices;
@Controller
public class ResumesController {
	@Autowired
	private ResumesServices ResumesServices;
	
	@RequestMapping("/addResumes")
	public String addResumes( Resumes Resumes,HttpServletRequest request,Model model,MultipartFile file,HttpSession session) {
		Purchasers Purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(Purchasers==null) {
			return "purchasers/needLogin";
		}
		Resumes.setPid(Purchasers.getPid());
		return ResumesServices.addResumes(Resumes,request,file);
	}
	
	@RequestMapping("/selectResumesByPid")
	public String selectAllResumes(Model model,HttpSession session) {
		Purchasers Purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(Purchasers==null) {
			return "purchasers/needLogin";
		}
		return ResumesServices.selectResumesByPid(Purchasers.getPid(), model);
	}
	@RequestMapping("/deleteResumesByID")
	public String deleteResumesByID(int rid,Model model,HttpSession session) {
	
		Purchasers Purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(Purchasers==null) {
			return "purchasers/needLogin";
		}
		return ResumesServices.deleteResumesByID(rid,model,Purchasers.getPid());
	}
	
	@RequestMapping("/selectResumesByRid")
	public String selectResumesByRid(Model model,int rid) {
		
		return ResumesServices.selectResumesByRid(model, rid);
	}
	
	
	
}
