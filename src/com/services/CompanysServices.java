package com.services;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.bean.Companys;
   public interface CompanysServices {
	   
   public String addCompanys(Companys Companys, BindingResult result);
   public String selectAllCompanys(Model model);
   public String deleteCompanysByID(int cid,Model model);
   public String companysLogin(Companys Companys,Model model,HttpSession session,String a);
   public String updateCompanysByID(Companys Companys,HttpSession session);
   public String updateCompanysByID1(int cid,Model model);
   
}
