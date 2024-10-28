package com.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Orders;
import com.bean.OrderRecord;


public interface OrdersServices {

	public String addOrders(Orders Orders,HttpSession session,OrderRecord OrderRecord);
   public String deleteOrdersByID(int oid, Model model,HttpSession session);
   public String selectOrdersByPid(Model model,HttpSession session);
  


  
   
}
