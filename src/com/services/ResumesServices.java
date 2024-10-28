package com.services;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Resumes;
   public interface ResumesServices {
	   
   public String addResumes(Resumes Resumes,HttpServletRequest request,MultipartFile photo);
   public String selectResumesByPid(int pid,Model model);
   public String deleteResumesByID(int rid,Model model,int pid);
   public String selectResumesByRid(Model model,int rid);
   
   
}
