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
import com.bean.Purchasers;
import com.services.PurchasersServices;
@Controller
public class PurchasersController {
	@Autowired
	private PurchasersServices purchasersServices;
	
	@RequestMapping("/addPurchasers")
	public String addPurchasers( Purchasers purchasers) {
		
		return purchasersServices.addPurchasers(purchasers);
	}
	
	@RequestMapping("/selectAllPurchasers")
	public String selectAllPurchasers(Model model) {
		return purchasersServices.selectAllPurchasers(model);
	}
	@RequestMapping("/deletePurchasersByID")
	public String deletePurchasersByID(int pid,Model model) {
		purchasersServices.deletePurchasersByID(pid, model);
		
		return purchasersServices.selectAllPurchasers(model);
	}
	@RequestMapping("/updatePurchasersByID1")
	public String updatePurchasersByID1(int pid,Model model) {
		purchasersServices.updatePurchasersByID1(pid, model);
		
		return purchasersServices.selectAllPurchasers(model);
	}
	@RequestMapping("/purchasersLogin")
	 public String login(Purchasers purchasers,Model model,HttpSession session) {
		 return purchasersServices.purchasersLogin(purchasers, model,session);
		 
	 }
	@RequestMapping("/updatePurchasers")
	public String updatePurchasers(Model model,HttpSession session) {
		Purchasers Purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(Purchasers==null) {
			return "purchasers/needLogin";
		}
		return "purchasers/updatePurchasers";
	}
	@RequestMapping("/updatePurchasers1")
	public String updatePurchasers1(Purchasers Purchasers,HttpSession session) {
		return purchasersServices.updatePurchasersByID(Purchasers,session);
	}
	@RequestMapping("/exit")
	public String sessionclear(Model model,HttpSession session) {
		 session.invalidate();
		
		return "purchasers/success";
	}
	
	
}
