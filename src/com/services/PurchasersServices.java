package com.services;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.bean.Purchasers;
   public interface PurchasersServices {
	   
   public String addPurchasers(Purchasers purchasers);
   public String selectAllPurchasers(Model model);
   public String deletePurchasersByID(int pid,Model model);
   public String purchasersLogin(Purchasers purchasers,Model model,HttpSession session);
   public String updatePurchasersByID(Purchasers Purchasers,HttpSession session);
   public String updatePurchasersByID1(int pid,Model model);
   
}
