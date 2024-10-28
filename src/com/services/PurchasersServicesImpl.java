package com.services;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;


import com.bean.Purchasers;
import com.dao.PurchasersDao;



@Service("goodsPurchaserservices")
public class PurchasersServicesImpl implements PurchasersServices{
    @Autowired
	private PurchasersDao PurchasersDao;

    
	@Override
	public String addPurchasers(Purchasers purchasers) {
		// TODO Auto-generated method stub
	
		int t=PurchasersDao.addPurchasers(purchasers);
		if(t>0) {
			return "purchasers/success";
		}else {
			return "purchasers/error";
		}
	}
	@Override
	public String selectAllPurchasers(Model model) {
		// TODO Auto-generated method stub
				List<Purchasers> Purchasers=PurchasersDao.selectAllPurchasers();
				model.addAttribute("Purchasers", Purchasers);
				return "admin/showPurchasers";
	}

	@Override
	public String purchasersLogin(Purchasers Purchasers, Model model,HttpSession session) {
		// TODO Auto-generated method stub
		Purchasers Purchasers1=PurchasersDao.purchasersLogin(Purchasers);
		if(Purchasers1!=null) {
			session.setAttribute("Purchasers", Purchasers1);
			return "purchasers/main";
		}else {
			JOptionPane.showMessageDialog(null, "账号或者密码不正确！");
			return "purchasers/PurchasersLogin";
		}
		
	}
	@Override
	public String deletePurchasersByID(int uid,Model model) {
		// TODO Auto-generated method stub
		PurchasersDao.deletePurchasersByID(uid);
		List<Purchasers> Purchasers=PurchasersDao.selectAllPurchasers();
		model.addAttribute("Purchasers", Purchasers);
		return "admin/showPurchasers";
	}
	@Override
	public String updatePurchasersByID1(int uid,Model model) {
		// TODO Auto-generated method stub
		PurchasersDao.updatePurchasersByID1(uid);
		List<Purchasers> Purchasers=PurchasersDao.selectAllPurchasers();
		model.addAttribute("Purchasers", Purchasers);
		return "admin/showPurchasers";
	}
	@Override
	public String updatePurchasersByID(Purchasers Purchasers,HttpSession session) {
		// TODO Auto-generated method stub
		
		int t=PurchasersDao.updatePurchasersByID(Purchasers);
		if(t>0) {
			
			session.invalidate();
			return "purchasers/success";
		}else {
			return "purchasers/error";
		}
	}

}
