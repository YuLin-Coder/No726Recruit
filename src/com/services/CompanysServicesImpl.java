package com.services;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.bean.Admin;
import com.bean.Companys;
import com.bean.Purchasers;
import com.dao.AdminDao;
import com.dao.CompanysDao;
import com.dao.PurchasersDao;


@Service("Companyservices")
public class CompanysServicesImpl implements CompanysServices{
    @Autowired
	private CompanysDao CompanysDao;
    @Autowired
   	private PurchasersDao PurchasersDao;
    @Autowired
   	private AdminDao AdminDao;

	@Override
	public String addCompanys(Companys Companys, BindingResult result) {
		// TODO Auto-generated method stub
		
		if(result.hasErrors()) {
			return "Companys/register";
		}
		int t=CompanysDao.addCompanys(Companys);
		if(t>0) {
			return "companys/success";
		}else {
			return "companys/error";
		}
	}

	@Override
	public String selectAllCompanys(Model model) {
		// TODO Auto-generated method stub
				List<Companys> Companys=CompanysDao.selectAllCompanys();
				model.addAttribute("Companys", Companys);
				return "admin/showCompanys";
	}

	@Override
	public String companysLogin(Companys Companys, Model model,HttpSession session,String a) {
		// TODO Auto-generated method stub
		
		if(a.equals("1")) {
			Companys Companys1=CompanysDao.companysLogin(Companys);
			if(Companys1!=null) {
				String cccc=Companys1.getCtypes1();
				if(cccc.equals("未审核")) {
					JOptionPane.showMessageDialog(null, "未审核不能登录！");
					return "Login";
				}else {
				session.setAttribute("Companys", Companys1);
				return "companys/index";}
			}else {
				JOptionPane.showMessageDialog(null, "账号或者密码不正确！");
				return "Login";
			}
		}else if("2".equals(a)){
			Purchasers pp=new Purchasers();
			pp.setLoginaccount(Companys.getLoginaccount1());
			pp.setPassword(Companys.getPassword1());
			Purchasers Purchasers1=PurchasersDao.purchasersLogin(pp);
			
				if(Purchasers1!=null) {
					String cccc=Purchasers1.getPtypes();
					if(cccc.equals("未审核")) {
						JOptionPane.showMessageDialog(null, "未审核不能登录！");
						return "Login";
						
					}else {
						
					session.setAttribute("Purchasers", Purchasers1);
					return "purchasers/index";}
				}else {
					JOptionPane.showMessageDialog(null, "账号或者密码不正确！");
					return "Login";
				}
		}else {
			Admin aa = new Admin();
			aa.setLoginaccount(Companys.getLoginaccount1());
			aa.setPassword(Companys.getPassword1());
			Admin Admin1=AdminDao.adminLogin(aa);
			if(Admin1!=null) {
				return "admin/index";
			}else {
				JOptionPane.showMessageDialog(null, "账号或者密码不正确！");
				return "Login";
			}
			
			
		}
		}
		
		
	
	@Override
	public String deleteCompanysByID(int uid,Model model) {
		// TODO Auto-generated method stub
		CompanysDao.deleteCompanysByID(uid);
		List<Companys> Companys=CompanysDao.selectAllCompanys();
		model.addAttribute("Companys", Companys);
		return "admin/showCompanys";
	}
	@Override
	public String updateCompanysByID1(int uid,Model model) {
		// TODO Auto-generated method stub
		CompanysDao.updateCompanysByID1(uid);
		List<Companys> Companys=CompanysDao.selectAllCompanys();
		model.addAttribute("Companys", Companys);
		return "admin/showCompanys";
	}
	@Override
	public String updateCompanysByID(Companys Companys,HttpSession session) {
		// TODO Auto-generated method stub
		
		int t=CompanysDao.updateCompanysByID(Companys);
		if(t>0) {
			
			session.invalidate();
			return "companys/success";
		}else {
			return "companys/error";
		}
	}

}
