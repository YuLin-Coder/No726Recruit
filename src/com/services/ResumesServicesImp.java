package com.services;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Resumes;
import com.dao.ResumesDao;



@Service("goodsResumeservices")
public class ResumesServicesImp implements ResumesServices{
    @Autowired
	private ResumesDao ResumesDao;

    
	@Override
	public String addResumes(Resumes Resumes,HttpServletRequest request,MultipartFile file) {
		// TODO Auto-generated method stub
		if(!file.isEmpty()) {
			String photo=uploadOneFile(file,request);
			Resumes.setImgurl(photo);
		}else {
			return "admin/error";
		}
		int t=ResumesDao.addResumes(Resumes);
		if(t>0) {
			return "purchasers/success";
		}else {
			return "purchasers/error";
		}
	}
	private String uploadOneFile(MultipartFile myfile, HttpServletRequest request) {
		// TODO Auto-generated method stub
		 String realpath=request.getServletContext().
				 getRealPath("images");
		 File pathfile=new File(realpath);
		 if(!pathfile.exists()) {
			 pathfile.mkdirs();
		 }
		 String filename=myfile.getOriginalFilename();
		 String suffixList = "jpg,gif,png,ico,bmp,jpeg";
		 String type=filename.substring
				 (filename.lastIndexOf(".")+1,filename.length());
		 if(suffixList.contains(type.toLowerCase())) {
			//******************************************//
			 File tagrgetFile=new File(realpath,filename);
			 try {
				myfile.transferTo(tagrgetFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return filename ;
		 }else {
			return null ;
		 }
	}
	
	@Override
	public String deleteResumesByID(int rid,Model model,int pid) {
		// TODO Auto-generated method stub
		ResumesDao.deleteResumesByID(rid);
		
		List<Resumes> Resumes=ResumesDao.selectResumesByPid(pid);
		model.addAttribute("Resumes", Resumes);
		return "purchasers/showResumes";
	}


	@Override
	public String selectResumesByPid(int pid, Model model) {
		// TODO Auto-generated method stub
		List<Resumes> Resumes=ResumesDao.selectResumesByPid(pid);
		model.addAttribute("Resumes", Resumes);
		return "purchasers/showResumes";
	}
	@Override
	public String selectResumesByRid(Model model, int rid) {
		// TODO Auto-generated method stub
	
		Resumes Resumes=ResumesDao.selectResumesByRid(rid);
		model.addAttribute("Resumes", Resumes);
		return "companys/ResumesDetails";
	}

	

}
